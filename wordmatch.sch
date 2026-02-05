VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL wildcard(6:0)
        SIGNAL match
        SIGNAL datain(55:0)
        SIGNAL XLXN_8
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL XLXN_20
        SIGNAL datain(87:32)
        SIGNAL XLXN_24
        SIGNAL datain(95:40)
        SIGNAL XLXN_28
        SIGNAL datain(103:48)
        SIGNAL XLXN_32
        SIGNAL datain(111:56)
        SIGNAL XLXN_36
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL datacomp(55:0)
        SIGNAL datain(111:0)
        PORT Input wildcard(6:0)
        PORT Output match
        PORT Input datacomp(55:0)
        PORT Input datain(111:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 30 17 52 6
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN A(55:0) datacomp(55:0)
            PIN B(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_36
            PIN I1 XLXN_32
            PIN I2 XLXN_28
            PIN I3 XLXN_24
            PIN I4 XLXN_20
            PIN I5 XLXN_39
            PIN I6 XLXN_38
            PIN I7 XLXN_8
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        IOMARKER 640 1120 datacomp(55:0) R180 28
        IOMARKER 640 1600 wildcard(6:0) R180 28
        BEGIN BRANCH match
            WIRE 2512 640 2720 640
            WIRE 2720 640 2880 640
        END BRANCH
        IOMARKER 2880 640 match R0 28
        BEGIN INSTANCE XLXI_1 1328 336 R0
        END INSTANCE
        BEGIN BRANCH datain(55:0)
            WIRE 1152 240 1328 240
            BEGIN DISPLAY 1152 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1712 176 1840 176
            WIRE 1840 176 2256 176
            WIRE 2256 176 2256 416
        END BRANCH
        BEGIN INSTANCE XLXI_2 1328 624 R0
        END INSTANCE
        BEGIN BRANCH datain(63:8)
            WIRE 1152 528 1328 528
            BEGIN DISPLAY 1152 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_3 1328 960 R0
        END INSTANCE
        BEGIN BRANCH datain(71:16)
            WIRE 1152 864 1328 864
            BEGIN DISPLAY 1152 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_4 1328 1248 R0
        END INSTANCE
        BEGIN BRANCH datain(79:24)
            WIRE 1152 1152 1328 1152
            BEGIN DISPLAY 1152 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1712 1088 1840 1088
            WIRE 1840 1088 2048 1088
            WIRE 2048 608 2048 1088
            WIRE 2048 608 2256 608
        END BRANCH
        BEGIN INSTANCE XLXI_5 1328 1536 R0
        END INSTANCE
        BEGIN BRANCH datain(87:32)
            WIRE 1152 1440 1328 1440
            BEGIN DISPLAY 1152 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1712 1376 1840 1376
            WIRE 1840 1376 2064 1376
            WIRE 2064 672 2064 1376
            WIRE 2064 672 2256 672
        END BRANCH
        BEGIN INSTANCE XLXI_6 1328 1824 R0
        END INSTANCE
        BEGIN BRANCH datain(95:40)
            WIRE 1152 1728 1328 1728
            BEGIN DISPLAY 1152 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1712 1664 1840 1664
            WIRE 1840 1664 2080 1664
            WIRE 2080 736 2080 1664
            WIRE 2080 736 2256 736
        END BRANCH
        BEGIN INSTANCE XLXI_7 1328 2160 R0
        END INSTANCE
        BEGIN BRANCH datain(103:48)
            WIRE 1152 2064 1328 2064
            BEGIN DISPLAY 1152 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1712 2000 1840 2000
            WIRE 1840 2000 2096 2000
            WIRE 2096 800 2096 2000
            WIRE 2096 800 2256 800
        END BRANCH
        BEGIN INSTANCE XLXI_8 1328 2448 R0
        END INSTANCE
        BEGIN BRANCH datain(111:56)
            WIRE 1152 2352 1328 2352
            BEGIN DISPLAY 1152 2352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1712 2288 1840 2288
            WIRE 1840 2288 2256 2288
            WIRE 2256 864 2256 2288
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 640 1600 800 1600
            WIRE 800 1600 800 1792
            WIRE 800 1792 1152 1792
            WIRE 1152 1792 1328 1792
            WIRE 800 1792 800 2128
            WIRE 800 2128 1152 2128
            WIRE 1152 2128 1328 2128
            WIRE 800 2128 800 2416
            WIRE 800 2416 1152 2416
            WIRE 1152 2416 1328 2416
            WIRE 800 1600 1152 1600
            WIRE 768 304 1328 304
            WIRE 768 304 768 592
            WIRE 768 592 1152 592
            WIRE 1152 592 1328 592
            WIRE 768 592 768 928
            WIRE 768 928 768 1216
            WIRE 768 1216 800 1216
            WIRE 800 1216 1152 1216
            WIRE 1152 1216 1328 1216
            WIRE 800 1216 800 1232
            WIRE 800 1232 800 1600
            WIRE 768 928 1152 928
            WIRE 1152 928 1328 928
            WIRE 1152 1504 1328 1504
            WIRE 1152 1504 1152 1600
        END BRANCH
        INSTANCE XLXI_9 2256 928 R0
        BEGIN BRANCH XLXN_38
            WIRE 1712 464 1840 464
            WIRE 1840 464 1840 480
            WIRE 1840 480 2256 480
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1712 800 1840 800
            WIRE 1840 544 2256 544
            WIRE 1840 544 1840 800
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 640 1120 800 1120
            WIRE 800 1120 976 1120
            WIRE 976 1120 976 1376
            WIRE 976 1376 1152 1376
            WIRE 1152 1376 1328 1376
            WIRE 976 1376 976 1664
            WIRE 976 1664 1152 1664
            WIRE 1152 1664 1328 1664
            WIRE 976 1664 976 2000
            WIRE 976 2000 1152 2000
            WIRE 1152 2000 1328 2000
            WIRE 976 2000 976 2288
            WIRE 976 2288 1152 2288
            WIRE 1152 2288 1328 2288
            WIRE 976 176 1152 176
            WIRE 1152 176 1328 176
            WIRE 976 176 976 464
            WIRE 976 464 1152 464
            WIRE 1152 464 1328 464
            WIRE 976 464 976 800
            WIRE 976 800 1152 800
            WIRE 1152 800 1328 800
            WIRE 976 800 976 1088
            WIRE 976 1088 976 1120
            WIRE 976 1088 1152 1088
            WIRE 1152 1088 1328 1088
        END BRANCH
        BEGIN BRANCH datain(111:0)
            WIRE 512 656 640 656
        END BRANCH
        IOMARKER 512 656 datain(111:0) R180 28
    END SHEET
END SCHEMATIC
