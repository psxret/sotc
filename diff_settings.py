def apply(config, args):
    config["baseimg"] = "data/baserom.elf"
    config["myimg"] = "sotc.elf"
    config["mapfile"] = "sotc.map"
    config["source_directories"] = ["."]
    config["arch"] = "mips:5900"
    #config["map_format"] = "gnu" # gnu or mw
    #config["mw_build_dir"] = "build/" # only needed for mw map format
    #config["makeflags"] = []
    config["objdump_executable"] = "sce/ee/gcc/bin/ee-objdump"
