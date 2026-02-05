VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL out_fifo(71:0)
        SIGNAL lastword
        SIGNAL firstword
        SIGNAL drop_pkt
        SIGNAL clk
        SIGNAL fifowrite
        SIGNAL fiforead
        SIGNAL rst
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_41
        SIGNAL XLXN_42(7:0)
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL valid_data
        SIGNAL XLXN_48(7:0)
        SIGNAL XLXN_50(7:0)
        SIGNAL XLXN_52
        SIGNAL XLXN_59
        SIGNAL XLXN_62
        SIGNAL XLXN_63(0:0)
        SIGNAL XLXN_65(71:0)
        SIGNAL XLXN_66(7:0)
        PORT Output out_fifo(71:0)
        PORT Input lastword
        PORT Input firstword
        PORT Input drop_pkt
        PORT Input clk
        PORT Input fifowrite
        PORT Input fiforead
        PORT Input rst
        PORT Input in_fifo(71:0)
        PORT Output valid_data
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF synch_dual_port_mem_9B
            TIMESTAMP 2026 1 31 0 31 27
            RECTANGLE N 32 32 544 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            LINE N 0 528 32 528 
            BEGIN LINE W 576 336 544 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_63(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd8ce
            PIN C clk
            PIN CE XLXN_59
            PIN CLR rst
            PIN D(7:0) XLXN_50(7:0)
            PIN Q(7:0) XLXN_42(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_62
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) XLXN_50(7:0)
            PIN B(7:0) XLXN_48(7:0)
            PIN EQ XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) XLXN_48(7:0)
            PIN B(7:0) XLXN_42(7:0)
            PIN EQ XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 XLXN_38
            PIN I1 XLXN_37
            PIN O XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_9 and2b1
            PIN I0 XLXN_62
            PIN I1 XLXN_41
            PIN O XLXN_59
        END BLOCK
        BEGIN BLOCK XLXI_10 and3b2
            PIN I0 XLXN_44
            PIN I1 XLXN_43
            PIN I2 fiforead
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_11 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_45
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_12 cb8ce
            PIN C clk
            PIN CE XLXN_45
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) XLXN_48(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_13 cb8cle
            PIN C clk
            PIN CE XLXN_63(0:0)
            PIN CLR rst
            PIN D(7:0) XLXN_42(7:0)
            PIN L XLXN_62
            PIN CEO
            PIN Q(7:0) XLXN_50(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_14 reg9B
            PIN d(71:0) in_fifo(71:0)
            PIN ce XLXN_52
            PIN clk clk
            PIN clr rst
            PIN q(71:0) XLXN_65(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 vcc
            PIN P XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_17 synch_dual_port_mem_9B
            PIN addra(7:0) XLXN_50(7:0)
            PIN dina(71:0) XLXN_65(71:0)
            PIN wea(0:0) XLXN_63(0:0)
            PIN clka clk
            PIN addrb(7:0) XLXN_48(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH out_fifo(71:0)
            WIRE 2720 640 2880 640
            WIRE 2720 640 2720 720
            WIRE 2720 720 3504 720
            WIRE 3504 720 3504 1104
            WIRE 3424 1104 3504 1104
        END BRANCH
        IOMARKER 2880 640 out_fifo(71:0) R0 28
        BEGIN BRANCH lastword
            WIRE 208 784 368 784
            WIRE 368 736 576 736
            WIRE 368 736 368 784
        END BRANCH
        IOMARKER 208 784 lastword R180 28
        INSTANCE XLXI_1 576 640 R0
        INSTANCE XLXI_2 576 992 R0
        INSTANCE XLXI_4 752 1328 R0
        INSTANCE XLXI_5 656 2336 R0
        INSTANCE XLXI_6 1312 1712 R0
        INSTANCE XLXI_8 1104 784 R0
        INSTANCE XLXI_9 1520 816 R0
        INSTANCE XLXI_10 1920 1632 R0
        INSTANCE XLXI_11 2160 2160 R0
        INSTANCE XLXI_12 2288 1648 R0
        INSTANCE XLXI_13 2208 1232 R0
        BEGIN INSTANCE XLXI_14 2208 464 R0
        END INSTANCE
        BEGIN BRANCH firstword
            WIRE 240 368 400 368
            WIRE 400 368 400 384
            WIRE 400 384 576 384
        END BRANCH
        IOMARKER 240 368 firstword R180 28
        BEGIN BRANCH drop_pkt
            WIRE 352 2048 512 2048
            WIRE 512 2048 512 2080
            WIRE 512 2080 656 2080
        END BRANCH
        IOMARKER 352 2048 drop_pkt R180 28
        IOMARKER 352 2224 clk R180 28
        BEGIN BRANCH fifowrite
            WIRE 1056 224 1216 224
            WIRE 1216 224 1216 352
            WIRE 1216 352 1392 352
        END BRANCH
        IOMARKER 1056 224 fifowrite R180 28
        INSTANCE XLXI_3 1392 608 R0
        BEGIN BRANCH fiforead
            WIRE 1648 1168 1808 1168
            WIRE 1808 1168 1920 1168
            WIRE 1920 1168 1920 1440
        END BRANCH
        IOMARKER 1648 1168 fiforead R180 28
        BEGIN BRANCH rst
            WIRE 752 1296 752 1360
            WIRE 752 1360 1168 1360
            WIRE 1168 1248 1168 1360
            WIRE 1168 1248 1840 1248
            WIRE 1840 1248 2144 1248
            WIRE 2144 1248 2144 1312
            WIRE 2144 1312 2144 1328
            WIRE 2144 1328 2224 1328
            WIRE 2144 1328 2144 1424
            WIRE 1840 1248 1840 2128
            WIRE 1840 2128 2160 2128
            WIRE 1888 1424 2144 1424
            WIRE 1888 1424 1888 1616
            WIRE 1888 1616 2160 1616
            WIRE 2160 1616 2288 1616
            WIRE 2064 1328 2144 1328
            WIRE 2144 432 2208 432
            WIRE 2144 432 2144 1248
            WIRE 2208 1200 2208 1264
            WIRE 2208 1264 2224 1264
            WIRE 2224 1264 2224 1328
        END BRANCH
        IOMARKER 2064 1328 rst R180 28
        BEGIN BRANCH in_fifo(71:0)
            WIRE 1840 208 2000 208
            WIRE 2000 208 2000 240
            WIRE 2000 240 2208 240
        END BRANCH
        IOMARKER 1840 208 in_fifo(71:0) R180 28
        BEGIN BRANCH XLXN_37
            WIRE 960 384 1024 384
            WIRE 1024 384 1024 656
            WIRE 1024 656 1104 656
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 960 736 1024 736
            WIRE 1024 720 1024 736
            WIRE 1024 720 1104 720
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 1360 688 1520 688
        END BRANCH
        BEGIN BRANCH XLXN_42(7:0)
            WIRE 1136 1072 1312 1072
            WIRE 1312 1072 1664 1072
            WIRE 1232 1056 1312 1056
            WIRE 1312 1056 1312 1072
            WIRE 1232 1056 1232 2144
            WIRE 1232 2144 1312 2144
            WIRE 1664 848 1664 1072
            WIRE 1664 848 2208 848
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 1696 1488 1808 1488
            WIRE 1808 1488 1808 1504
            WIRE 1808 1504 1920 1504
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1696 2048 1904 2048
            WIRE 1904 1568 1920 1568
            WIRE 1904 1568 1904 2048
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 2096 1776 2096 1904
            WIRE 2096 1904 2160 1904
            WIRE 2096 1776 2224 1776
            WIRE 2176 1504 2224 1504
            WIRE 2224 1504 2224 1776
            WIRE 2224 1456 2224 1504
            WIRE 2224 1456 2288 1456
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2544 1904 2720 1904
            WIRE 2720 1904 2880 1904
        END BRANCH
        IOMARKER 2880 1904 valid_data R0 28
        BEGIN BRANCH XLXN_48(7:0)
            WIRE 1280 1696 1280 1776
            WIRE 1280 1776 1296 1776
            WIRE 1296 1776 1296 1952
            WIRE 1296 1952 1312 1952
            WIRE 1280 1696 2752 1696
            WIRE 1296 1584 1312 1584
            WIRE 1296 1584 1296 1776
            WIRE 2672 1392 2752 1392
            WIRE 2752 1392 2752 1696
            WIRE 2752 1104 2848 1104
            WIRE 2752 1104 2752 1392
        END BRANCH
        INSTANCE XLXI_7 1312 2272 R0
        BEGIN BRANCH XLXN_50(7:0)
            WIRE 720 1072 752 1072
            WIRE 720 1072 720 1392
            WIRE 720 1392 1216 1392
            WIRE 1216 1392 1312 1392
            WIRE 1216 1392 1216 1712
            WIRE 1216 1712 2736 1712
            WIRE 2592 848 2720 848
            WIRE 2720 848 2736 848
            WIRE 2736 848 2736 1712
            WIRE 2720 848 2720 912
            WIRE 2720 912 2800 912
            WIRE 2800 848 2800 912
            WIRE 2800 848 2848 848
        END BRANCH
        BEGIN BRANCH XLXN_52
            WIRE 1888 112 1888 128
            WIRE 1888 128 1888 304
            WIRE 1888 304 2208 304
        END BRANCH
        INSTANCE XLXI_15 1824 128 R0
        BEGIN BRANCH clk
            WIRE 352 2224 512 2224
            WIRE 512 2208 512 2224
            WIRE 512 2208 528 2208
            WIRE 528 2208 656 2208
            WIRE 528 304 528 512
            WIRE 528 512 576 512
            WIRE 528 512 528 864
            WIRE 528 864 576 864
            WIRE 528 864 528 1264
            WIRE 528 1264 640 1264
            WIRE 528 1264 528 1792
            WIRE 528 1792 528 2208
            WIRE 528 1792 2144 1792
            WIRE 2144 1792 2144 2032
            WIRE 2144 2032 2160 2032
            WIRE 2144 1792 2256 1792
            WIRE 528 304 1008 304
            WIRE 1008 304 1008 480
            WIRE 1008 480 1392 480
            WIRE 640 1200 640 1264
            WIRE 640 1200 752 1200
            WIRE 2128 368 2208 368
            WIRE 2128 368 2128 1104
            WIRE 2128 1104 2208 1104
            WIRE 2128 1104 2128 1216
            WIRE 2128 1216 2272 1216
            WIRE 2272 1216 2272 1584
            WIRE 2272 1216 2608 1216
            WIRE 2256 1520 2288 1520
            WIRE 2256 1520 2256 1584
            WIRE 2256 1584 2256 1792
            WIRE 2256 1584 2272 1584
            WIRE 2608 1040 2608 1216
            WIRE 2608 1040 2832 1040
            WIRE 2832 1040 2848 1040
            WIRE 2832 1040 2832 1296
            WIRE 2832 1296 2848 1296
        END BRANCH
        BEGIN BRANCH XLXN_59
            WIRE 688 944 688 1136
            WIRE 688 1136 752 1136
            WIRE 688 944 1856 944
            WIRE 1776 720 1856 720
            WIRE 1856 720 1856 944
        END BRANCH
        BEGIN BRANCH XLXN_62
            WIRE 1040 2080 1200 2080
            WIRE 1200 752 1520 752
            WIRE 1200 752 1200 976
            WIRE 1200 976 1200 2080
            WIRE 1200 976 2208 976
        END BRANCH
        BEGIN BRANCH XLXN_63(0:0)
            WIRE 1776 352 1984 352
            WIRE 1984 352 1984 592
            WIRE 1984 592 1984 1040
            WIRE 1984 1040 2208 1040
            WIRE 1984 592 2656 592
            WIRE 2656 592 2656 976
            WIRE 2656 976 2848 976
        END BRANCH
        BEGIN INSTANCE XLXI_17 2848 768 R0
        END INSTANCE
        BEGIN BRANCH XLXN_65(71:0)
            WIRE 2592 240 2704 240
            WIRE 2704 240 2704 880
            WIRE 2704 880 2848 880
        END BRANCH
    END SHEET
END SCHEMATIC
