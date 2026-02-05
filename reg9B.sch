VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL ce
        SIGNAL clk
        SIGNAL clr
        SIGNAL q(71:0)
        SIGNAL d(71:64)
        SIGNAL q(71:64)
        SIGNAL d(63:48)
        SIGNAL q(63:48)
        SIGNAL d(47:32)
        SIGNAL q(47:32)
        SIGNAL d(31:16)
        SIGNAL q(31:16)
        SIGNAL d(15:0)
        SIGNAL q(15:0)
        PORT Input d(71:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_15 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_16 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_17 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_19 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_20 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH d(71:0)
            WIRE 640 640 800 640
        END BRANCH
        IOMARKER 640 640 d(71:0) R180 28
        BEGIN BRANCH ce
            WIRE 640 992 800 992
            WIRE 800 992 800 1008
            WIRE 800 1008 1344 1008
            WIRE 1344 1008 1440 1008
            WIRE 1296 992 1344 992
            WIRE 1344 992 1344 1008
            WIRE 1296 992 1296 1440
            WIRE 1296 1440 1536 1440
            WIRE 1296 1440 1296 1824
            WIRE 1296 1824 1568 1824
            WIRE 1296 1824 1296 2240
            WIRE 1296 2240 1552 2240
            WIRE 1344 544 1344 992
            WIRE 1344 544 1520 544
            WIRE 1440 976 1440 1008
            WIRE 1440 976 1536 976
        END BRANCH
        IOMARKER 640 992 ce R180 28
        IOMARKER 640 1344 clk R180 28
        BEGIN BRANCH clr
            WIRE 640 1696 1536 1696
            WIRE 1536 1696 1536 1984
            WIRE 1536 1984 1568 1984
            WIRE 1536 1984 1536 2400
            WIRE 1536 2400 1552 2400
            WIRE 1536 1696 1552 1696
            WIRE 1456 704 1456 1136
            WIRE 1456 1136 1536 1136
            WIRE 1456 1136 1456 1680
            WIRE 1456 1680 1552 1680
            WIRE 1552 1680 1552 1696
            WIRE 1456 704 1520 704
            WIRE 1536 1600 1536 1696
        END BRANCH
        IOMARKER 640 1696 clr R180 28
        BEGIN BRANCH q(71:0)
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 q(71:0) R0 28
        BEGIN BRANCH d(71:64)
            WIRE 1344 480 1520 480
            BEGIN DISPLAY 1344 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1904 480 2112 480
            BEGIN DISPLAY 2112 480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1360 912 1536 912
            BEGIN DISPLAY 1360 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1920 912 2128 912
            BEGIN DISPLAY 2128 912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1360 1376 1536 1376
            BEGIN DISPLAY 1360 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1920 1376 2128 1376
            BEGIN DISPLAY 2128 1376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1392 1760 1568 1760
            BEGIN DISPLAY 1392 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1952 1760 2160 1760
            BEGIN DISPLAY 2160 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1376 2176 1552 2176
            BEGIN DISPLAY 1376 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1936 2176 2144 2176
            BEGIN DISPLAY 2144 2176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 640 1344 800 1344
            WIRE 800 1072 800 1344
            WIRE 800 1072 1424 1072
            WIRE 1424 1072 1472 1072
            WIRE 1424 1072 1424 1504
            WIRE 1424 1504 1536 1504
            WIRE 1424 1504 1424 1888
            WIRE 1424 1888 1424 2304
            WIRE 1424 2304 1552 2304
            WIRE 1424 1888 1568 1888
            WIRE 1424 608 1424 1072
            WIRE 1424 608 1520 608
            WIRE 1472 1040 1472 1072
            WIRE 1472 1040 1536 1040
        END BRANCH
        INSTANCE XLXI_15 1536 1168 R0
        INSTANCE XLXI_16 1536 1632 R0
        INSTANCE XLXI_17 1568 2016 R0
        INSTANCE XLXI_19 1552 2432 R0
        INSTANCE XLXI_20 1520 736 R0
    END SHEET
END SCHEMATIC
