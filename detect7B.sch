VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL hwregA(63:0)
        SIGNAL pipe1(71:0)
        SIGNAL match
        SIGNAL match_en
        SIGNAL mrst
        SIGNAL clk
        SIGNAL ce
        SIGNAL XLXN_16
        SIGNAL XLXN_17(111:0)
        SIGNAL pipe0(71:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL XLXN_23
        SIGNAL XLXN_26
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Output match
        PORT Input match_en
        PORT Input mrst
        PORT Input clk
        PORT Input ce
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 30 17 51 6
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 30 18 49 50
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 30 19 45 52
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_2 fdce
            PIN C clk
            PIN CE XLXN_26
            PIN CLR XLXN_16
            PIN D XLXN_26
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_3 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_23
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_4 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_17(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 reg9B
            PIN d(71:0) pipe1(71:0)
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_16
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 wordmatch
            PIN wildcard(6:0) hwregA(62:56)
            PIN datacomp(55:0) hwregA(55:0)
            PIN datain(111:0) XLXN_17(111:0)
            PIN match XLXN_23
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH hwregA(63:0)
            WIRE 640 640 800 640
            WIRE 800 640 880 640
        END BRANCH
        IOMARKER 640 640 hwregA(63:0) R180 28
        BEGIN BRANCH match
            WIRE 1696 736 1696 928
            WIRE 1696 928 1776 928
            WIRE 1696 736 2720 736
            WIRE 2720 736 2720 864
            WIRE 2576 864 2720 864
            WIRE 2720 640 2880 640
            WIRE 2720 640 2720 736
        END BRANCH
        IOMARKER 2880 640 match R0 28
        BEGIN BRANCH match_en
            WIRE 1520 1488 1632 1488
            WIRE 1632 864 1776 864
            WIRE 1632 864 1632 1488
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1520 1584 1648 1584
            WIRE 1648 1584 1648 1600
            WIRE 1648 1600 2208 1600
        END BRANCH
        IOMARKER 1520 1488 match_en R180 28
        IOMARKER 1520 1584 mrst R180 28
        INSTANCE XLXI_1 2208 1856 R0
        INSTANCE XLXI_2 2192 1120 R0
        INSTANCE XLXI_3 1776 992 R0
        BEGIN INSTANCE XLXI_6 1648 1264 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 960 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 944 1392 R0
        END INSTANCE
        IOMARKER 576 832 pipe1(71:0) R180 28
        BEGIN BRANCH pipe1(71:0)
            WIRE 576 832 800 832
            WIRE 800 832 944 832
            WIRE 944 832 960 832
        END BRANCH
        BEGIN BRANCH clk
            WIRE 480 960 640 960
            WIRE 640 960 816 960
            WIRE 816 960 960 960
            WIRE 816 960 816 1152
            WIRE 816 1152 816 1728
            WIRE 816 1728 2208 1728
            WIRE 816 1152 1424 1152
            WIRE 1424 992 1424 1152
            WIRE 1424 992 2192 992
        END BRANCH
        IOMARKER 480 960 clk R180 28
        BEGIN BRANCH ce
            WIRE 512 1136 672 1136
            WIRE 672 896 960 896
            WIRE 672 896 672 1136
        END BRANCH
        IOMARKER 512 1136 ce R180 28
        BEGIN BRANCH XLXN_16
            WIRE 880 1024 960 1024
            WIRE 880 1024 880 1456
            WIRE 880 1456 2192 1456
            WIRE 2192 1456 2656 1456
            WIRE 2656 1456 2656 1600
            WIRE 2192 1088 2192 1456
            WIRE 2592 1600 2656 1600
        END BRANCH
        BEGIN BRANCH XLXN_17(111:0)
            WIRE 1328 1296 1488 1296
            WIRE 1488 1232 1488 1296
            WIRE 1488 1232 1648 1232
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1344 832 1440 832
            BEGIN DISPLAY 1440 832 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 752 1296 944 1296
            BEGIN DISPLAY 752 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 752 1360 944 1360
            BEGIN DISPLAY 752 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1440 1104 1648 1104
            BEGIN DISPLAY 1440 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1440 1168 1648 1168
            BEGIN DISPLAY 1440 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1776 720 1776 800
            WIRE 1776 720 2096 720
            WIRE 2096 720 2096 1104
            WIRE 2032 1104 2096 1104
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 2032 864 2128 864
            WIRE 2128 864 2192 864
            WIRE 2128 864 2128 928
            WIRE 2128 928 2192 928
        END BRANCH
    END SHEET
END SCHEMATIC
