
curDir = $(shell pwd)
srcDir = $(curDir)/src
binDir = $(curDir)/bin
scriptDir = $(curDir)/scripts
inputsDir = $(curDir)/inputs

export srcDir
export binDir

ifneq ($(ll),)
export ll
endif

kernels = activity apdet hrv imghist iradon kmeans sqrs wabp
suppKernels = aes lzw

.PHONY : all
all : $(kernels)

aes :
	$(MAKE) -C $(srcDir)/$@
	$(if $(ll),,mkdir -p $(binDir)/$@)
	$(if $(ll),,mv $(srcDir)/$@/$@ $(binDir)/$@)
	$(if $(ll),,cp $(inputsDir)/$@/* $(binDir)/$@/)
	$(if $(ll),,cp $(scriptDir)/run-$@.sh $(binDir)/$@/)

lzw :
	$(MAKE) -C $(srcDir)/$@
	$(if $(ll),,mkdir -p $(binDir)/$@)
	$(if $(ll),,mv $(srcDir)/$@/$@ $(binDir)/$@)
	$(if $(ll),,cp $(inputsDir)/$@/* $(binDir)/$@/)
	$(if $(ll),,cp $(scriptDir)/run-$@.sh $(binDir)/$@/)

$(kernels) : aes lzw
	$(MAKE) -C $(srcDir)/$@
	$(if $(ll),,mkdir -p $(binDir)/$@)
	$(if $(ll),,-mv $(srcDir)/$@/$@ $(binDir)/$@)
	$(if $(ll),,-cp $(inputsDir)/$@/* $(binDir)/$@/)
	$(if $(ll),,-cp $(scriptDir)/run-$@.sh $(binDir)/$@/)

.PHONY : clean
clean :
	rm -rf $(binDir)
	for i in $(kernels) $(suppKernels); do $(MAKE) -C $(srcDir)/$$i $@; done
