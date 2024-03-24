// Generator : SpinalHDL v1.3.0    git head : a4aa217960e9fd6394cc93913205fac49fac47d4
// Date      : 24/03/2024, 20:51:13
// Component : PanoCore


module FpxxAdd (
      input   p0_vld,
      input   op_a_p0_sign,
      input  [5:0] op_a_p0_exp,
      input  [12:0] op_a_p0_mant,
      input   op_b_p0_sign,
      input  [5:0] op_b_p0_exp,
      input  [12:0] op_b_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  wire [1:0] _zz_33_;
  wire [1:0] _zz_34_;
  wire [1:0] _zz_35_;
  wire [1:0] _zz_36_;
  wire [1:0] _zz_37_;
  wire [1:0] _zz_38_;
  wire [1:0] _zz_39_;
  wire [1:0] _zz_40_;
  wire [1:0] _zz_41_;
  wire [1:0] _zz_42_;
  wire [1:0] _zz_43_;
  wire [1:0] _zz_44_;
  wire [1:0] _zz_45_;
  wire [13:0] _zz_46_;
  wire [13:0] _zz_47_;
  wire [6:0] _zz_48_;
  wire [6:0] _zz_49_;
  wire [6:0] _zz_50_;
  wire [6:0] _zz_51_;
  wire [6:0] _zz_52_;
  wire [6:0] _zz_53_;
  wire [3:0] _zz_54_;
  wire [13:0] _zz_55_;
  wire [14:0] _zz_56_;
  wire [15:0] _zz_57_;
  wire [13:0] _zz_58_;
  wire [0:0] _zz_59_;
  wire [0:0] _zz_60_;
  wire [0:0] _zz_61_;
  wire [0:0] _zz_62_;
  wire [0:0] _zz_63_;
  wire [0:0] _zz_64_;
  wire [0:0] _zz_65_;
  wire [0:0] _zz_66_;
  wire [0:0] _zz_67_;
  wire [0:0] _zz_68_;
  wire [0:0] _zz_69_;
  wire [0:0] _zz_70_;
  wire [0:0] _zz_71_;
  wire [0:0] _zz_72_;
  wire [0:0] _zz_73_;
  wire [0:0] _zz_74_;
  wire [0:0] _zz_75_;
  wire [0:0] _zz_76_;
  wire [0:0] _zz_77_;
  wire [0:0] _zz_78_;
  wire [0:0] _zz_79_;
  wire [0:0] _zz_80_;
  wire [1:0] _zz_81_;
  wire [1:0] _zz_82_;
  wire [1:0] _zz_83_;
  wire [0:0] _zz_84_;
  wire [0:0] _zz_85_;
  wire [0:0] _zz_86_;
  wire [0:0] _zz_87_;
  wire [0:0] _zz_88_;
  wire [0:0] _zz_89_;
  wire [0:0] _zz_90_;
  wire [0:0] _zz_91_;
  wire [0:0] _zz_92_;
  wire [0:0] _zz_93_;
  wire [0:0] _zz_94_;
  wire [0:0] _zz_95_;
  wire [0:0] _zz_96_;
  wire [0:0] _zz_97_;
  wire [0:0] _zz_98_;
  wire [1:0] _zz_99_;
  wire [1:0] _zz_100_;
  wire [1:0] _zz_101_;
  wire [2:0] _zz_102_;
  wire [2:0] _zz_103_;
  wire [2:0] _zz_104_;
  wire [6:0] _zz_105_;
  wire [6:0] _zz_106_;
  wire [6:0] _zz_107_;
  wire [6:0] _zz_108_;
  wire [5:0] _zz_109_;
  wire [6:0] _zz_110_;
  wire [5:0] _zz_111_;
  wire [13:0] _zz_112_;
  wire  op_a_is_zero_p0;
  wire  op_b_is_zero_p0;
  wire  op_a_is_inf_p0;
  wire  op_b_is_inf_p0;
  wire  op_is_zero_p0;
  wire  op_is_nan_p0;
  wire  op_is_inf_p0;
  reg [13:0] mant_a_p0;
  reg [13:0] mant_b_p0;
  wire [6:0] exp_diff_a_b_p0;
  wire [5:0] exp_diff_b_a_p0;
  reg  sign_a_swap_p0;
  reg  sign_b_swap_p0;
  reg  exp_diff_ovfl_p0;
  reg [3:0] exp_diff_p0;
  reg [5:0] exp_add_p0;
  reg [13:0] mant_a_swap_p0;
  reg [13:0] mant_b_swap_p0;
  wire [14:0] mant_a_adj_p1;
  wire [14:0] mant_b_adj_p1;
  reg  p2_vld;
  reg  op_is_zero_p2;
  reg  op_is_nan_p2;
  reg  op_is_inf_p2;
  reg  sign_a_p2;
  reg  sign_b_p2;
  reg [5:0] exp_add_p2;
  reg [14:0] mant_a_adj_p2;
  reg [14:0] mant_b_adj_p2;
  reg  sign_add_p2;
  reg [15:0] mant_a_opt_inv_p2;
  reg [15:0] mant_b_opt_inv_p2;
  wire [14:0] mant_add_p3;
  reg  p4_vld;
  reg  op_is_zero_p4;
  reg  op_is_nan_p4;
  reg  op_is_inf_p4;
  reg  sign_add_p4;
  reg [5:0] exp_add_p4;
  reg [14:0] mant_add_p4;
  wire [13:0] _zz_1_;
  wire [7:0] _zz_2_;
  wire [3:0] _zz_3_;
  wire [1:0] _zz_4_;
  reg [1:0] _zz_5_;
  wire [1:0] _zz_6_;
  reg [1:0] _zz_7_;
  wire [1:0] _zz_8_;
  reg [2:0] _zz_9_;
  wire [3:0] _zz_10_;
  wire [1:0] _zz_11_;
  reg [1:0] _zz_12_;
  wire [1:0] _zz_13_;
  reg [1:0] _zz_14_;
  wire [1:0] _zz_15_;
  reg [2:0] _zz_16_;
  wire [2:0] _zz_17_;
  reg [3:0] _zz_18_;
  wire [5:0] _zz_19_;
  wire [3:0] _zz_20_;
  wire [1:0] _zz_21_;
  reg [1:0] _zz_22_;
  wire [1:0] _zz_23_;
  reg [1:0] _zz_24_;
  wire [1:0] _zz_25_;
  reg [2:0] _zz_26_;
  wire [1:0] _zz_27_;
  reg [1:0] _zz_28_;
  wire [2:0] _zz_29_;
  reg [3:0] _zz_30_;
  wire [3:0] _zz_31_;
  reg [4:0] _zz_32_;
  reg [3:0] lz_p4;
  reg [5:0] exp_add_adj_p4;
  reg [13:0] mant_add_adj_p4;
  reg  sign_final_p5;
  reg [5:0] exp_final_p5;
  reg [13:0] mant_final_p5;
  wire [6:0] exp_add_m_lz;
  wire  exp_eq_lz;
  assign _zz_33_ = {_zz_59_[0],_zz_60_[0]};
  assign _zz_34_ = {_zz_63_[0],_zz_64_[0]};
  assign _zz_35_ = {_zz_5_[1],_zz_8_[1]};
  assign _zz_36_ = {_zz_70_[0],_zz_71_[0]};
  assign _zz_37_ = {_zz_74_[0],_zz_75_[0]};
  assign _zz_38_ = {_zz_12_[1],_zz_15_[1]};
  assign _zz_39_ = {_zz_9_[2],_zz_17_[2]};
  assign _zz_40_ = {_zz_84_[0],_zz_85_[0]};
  assign _zz_41_ = {_zz_88_[0],_zz_89_[0]};
  assign _zz_42_ = {_zz_22_[1],_zz_25_[1]};
  assign _zz_43_ = {_zz_95_[0],_zz_96_[0]};
  assign _zz_44_ = {_zz_26_[2],_zz_29_[2]};
  assign _zz_45_ = {_zz_18_[3],_zz_31_[3]};
  assign _zz_46_ = {1'd0, op_a_p0_mant};
  assign _zz_47_ = {1'd0, op_b_p0_mant};
  assign _zz_48_ = _zz_49_;
  assign _zz_49_ = {1'd0, op_a_p0_exp};
  assign _zz_50_ = _zz_51_;
  assign _zz_51_ = {1'd0, op_b_p0_exp};
  assign _zz_52_ = (7'b0000000);
  assign _zz_53_ = (7'b0001101);
  assign _zz_54_ = exp_diff_a_b_p0[3:0];
  assign _zz_55_ = (mant_b_swap_p0 >>> exp_diff_p0);
  assign _zz_56_ = {1'd0, _zz_55_};
  assign _zz_57_ = (mant_a_opt_inv_p2 + mant_b_opt_inv_p2);
  assign _zz_58_ = mant_add_p4[13:0];
  assign _zz_59_ = _zz_4_[1 : 1];
  assign _zz_60_ = _zz_61_;
  assign _zz_61_ = _zz_62_;
  assign _zz_62_ = _zz_4_[0:0];
  assign _zz_63_ = _zz_6_[1 : 1];
  assign _zz_64_ = _zz_65_;
  assign _zz_65_ = _zz_66_;
  assign _zz_66_ = _zz_6_[0:0];
  assign _zz_67_ = _zz_5_[0:0];
  assign _zz_68_ = _zz_8_[0:0];
  assign _zz_69_ = _zz_5_[0:0];
  assign _zz_70_ = _zz_11_[1 : 1];
  assign _zz_71_ = _zz_72_;
  assign _zz_72_ = _zz_73_;
  assign _zz_73_ = _zz_11_[0:0];
  assign _zz_74_ = _zz_13_[1 : 1];
  assign _zz_75_ = _zz_76_;
  assign _zz_76_ = _zz_77_;
  assign _zz_77_ = _zz_13_[0:0];
  assign _zz_78_ = _zz_12_[0:0];
  assign _zz_79_ = _zz_15_[0:0];
  assign _zz_80_ = _zz_12_[0:0];
  assign _zz_81_ = _zz_9_[1:0];
  assign _zz_82_ = _zz_17_[1:0];
  assign _zz_83_ = _zz_9_[1:0];
  assign _zz_84_ = _zz_21_[1 : 1];
  assign _zz_85_ = _zz_86_;
  assign _zz_86_ = _zz_87_;
  assign _zz_87_ = _zz_21_[0:0];
  assign _zz_88_ = _zz_23_[1 : 1];
  assign _zz_89_ = _zz_90_;
  assign _zz_90_ = _zz_91_;
  assign _zz_91_ = _zz_23_[0:0];
  assign _zz_92_ = _zz_22_[0:0];
  assign _zz_93_ = _zz_25_[0:0];
  assign _zz_94_ = _zz_22_[0:0];
  assign _zz_95_ = _zz_27_[1 : 1];
  assign _zz_96_ = _zz_97_;
  assign _zz_97_ = _zz_98_;
  assign _zz_98_ = _zz_27_[0:0];
  assign _zz_99_ = _zz_26_[1:0];
  assign _zz_100_ = _zz_29_[1:0];
  assign _zz_101_ = _zz_26_[1:0];
  assign _zz_102_ = _zz_18_[2:0];
  assign _zz_103_ = _zz_31_[2:0];
  assign _zz_104_ = _zz_18_[2:0];
  assign _zz_105_ = _zz_106_;
  assign _zz_106_ = {1'd0, exp_add_adj_p4};
  assign _zz_107_ = _zz_108_;
  assign _zz_108_ = {3'd0, lz_p4};
  assign _zz_109_ = {2'd0, lz_p4};
  assign _zz_110_ = exp_add_m_lz;
  assign _zz_111_ = _zz_110_[5:0];
  assign _zz_112_ = (mant_add_adj_p4 <<< lz_p4);
  assign op_a_is_zero_p0 = (op_a_p0_exp == (6'b000000));
  assign op_b_is_zero_p0 = (op_b_p0_exp == (6'b000000));
  assign op_a_is_inf_p0 = ((op_a_p0_exp == (6'b111111)) && (! (op_a_p0_mant != (13'b0000000000000))));
  assign op_b_is_inf_p0 = ((op_b_p0_exp == (6'b111111)) && (! (op_b_p0_mant != (13'b0000000000000))));
  assign op_is_zero_p0 = (op_a_is_zero_p0 || op_b_is_zero_p0);
  assign op_is_nan_p0 = ((((op_a_p0_exp == (6'b111111)) && (op_a_p0_mant != (13'b0000000000000))) || ((op_b_p0_exp == (6'b111111)) && (op_b_p0_mant != (13'b0000000000000)))) || ((op_a_is_inf_p0 && op_b_is_inf_p0) && (op_a_p0_sign != op_b_p0_sign)));
  assign op_is_inf_p0 = (op_a_is_inf_p0 || op_b_is_inf_p0);
  always @ (*) begin
    mant_a_p0 = (_zz_46_ | (14'b10000000000000));
    if(op_a_is_zero_p0)begin
      mant_a_p0 = (14'b00000000000000);
    end
  end

  always @ (*) begin
    mant_b_p0 = (_zz_47_ | (14'b10000000000000));
    if(op_b_is_zero_p0)begin
      mant_b_p0 = (14'b00000000000000);
    end
  end

  assign exp_diff_a_b_p0 = ($signed(_zz_48_) - $signed(_zz_50_));
  assign exp_diff_b_a_p0 = (op_b_p0_exp - op_a_p0_exp);
  always @ (*) begin
    if(($signed(_zz_52_) <= $signed(exp_diff_a_b_p0)))begin
      sign_a_swap_p0 = op_a_p0_sign;
      sign_b_swap_p0 = op_b_p0_sign;
      exp_add_p0 = op_a_p0_exp;
      exp_diff_ovfl_p0 = ($signed(_zz_53_) < $signed(exp_diff_a_b_p0));
      exp_diff_p0 = _zz_54_;
      mant_a_swap_p0 = mant_a_p0;
      mant_b_swap_p0 = mant_b_p0;
    end else begin
      sign_a_swap_p0 = op_b_p0_sign;
      sign_b_swap_p0 = op_a_p0_sign;
      exp_add_p0 = op_b_p0_exp;
      exp_diff_ovfl_p0 = ((6'b001101) < exp_diff_b_a_p0);
      exp_diff_p0 = exp_diff_b_a_p0[3:0];
      mant_a_swap_p0 = mant_b_p0;
      mant_b_swap_p0 = mant_a_p0;
    end
  end

  assign mant_a_adj_p1 = {1'd0, mant_a_swap_p0};
  assign mant_b_adj_p1 = (exp_diff_ovfl_p0 ? (15'b000000000000000) : _zz_56_);
  always @ (*) begin
    if((sign_a_p2 == sign_b_p2))begin
      sign_add_p2 = sign_a_p2;
      mant_a_opt_inv_p2 = {mant_a_adj_p2,1'b0};
      mant_b_opt_inv_p2 = {mant_b_adj_p2,1'b0};
    end else begin
      if((mant_b_adj_p2 <= mant_a_adj_p2))begin
        sign_add_p2 = sign_a_p2;
        mant_a_opt_inv_p2 = {mant_a_adj_p2,1'b1};
        mant_b_opt_inv_p2 = {(~ mant_b_adj_p2),1'b1};
      end else begin
        sign_add_p2 = sign_b_p2;
        mant_a_opt_inv_p2 = {(~ mant_a_adj_p2),1'b1};
        mant_b_opt_inv_p2 = {mant_b_adj_p2,1'b1};
      end
    end
  end

  assign mant_add_p3 = _zz_57_[15 : 1];
  assign _zz_1_ = (~ _zz_58_);
  assign _zz_2_ = _zz_1_[13 : 6];
  assign _zz_3_ = _zz_2_[7 : 4];
  assign _zz_4_ = _zz_3_[3 : 2];
  always @ (*) begin
    case(_zz_33_)
      2'b11 : begin
        _zz_5_ = (2'b10);
      end
      2'b10 : begin
        _zz_5_ = (2'b01);
      end
      default : begin
        _zz_5_ = (2'b00);
      end
    endcase
  end

  assign _zz_6_ = _zz_3_[1:0];
  always @ (*) begin
    case(_zz_34_)
      2'b11 : begin
        _zz_7_ = (2'b10);
      end
      2'b10 : begin
        _zz_7_ = (2'b01);
      end
      default : begin
        _zz_7_ = (2'b00);
      end
    endcase
  end

  assign _zz_8_ = _zz_7_;
  always @ (*) begin
    case(_zz_35_)
      2'b11 : begin
        _zz_9_ = {(2'b10),_zz_67_};
      end
      2'b10 : begin
        _zz_9_ = {(2'b01),_zz_68_};
      end
      default : begin
        _zz_9_ = {(2'b00),_zz_69_};
      end
    endcase
  end

  assign _zz_10_ = _zz_2_[3:0];
  assign _zz_11_ = _zz_10_[3 : 2];
  always @ (*) begin
    case(_zz_36_)
      2'b11 : begin
        _zz_12_ = (2'b10);
      end
      2'b10 : begin
        _zz_12_ = (2'b01);
      end
      default : begin
        _zz_12_ = (2'b00);
      end
    endcase
  end

  assign _zz_13_ = _zz_10_[1:0];
  always @ (*) begin
    case(_zz_37_)
      2'b11 : begin
        _zz_14_ = (2'b10);
      end
      2'b10 : begin
        _zz_14_ = (2'b01);
      end
      default : begin
        _zz_14_ = (2'b00);
      end
    endcase
  end

  assign _zz_15_ = _zz_14_;
  always @ (*) begin
    case(_zz_38_)
      2'b11 : begin
        _zz_16_ = {(2'b10),_zz_78_};
      end
      2'b10 : begin
        _zz_16_ = {(2'b01),_zz_79_};
      end
      default : begin
        _zz_16_ = {(2'b00),_zz_80_};
      end
    endcase
  end

  assign _zz_17_ = _zz_16_;
  always @ (*) begin
    case(_zz_39_)
      2'b11 : begin
        _zz_18_ = {(2'b10),_zz_81_};
      end
      2'b10 : begin
        _zz_18_ = {(2'b01),_zz_82_};
      end
      default : begin
        _zz_18_ = {(2'b00),_zz_83_};
      end
    endcase
  end

  assign _zz_19_ = _zz_1_[5:0];
  assign _zz_20_ = _zz_19_[5 : 2];
  assign _zz_21_ = _zz_20_[3 : 2];
  always @ (*) begin
    case(_zz_40_)
      2'b11 : begin
        _zz_22_ = (2'b10);
      end
      2'b10 : begin
        _zz_22_ = (2'b01);
      end
      default : begin
        _zz_22_ = (2'b00);
      end
    endcase
  end

  assign _zz_23_ = _zz_20_[1:0];
  always @ (*) begin
    case(_zz_41_)
      2'b11 : begin
        _zz_24_ = (2'b10);
      end
      2'b10 : begin
        _zz_24_ = (2'b01);
      end
      default : begin
        _zz_24_ = (2'b00);
      end
    endcase
  end

  assign _zz_25_ = _zz_24_;
  always @ (*) begin
    case(_zz_42_)
      2'b11 : begin
        _zz_26_ = {(2'b10),_zz_92_};
      end
      2'b10 : begin
        _zz_26_ = {(2'b01),_zz_93_};
      end
      default : begin
        _zz_26_ = {(2'b00),_zz_94_};
      end
    endcase
  end

  assign _zz_27_ = _zz_19_[1:0];
  always @ (*) begin
    case(_zz_43_)
      2'b11 : begin
        _zz_28_ = (2'b10);
      end
      2'b10 : begin
        _zz_28_ = (2'b01);
      end
      default : begin
        _zz_28_ = (2'b00);
      end
    endcase
  end

  assign _zz_29_ = {1'd0, _zz_28_};
  always @ (*) begin
    case(_zz_44_)
      2'b11 : begin
        _zz_30_ = {(2'b10),_zz_99_};
      end
      2'b10 : begin
        _zz_30_ = {(2'b01),_zz_100_};
      end
      default : begin
        _zz_30_ = {(2'b00),_zz_101_};
      end
    endcase
  end

  assign _zz_31_ = _zz_30_;
  always @ (*) begin
    case(_zz_45_)
      2'b11 : begin
        _zz_32_ = {(2'b10),_zz_102_};
      end
      2'b10 : begin
        _zz_32_ = {(2'b01),_zz_103_};
      end
      default : begin
        _zz_32_ = {(2'b00),_zz_104_};
      end
    endcase
  end

  always @ (*) begin
    lz_p4 = _zz_32_[3:0];
    if(op_is_zero_p4)begin
      lz_p4 = (4'b0000);
    end
    if(mant_add_p4[14])begin
      mant_add_adj_p4 = (mant_add_p4 >>> 1);
      exp_add_adj_p4 = (exp_add_p4 + (6'b000001));
      lz_p4 = (4'b0000);
    end else begin
      mant_add_adj_p4 = mant_add_p4[13:0];
      exp_add_adj_p4 = exp_add_p4;
    end
  end

  assign exp_add_m_lz = ($signed(_zz_105_) - $signed(_zz_107_));
  assign exp_eq_lz = (exp_add_adj_p4 == _zz_109_);
  always @ (*) begin
    if(op_is_nan_p4)begin
      sign_final_p5 = 1'b0;
      exp_final_p5 = (6'b111111);
      mant_final_p5 = (1'b0 ? (14'b11111111111111) : (14'b00000000000000));
      mant_final_p5[12] = 1'b1;
    end else begin
      if((op_is_inf_p4 || (exp_add_adj_p4 == (6'b111111))))begin
        sign_final_p5 = sign_add_p4;
        exp_final_p5 = (6'b111111);
        mant_final_p5 = (14'b00000000000000);
      end else begin
        sign_final_p5 = sign_add_p4;
        exp_final_p5 = (((lz_p4 < (4'b1110)) && (! exp_add_m_lz[6])) ? _zz_111_ : (6'b000000));
        mant_final_p5 = (((! exp_add_m_lz[6]) && (! exp_eq_lz)) ? _zz_112_ : (14'b00000000000000));
      end
    end
  end

  assign io_result_vld = p4_vld;
  assign io_result_sign = sign_final_p5;
  assign io_result_exp = exp_final_p5;
  assign io_result_mant = mant_final_p5[12:0];
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p2_vld <= 1'b0;
      p4_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p2_vld <= p0_vld;
      end
      if(1'b1)begin
        p4_vld <= p2_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      op_is_zero_p2 <= op_is_zero_p0;
    end
    if(p0_vld)begin
      op_is_nan_p2 <= op_is_nan_p0;
    end
    if(p0_vld)begin
      op_is_inf_p2 <= op_is_inf_p0;
    end
    if(p0_vld)begin
      sign_a_p2 <= sign_a_swap_p0;
    end
    if(p0_vld)begin
      sign_b_p2 <= sign_b_swap_p0;
    end
    if(p0_vld)begin
      exp_add_p2 <= exp_add_p0;
    end
    if(p0_vld)begin
      mant_a_adj_p2 <= mant_a_adj_p1;
    end
    if(p0_vld)begin
      mant_b_adj_p2 <= mant_b_adj_p1;
    end
    if(p2_vld)begin
      op_is_zero_p4 <= op_is_zero_p2;
    end
    if(p2_vld)begin
      op_is_nan_p4 <= op_is_nan_p2;
    end
    if(p2_vld)begin
      op_is_inf_p4 <= op_is_inf_p2;
    end
    if(p2_vld)begin
      sign_add_p4 <= sign_add_p2;
    end
    if(p2_vld)begin
      exp_add_p4 <= exp_add_p2;
    end
    if(p2_vld)begin
      mant_add_p4 <= mant_add_p3;
    end
  end

endmodule


//FpxxAdd_1_ remplaced by FpxxAdd


//FpxxAdd_2_ remplaced by FpxxAdd

module FpxxMul (
      input   p0_vld,
      input   op_a_p0_sign,
      input  [5:0] exp_a_p0,
      input  [12:0] op_a_p0_mant,
      input   op_b_p0_sign,
      input  [5:0] exp_b_p0,
      input  [12:0] op_b_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  wire [7:0] _zz_1_;
  wire [7:0] _zz_2_;
  wire [7:0] _zz_3_;
  wire [7:0] _zz_4_;
  wire [7:0] _zz_5_;
  wire [7:0] _zz_6_;
  wire [27:0] _zz_7_;
  wire [14:0] _zz_8_;
  wire [1:0] _zz_9_;
  wire [7:0] _zz_10_;
  wire [0:0] _zz_11_;
  wire [1:0] _zz_12_;
  wire [7:0] _zz_13_;
  wire [8:0] _zz_14_;
  wire [8:0] _zz_15_;
  wire [5:0] _zz_16_;
  wire  op_is_nan_p0;
  wire  op_a_is_zero_p0;
  wire  op_b_is_zero_p0;
  wire  op_is_zero_p0;
  wire [13:0] mant_a_p0;
  wire [13:0] mant_b_p0;
  wire  sign_mul_p0;
  reg  p1_vld;
  reg  op_is_zero_p1;
  reg  op_is_nan_p1;
  reg  sign_mul_p1;
  reg [5:0] exp_a_p1;
  reg [5:0] exp_b_p1;
  reg [13:0] mant_a_p1;
  reg [13:0] mant_b_p1;
  wire [7:0] exp_mul_p1;
  wire [14:0] mant_mul_p1;
  reg  p2_vld;
  reg  op_is_zero_p2;
  reg  op_is_nan_p2;
  reg  sign_mul_p2;
  reg [7:0] exp_mul_p2;
  reg [14:0] mant_mul_p2;
  wire [7:0] exp_mul_adj_p2;
  wire [13:0] mant_mul_adj_p2;
  reg  sign_final_p2;
  reg [5:0] exp_final_p2;
  reg [12:0] mant_final_p2;
  assign _zz_1_ = ($signed(_zz_2_) + $signed(_zz_4_));
  assign _zz_2_ = _zz_3_;
  assign _zz_3_ = {2'd0, exp_a_p1};
  assign _zz_4_ = _zz_5_;
  assign _zz_5_ = {2'd0, exp_b_p1};
  assign _zz_6_ = (8'b00011111);
  assign _zz_7_ = (mant_a_p1 * mant_b_p1);
  assign _zz_8_ = (mant_mul_p2 >>> mant_mul_p2[14]);
  assign _zz_9_ = _zz_12_;
  assign _zz_10_ = {{6{_zz_9_[1]}}, _zz_9_};
  assign _zz_11_ = mant_mul_p2[14];
  assign _zz_12_ = {1'd0, _zz_11_};
  assign _zz_13_ = (8'b00000000);
  assign _zz_14_ = (9'b011111111);
  assign _zz_15_ = {{1{exp_mul_adj_p2[7]}}, exp_mul_adj_p2};
  assign _zz_16_ = exp_mul_adj_p2[5:0];
  assign op_is_nan_p0 = (((exp_a_p0 == (6'b111111)) && (op_a_p0_mant != (13'b0000000000000))) || ((exp_b_p0 == (6'b111111)) && (op_b_p0_mant != (13'b0000000000000))));
  assign op_a_is_zero_p0 = (exp_a_p0 == (6'b000000));
  assign op_b_is_zero_p0 = (exp_b_p0 == (6'b000000));
  assign op_is_zero_p0 = ((op_a_is_zero_p0 || op_b_is_zero_p0) && (! op_is_nan_p0));
  assign mant_a_p0 = {(1'b1),op_a_p0_mant};
  assign mant_b_p0 = {(1'b1),op_b_p0_mant};
  assign sign_mul_p0 = (op_a_p0_sign ^ op_b_p0_sign);
  assign exp_mul_p1 = ($signed(_zz_1_) - $signed(_zz_6_));
  assign mant_mul_p1 = (_zz_7_ >>> 13);
  assign mant_mul_adj_p2 = _zz_8_[13:0];
  assign exp_mul_adj_p2 = ($signed(exp_mul_p2) + $signed(_zz_10_));
  always @ (*) begin
    if(op_is_nan_p2)begin
      sign_final_p2 = 1'b0;
      exp_final_p2 = (6'b111111);
      mant_final_p2 = (1'b0 ? (13'b1111111111111) : (13'b0000000000000));
      mant_final_p2[12] = 1'b1;
    end else begin
      if((op_is_zero_p2 || ($signed(exp_mul_adj_p2) <= $signed(_zz_13_))))begin
        sign_final_p2 = 1'b0;
        exp_final_p2 = (6'b000000);
        mant_final_p2 = (13'b0000000000000);
      end else begin
        if(($signed(_zz_14_) <= $signed(_zz_15_)))begin
          sign_final_p2 = sign_mul_p2;
          exp_final_p2 = (6'b111111);
          mant_final_p2 = (13'b0000000000000);
        end else begin
          sign_final_p2 = sign_mul_p2;
          exp_final_p2 = _zz_16_;
          mant_final_p2 = mant_mul_adj_p2[12:0];
        end
      end
    end
  end

  assign io_result_vld = p2_vld;
  assign io_result_sign = sign_final_p2;
  assign io_result_exp = exp_final_p2;
  assign io_result_mant = mant_final_p2;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
      p2_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
      if(1'b1)begin
        p2_vld <= p1_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      op_is_zero_p1 <= op_is_zero_p0;
    end
    if(p0_vld)begin
      op_is_nan_p1 <= op_is_nan_p0;
    end
    if(p0_vld)begin
      sign_mul_p1 <= sign_mul_p0;
    end
    if(p0_vld)begin
      exp_a_p1 <= exp_a_p0;
    end
    if(p0_vld)begin
      exp_b_p1 <= exp_b_p0;
    end
    if(p0_vld)begin
      mant_a_p1 <= mant_a_p0;
    end
    if(p0_vld)begin
      mant_b_p1 <= mant_b_p0;
    end
    if(p1_vld)begin
      op_is_zero_p2 <= op_is_zero_p1;
    end
    if(p1_vld)begin
      op_is_nan_p2 <= op_is_nan_p1;
    end
    if(p1_vld)begin
      sign_mul_p2 <= sign_mul_p1;
    end
    if(p1_vld)begin
      exp_mul_p2 <= exp_mul_p1;
    end
    if(p1_vld)begin
      mant_mul_p2 <= mant_mul_p1;
    end
  end

endmodule


//FpxxMul_1_ remplaced by FpxxMul


//FpxxMul_2_ remplaced by FpxxMul


//FpxxAdd_3_ remplaced by FpxxAdd


//FpxxAdd_4_ remplaced by FpxxAdd


//FpxxAdd_5_ remplaced by FpxxAdd


//FpxxAdd_6_ remplaced by FpxxAdd


//FpxxAdd_7_ remplaced by FpxxAdd


//FpxxAdd_8_ remplaced by FpxxAdd


//FpxxMul_3_ remplaced by FpxxMul


//FpxxMul_4_ remplaced by FpxxMul


//FpxxMul_5_ remplaced by FpxxMul


//FpxxAdd_9_ remplaced by FpxxAdd


//FpxxAdd_10_ remplaced by FpxxAdd


//FpxxMul_6_ remplaced by FpxxMul


//FpxxMul_7_ remplaced by FpxxMul


//FpxxMul_8_ remplaced by FpxxMul


//FpxxAdd_11_ remplaced by FpxxAdd


//FpxxAdd_12_ remplaced by FpxxAdd


//FpxxAdd_13_ remplaced by FpxxAdd


//FpxxAdd_14_ remplaced by FpxxAdd


//FpxxAdd_15_ remplaced by FpxxAdd


//FpxxAdd_16_ remplaced by FpxxAdd


//FpxxMul_9_ remplaced by FpxxMul


//FpxxMul_10_ remplaced by FpxxMul


//FpxxMul_11_ remplaced by FpxxMul


//FpxxAdd_17_ remplaced by FpxxAdd


//FpxxAdd_18_ remplaced by FpxxAdd


//FpxxAdd_19_ remplaced by FpxxAdd


//FpxxAdd_20_ remplaced by FpxxAdd


//FpxxAdd_21_ remplaced by FpxxAdd


//FpxxAdd_22_ remplaced by FpxxAdd


//FpxxMul_12_ remplaced by FpxxMul


//FpxxMul_13_ remplaced by FpxxMul


//FpxxMul_14_ remplaced by FpxxMul


//FpxxAdd_23_ remplaced by FpxxAdd


//FpxxAdd_24_ remplaced by FpxxAdd


//FpxxAdd_25_ remplaced by FpxxAdd


//FpxxAdd_26_ remplaced by FpxxAdd


//FpxxAdd_27_ remplaced by FpxxAdd


//FpxxAdd_28_ remplaced by FpxxAdd


//FpxxMul_15_ remplaced by FpxxMul


//FpxxMul_16_ remplaced by FpxxMul


//FpxxMul_17_ remplaced by FpxxMul


//FpxxAdd_29_ remplaced by FpxxAdd


//FpxxAdd_30_ remplaced by FpxxAdd


//FpxxMul_18_ remplaced by FpxxMul


//FpxxMul_19_ remplaced by FpxxMul


//FpxxMul_20_ remplaced by FpxxMul


//FpxxAdd_31_ remplaced by FpxxAdd


//FpxxAdd_32_ remplaced by FpxxAdd


//FpxxAdd_33_ remplaced by FpxxAdd


//FpxxAdd_34_ remplaced by FpxxAdd


//FpxxAdd_35_ remplaced by FpxxAdd


//FpxxMul_21_ remplaced by FpxxMul


//FpxxMul_22_ remplaced by FpxxMul


//FpxxMul_23_ remplaced by FpxxMul


//FpxxAdd_36_ remplaced by FpxxAdd


//FpxxAdd_37_ remplaced by FpxxAdd


//FpxxMul_24_ remplaced by FpxxMul


//FpxxMul_25_ remplaced by FpxxMul


//FpxxMul_26_ remplaced by FpxxMul

module FpxxSub (
      input   io_op_vld,
      input   io_op_a_sign,
      input  [5:0] io_op_a_exp,
      input  [12:0] io_op_a_mant,
      input   io_op_b_sign,
      input  [5:0] io_op_b_exp,
      input  [12:0] io_op_b_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  wire  u_add_io_result_vld;
  wire  u_add_io_result_sign;
  wire [5:0] u_add_io_result_exp;
  wire [12:0] u_add_io_result_mant;
  wire  op_b_sign;
  wire [5:0] op_b_exp;
  wire [12:0] op_b_mant;
  FpxxAdd u_add ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_a_sign),
    .op_a_p0_exp(io_op_a_exp),
    .op_a_p0_mant(io_op_a_mant),
    .op_b_p0_sign(op_b_sign),
    .op_b_p0_exp(op_b_exp),
    .op_b_p0_mant(op_b_mant),
    .io_result_vld(u_add_io_result_vld),
    .io_result_sign(u_add_io_result_sign),
    .io_result_exp(u_add_io_result_exp),
    .io_result_mant(u_add_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign op_b_sign = (! io_op_b_sign);
  assign op_b_exp = io_op_b_exp;
  assign op_b_mant = io_op_b_mant;
  assign io_result_vld = u_add_io_result_vld;
  assign io_result_sign = u_add_io_result_sign;
  assign io_result_exp = u_add_io_result_exp;
  assign io_result_mant = u_add_io_result_mant;
endmodule


//FpxxSub_1_ remplaced by FpxxSub


//FpxxSub_2_ remplaced by FpxxSub


//FpxxMul_27_ remplaced by FpxxMul


//FpxxMul_28_ remplaced by FpxxMul


//FpxxMul_29_ remplaced by FpxxMul


//FpxxAdd_38_ remplaced by FpxxAdd


//FpxxAdd_39_ remplaced by FpxxAdd


//FpxxMul_30_ remplaced by FpxxMul


//FpxxMul_31_ remplaced by FpxxMul


//FpxxMul_32_ remplaced by FpxxMul


//FpxxAdd_40_ remplaced by FpxxAdd


//FpxxAdd_41_ remplaced by FpxxAdd


//FpxxAdd_42_ remplaced by FpxxAdd


//FpxxAdd_43_ remplaced by FpxxAdd


//FpxxAdd_44_ remplaced by FpxxAdd

module MulVecScalar (
      input   io_op_vld,
      input   io_op_vec_x_sign,
      input  [5:0] io_op_vec_x_exp,
      input  [12:0] io_op_vec_x_mant,
      input   io_op_vec_y_sign,
      input  [5:0] io_op_vec_y_exp,
      input  [12:0] io_op_vec_y_mant,
      input   io_op_vec_z_sign,
      input  [5:0] io_op_vec_z_exp,
      input  [12:0] io_op_vec_z_mant,
      input   io_op_scalar_sign,
      input  [5:0] io_op_scalar_exp,
      input  [12:0] io_op_scalar_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_x_io_result_vld;
  wire  u_x_io_result_sign;
  wire [5:0] u_x_io_result_exp;
  wire [12:0] u_x_io_result_mant;
  wire  u_y_io_result_vld;
  wire  u_y_io_result_sign;
  wire [5:0] u_y_io_result_exp;
  wire [12:0] u_y_io_result_mant;
  wire  u_z_io_result_vld;
  wire  u_z_io_result_sign;
  wire [5:0] u_z_io_result_exp;
  wire [12:0] u_z_io_result_mant;
  FpxxMul u_x ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_vec_x_sign),
    .exp_a_p0(io_op_vec_x_exp),
    .op_a_p0_mant(io_op_vec_x_mant),
    .op_b_p0_sign(io_op_scalar_sign),
    .exp_b_p0(io_op_scalar_exp),
    .op_b_p0_mant(io_op_scalar_mant),
    .io_result_vld(u_x_io_result_vld),
    .io_result_sign(u_x_io_result_sign),
    .io_result_exp(u_x_io_result_exp),
    .io_result_mant(u_x_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_y ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_vec_y_sign),
    .exp_a_p0(io_op_vec_y_exp),
    .op_a_p0_mant(io_op_vec_y_mant),
    .op_b_p0_sign(io_op_scalar_sign),
    .exp_b_p0(io_op_scalar_exp),
    .op_b_p0_mant(io_op_scalar_mant),
    .io_result_vld(u_y_io_result_vld),
    .io_result_sign(u_y_io_result_sign),
    .io_result_exp(u_y_io_result_exp),
    .io_result_mant(u_y_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_z ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_vec_z_sign),
    .exp_a_p0(io_op_vec_z_exp),
    .op_a_p0_mant(io_op_vec_z_mant),
    .op_b_p0_sign(io_op_scalar_sign),
    .exp_b_p0(io_op_scalar_exp),
    .op_b_p0_mant(io_op_scalar_mant),
    .io_result_vld(u_z_io_result_vld),
    .io_result_sign(u_z_io_result_sign),
    .io_result_exp(u_z_io_result_exp),
    .io_result_mant(u_z_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign io_result_vld = u_x_io_result_vld;
  assign io_result_x_sign = u_x_io_result_sign;
  assign io_result_x_exp = u_x_io_result_exp;
  assign io_result_x_mant = u_x_io_result_mant;
  assign io_result_y_sign = u_y_io_result_sign;
  assign io_result_y_exp = u_y_io_result_exp;
  assign io_result_y_mant = u_y_io_result_mant;
  assign io_result_z_sign = u_z_io_result_sign;
  assign io_result_z_exp = u_z_io_result_exp;
  assign io_result_z_mant = u_z_io_result_mant;
endmodule

module AddVecVec (
      input   io_op_vld,
      input   io_op_a_x_sign,
      input  [5:0] io_op_a_x_exp,
      input  [12:0] io_op_a_x_mant,
      input   io_op_a_y_sign,
      input  [5:0] io_op_a_y_exp,
      input  [12:0] io_op_a_y_mant,
      input   io_op_a_z_sign,
      input  [5:0] io_op_a_z_exp,
      input  [12:0] io_op_a_z_mant,
      input   io_op_b_x_sign,
      input  [5:0] io_op_b_x_exp,
      input  [12:0] io_op_b_x_mant,
      input   io_op_b_y_sign,
      input  [5:0] io_op_b_y_exp,
      input  [12:0] io_op_b_y_mant,
      input   io_op_b_z_sign,
      input  [5:0] io_op_b_z_exp,
      input  [12:0] io_op_b_z_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_x_io_result_vld;
  wire  u_x_io_result_sign;
  wire [5:0] u_x_io_result_exp;
  wire [12:0] u_x_io_result_mant;
  wire  u_y_io_result_vld;
  wire  u_y_io_result_sign;
  wire [5:0] u_y_io_result_exp;
  wire [12:0] u_y_io_result_mant;
  wire  u_z_io_result_vld;
  wire  u_z_io_result_sign;
  wire [5:0] u_z_io_result_exp;
  wire [12:0] u_z_io_result_mant;
  FpxxAdd u_x ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_a_x_sign),
    .op_a_p0_exp(io_op_a_x_exp),
    .op_a_p0_mant(io_op_a_x_mant),
    .op_b_p0_sign(io_op_b_x_sign),
    .op_b_p0_exp(io_op_b_x_exp),
    .op_b_p0_mant(io_op_b_x_mant),
    .io_result_vld(u_x_io_result_vld),
    .io_result_sign(u_x_io_result_sign),
    .io_result_exp(u_x_io_result_exp),
    .io_result_mant(u_x_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_y ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_a_y_sign),
    .op_a_p0_exp(io_op_a_y_exp),
    .op_a_p0_mant(io_op_a_y_mant),
    .op_b_p0_sign(io_op_b_y_sign),
    .op_b_p0_exp(io_op_b_y_exp),
    .op_b_p0_mant(io_op_b_y_mant),
    .io_result_vld(u_y_io_result_vld),
    .io_result_sign(u_y_io_result_sign),
    .io_result_exp(u_y_io_result_exp),
    .io_result_mant(u_y_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_z ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_a_z_sign),
    .op_a_p0_exp(io_op_a_z_exp),
    .op_a_p0_mant(io_op_a_z_mant),
    .op_b_p0_sign(io_op_b_z_sign),
    .op_b_p0_exp(io_op_b_z_exp),
    .op_b_p0_mant(io_op_b_z_mant),
    .io_result_vld(u_z_io_result_vld),
    .io_result_sign(u_z_io_result_sign),
    .io_result_exp(u_z_io_result_exp),
    .io_result_mant(u_z_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign io_result_vld = u_x_io_result_vld;
  assign io_result_x_sign = u_x_io_result_sign;
  assign io_result_x_exp = u_x_io_result_exp;
  assign io_result_x_mant = u_x_io_result_mant;
  assign io_result_y_sign = u_y_io_result_sign;
  assign io_result_y_exp = u_y_io_result_exp;
  assign io_result_y_mant = u_y_io_result_mant;
  assign io_result_z_sign = u_z_io_result_sign;
  assign io_result_z_exp = u_z_io_result_exp;
  assign io_result_z_mant = u_z_io_result_mant;
endmodule


//FpxxSub_3_ remplaced by FpxxSub


//FpxxSub_4_ remplaced by FpxxSub


//FpxxSub_5_ remplaced by FpxxSub

module DotProduct (
      input   io_op_vld,
      input   io_op_a_x_sign,
      input  [5:0] io_op_a_x_exp,
      input  [12:0] io_op_a_x_mant,
      input   io_op_a_y_sign,
      input  [5:0] io_op_a_y_exp,
      input  [12:0] io_op_a_y_mant,
      input   io_op_a_z_sign,
      input  [5:0] io_op_a_z_exp,
      input  [12:0] io_op_a_z_mant,
      input   io_op_b_x_sign,
      input  [5:0] io_op_b_x_exp,
      input  [12:0] io_op_b_x_mant,
      input   io_op_b_y_sign,
      input  [5:0] io_op_b_y_exp,
      input  [12:0] io_op_b_y_mant,
      input   io_op_b_z_sign,
      input  [5:0] io_op_b_z_exp,
      input  [12:0] io_op_b_z_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  wire  u_xx_io_result_vld;
  wire  u_xx_io_result_sign;
  wire [5:0] u_xx_io_result_exp;
  wire [12:0] u_xx_io_result_mant;
  wire  u_yy_io_result_vld;
  wire  u_yy_io_result_sign;
  wire [5:0] u_yy_io_result_exp;
  wire [12:0] u_yy_io_result_mant;
  wire  u_zz_io_result_vld;
  wire  u_zz_io_result_sign;
  wire [5:0] u_zz_io_result_exp;
  wire [12:0] u_zz_io_result_mant;
  wire  u_xx_yy_io_result_vld;
  wire  u_xx_yy_io_result_sign;
  wire [5:0] u_xx_yy_io_result_exp;
  wire [12:0] u_xx_yy_io_result_mant;
  wire  u_xx_yy_zz_io_result_vld;
  wire  u_xx_yy_zz_io_result_sign;
  wire [5:0] u_xx_yy_zz_io_result_exp;
  wire [12:0] u_xx_yy_zz_io_result_mant;
  wire  xx_vld;
  wire  yy_vld;
  wire  zz_vld;
  wire  xx_sign;
  wire [5:0] xx_exp;
  wire [12:0] xx_mant;
  wire  yy_sign;
  wire [5:0] yy_exp;
  wire [12:0] yy_mant;
  wire  zz_sign;
  wire [5:0] zz_exp;
  wire [12:0] zz_mant;
  wire  xx_yy_vld;
  wire  xx_yy_zz_vld;
  wire  xx_yy_sign;
  wire [5:0] xx_yy_exp;
  wire [12:0] xx_yy_mant;
  wire  xx_yy_zz_sign;
  wire [5:0] xx_yy_zz_exp;
  wire [12:0] xx_yy_zz_mant;
  reg  zz_delay_1_sign;
  reg [5:0] zz_delay_1_exp;
  reg [12:0] zz_delay_1_mant;
  reg  zz_delayed_sign;
  reg [5:0] zz_delayed_exp;
  reg [12:0] zz_delayed_mant;
  FpxxMul u_xx ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_a_x_sign),
    .exp_a_p0(io_op_a_x_exp),
    .op_a_p0_mant(io_op_a_x_mant),
    .op_b_p0_sign(io_op_b_x_sign),
    .exp_b_p0(io_op_b_x_exp),
    .op_b_p0_mant(io_op_b_x_mant),
    .io_result_vld(u_xx_io_result_vld),
    .io_result_sign(u_xx_io_result_sign),
    .io_result_exp(u_xx_io_result_exp),
    .io_result_mant(u_xx_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_yy ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_a_y_sign),
    .exp_a_p0(io_op_a_y_exp),
    .op_a_p0_mant(io_op_a_y_mant),
    .op_b_p0_sign(io_op_b_y_sign),
    .exp_b_p0(io_op_b_y_exp),
    .op_b_p0_mant(io_op_b_y_mant),
    .io_result_vld(u_yy_io_result_vld),
    .io_result_sign(u_yy_io_result_sign),
    .io_result_exp(u_yy_io_result_exp),
    .io_result_mant(u_yy_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_zz ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_a_z_sign),
    .exp_a_p0(io_op_a_z_exp),
    .op_a_p0_mant(io_op_a_z_mant),
    .op_b_p0_sign(io_op_b_z_sign),
    .exp_b_p0(io_op_b_z_exp),
    .op_b_p0_mant(io_op_b_z_mant),
    .io_result_vld(u_zz_io_result_vld),
    .io_result_sign(u_zz_io_result_sign),
    .io_result_exp(u_zz_io_result_exp),
    .io_result_mant(u_zz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_xx_yy ( 
    .p0_vld(xx_vld),
    .op_a_p0_sign(xx_sign),
    .op_a_p0_exp(xx_exp),
    .op_a_p0_mant(xx_mant),
    .op_b_p0_sign(yy_sign),
    .op_b_p0_exp(yy_exp),
    .op_b_p0_mant(yy_mant),
    .io_result_vld(u_xx_yy_io_result_vld),
    .io_result_sign(u_xx_yy_io_result_sign),
    .io_result_exp(u_xx_yy_io_result_exp),
    .io_result_mant(u_xx_yy_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_xx_yy_zz ( 
    .p0_vld(xx_yy_vld),
    .op_a_p0_sign(xx_yy_sign),
    .op_a_p0_exp(xx_yy_exp),
    .op_a_p0_mant(xx_yy_mant),
    .op_b_p0_sign(zz_delayed_sign),
    .op_b_p0_exp(zz_delayed_exp),
    .op_b_p0_mant(zz_delayed_mant),
    .io_result_vld(u_xx_yy_zz_io_result_vld),
    .io_result_sign(u_xx_yy_zz_io_result_sign),
    .io_result_exp(u_xx_yy_zz_io_result_exp),
    .io_result_mant(u_xx_yy_zz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign xx_vld = u_xx_io_result_vld;
  assign xx_sign = u_xx_io_result_sign;
  assign xx_exp = u_xx_io_result_exp;
  assign xx_mant = u_xx_io_result_mant;
  assign yy_vld = u_yy_io_result_vld;
  assign yy_sign = u_yy_io_result_sign;
  assign yy_exp = u_yy_io_result_exp;
  assign yy_mant = u_yy_io_result_mant;
  assign zz_vld = u_zz_io_result_vld;
  assign zz_sign = u_zz_io_result_sign;
  assign zz_exp = u_zz_io_result_exp;
  assign zz_mant = u_zz_io_result_mant;
  assign xx_yy_vld = u_xx_yy_io_result_vld;
  assign xx_yy_sign = u_xx_yy_io_result_sign;
  assign xx_yy_exp = u_xx_yy_io_result_exp;
  assign xx_yy_mant = u_xx_yy_io_result_mant;
  assign xx_yy_zz_vld = u_xx_yy_zz_io_result_vld;
  assign xx_yy_zz_sign = u_xx_yy_zz_io_result_sign;
  assign xx_yy_zz_exp = u_xx_yy_zz_io_result_exp;
  assign xx_yy_zz_mant = u_xx_yy_zz_io_result_mant;
  assign io_result_vld = xx_yy_zz_vld;
  assign io_result_sign = xx_yy_zz_sign;
  assign io_result_exp = xx_yy_zz_exp;
  assign io_result_mant = xx_yy_zz_mant;
  always @ (posedge clk) begin
    zz_delay_1_sign <= zz_sign;
    zz_delay_1_exp <= zz_exp;
    zz_delay_1_mant <= zz_mant;
    zz_delayed_sign <= zz_delay_1_sign;
    zz_delayed_exp <= zz_delay_1_exp;
    zz_delayed_mant <= zz_delay_1_mant;
  end

endmodule

module FpxxRSqrt (
      input   p0_vld,
      input   op_p0_sign,
      input  [5:0] op_p0_exp,
      input  [12:0] op_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  reg [13:0] _zz_1_;
  wire [6:0] _zz_2_;
  wire [6:0] _zz_3_;
  wire [6:0] _zz_4_;
  wire [11:0] _zz_5_;
  wire [14:0] _zz_6_;
  wire [6:0] _zz_7_;
  wire [6:0] _zz_8_;
  wire [6:0] _zz_9_;
  wire [6:0] _zz_10_;
  wire [6:0] _zz_11_;
  wire [6:0] _zz_12_;
  wire [6:0] _zz_13_;
  wire [6:0] _zz_14_;
  wire [6:0] _zz_15_;
  wire  op_zero_p0;
  wire  op_nan_p0;
  wire  op_inf_p0;
  wire [6:0] exp_p0;
  wire  gt_1_p0;
  wire [11:0] rsqrt_addr_p0;
  reg  p1_vld;
  reg  op_zero_p1;
  reg  op_nan_p1;
  reg  op_inf_p1;
  reg [6:0] exp_p1;
  wire [13:0] rsqrt_val_p1;
  wire [1:0] rsqrt_shift_p1;
  wire [11:0] rsqrt_mant_p1;
  wire [6:0] exp_adj_p1;
  reg  sign_final_p1;
  reg [5:0] exp_final_p1;
  reg [12:0] mant_final_p1;
  reg [13:0] rsqrt_table [0:3071];
  assign _zz_2_ = _zz_3_;
  assign _zz_3_ = {1'd0, op_p0_exp};
  assign _zz_4_ = (7'b0011111);
  assign _zz_5_ = (_zz_6_ >>> 3);
  assign _zz_6_ = ({1'd0,{(1'b1),op_p0_mant}} <<< gt_1_p0);
  assign _zz_7_ = ($signed(_zz_8_) - $signed(_zz_12_));
  assign _zz_8_ = (- _zz_9_);
  assign _zz_9_ = ($signed(_zz_10_) >>> 1);
  assign _zz_10_ = ($signed(exp_p1) + $signed(_zz_11_));
  assign _zz_11_ = (7'b0000001);
  assign _zz_12_ = {{5{rsqrt_shift_p1[1]}}, rsqrt_shift_p1};
  assign _zz_13_ = (7'b0011111);
  assign _zz_14_ = (7'b0000000);
  assign _zz_15_ = exp_adj_p1;
  initial begin
    $readmemb("PanoCore.v_toplevel_rt_u_sphere_intersect_u_normalize_u_rsqrt_rsqrt_table.bin",rsqrt_table);
  end
  always @ (posedge clk) begin
    if(p0_vld) begin
      _zz_1_ <= rsqrt_table[rsqrt_addr_p0];
    end
  end

  assign op_zero_p0 = (op_p0_exp == (6'b000000));
  assign op_nan_p0 = (((op_p0_exp == (6'b111111)) && (op_p0_mant != (13'b0000000000000))) || op_p0_sign);
  assign op_inf_p0 = ((op_p0_exp == (6'b111111)) && (! (op_p0_mant != (13'b0000000000000))));
  assign exp_p0 = ($signed(_zz_2_) - $signed(_zz_4_));
  assign gt_1_p0 = (! exp_p0[0]);
  assign rsqrt_addr_p0 = (_zz_5_ - (12'b010000000000));
  assign rsqrt_val_p1 = _zz_1_;
  assign rsqrt_shift_p1 = rsqrt_val_p1[1 : 0];
  assign rsqrt_mant_p1 = rsqrt_val_p1[13 : 2];
  assign exp_adj_p1 = ($signed(_zz_7_) + $signed(_zz_13_));
  always @ (*) begin
    if(op_nan_p1)begin
      sign_final_p1 = 1'b0;
      exp_final_p1 = (6'b111111);
      mant_final_p1 = (1'b0 ? (13'b1111111111111) : (13'b0000000000000));
      mant_final_p1[12] = 1'b1;
    end else begin
      if(op_zero_p1)begin
        sign_final_p1 = 1'b0;
        exp_final_p1 = (6'b111111);
        mant_final_p1 = (13'b0000000000000);
      end else begin
        if((op_inf_p1 || ($signed(exp_adj_p1) <= $signed(_zz_14_))))begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = (6'b000000);
          mant_final_p1 = (13'b0000000000000);
        end else begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = _zz_15_[5:0];
          mant_final_p1 = ({1'd0,rsqrt_mant_p1} <<< 1);
        end
      end
    end
  end

  assign io_result_vld = p1_vld;
  assign io_result_sign = sign_final_p1;
  assign io_result_exp = exp_final_p1;
  assign io_result_mant = mant_final_p1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      op_zero_p1 <= op_zero_p0;
    end
    if(p0_vld)begin
      op_nan_p1 <= op_nan_p0;
    end
    if(p0_vld)begin
      op_inf_p1 <= op_inf_p0;
    end
    if(p0_vld)begin
      exp_p1 <= exp_p0;
    end
  end

endmodule


//MulVecScalar_1_ remplaced by MulVecScalar


//FpxxMul_33_ remplaced by FpxxMul


//FpxxMul_34_ remplaced by FpxxMul


//FpxxMul_35_ remplaced by FpxxMul


//FpxxAdd_45_ remplaced by FpxxAdd


//FpxxAdd_46_ remplaced by FpxxAdd


//FpxxMul_36_ remplaced by FpxxMul


//FpxxMul_37_ remplaced by FpxxMul


//FpxxMul_38_ remplaced by FpxxMul


//FpxxSub_6_ remplaced by FpxxSub


//FpxxSub_7_ remplaced by FpxxSub


//FpxxSub_8_ remplaced by FpxxSub


//FpxxMul_39_ remplaced by FpxxMul


//FpxxMul_40_ remplaced by FpxxMul


//FpxxMul_41_ remplaced by FpxxMul


//FpxxAdd_47_ remplaced by FpxxAdd


//FpxxAdd_48_ remplaced by FpxxAdd


//FpxxSub_9_ remplaced by FpxxSub


//FpxxSub_10_ remplaced by FpxxSub


//FpxxSub_11_ remplaced by FpxxSub


//FpxxMul_42_ remplaced by FpxxMul


//FpxxMul_43_ remplaced by FpxxMul


//FpxxMul_44_ remplaced by FpxxMul


//FpxxAdd_49_ remplaced by FpxxAdd


//FpxxAdd_50_ remplaced by FpxxAdd


//MulVecScalar_2_ remplaced by MulVecScalar


//AddVecVec_1_ remplaced by AddVecVec


//FpxxSub_12_ remplaced by FpxxSub


//FpxxSub_13_ remplaced by FpxxSub


//FpxxSub_14_ remplaced by FpxxSub


//FpxxMul_45_ remplaced by FpxxMul


//FpxxMul_46_ remplaced by FpxxMul


//FpxxMul_47_ remplaced by FpxxMul


//FpxxAdd_51_ remplaced by FpxxAdd


//FpxxAdd_52_ remplaced by FpxxAdd


//FpxxMul_48_ remplaced by FpxxMul


//FpxxMul_49_ remplaced by FpxxMul


//FpxxMul_50_ remplaced by FpxxMul


//FpxxAdd_53_ remplaced by FpxxAdd


//FpxxAdd_54_ remplaced by FpxxAdd


//FpxxAdd_55_ remplaced by FpxxAdd


//FpxxAdd_56_ remplaced by FpxxAdd


//FpxxAdd_57_ remplaced by FpxxAdd


//MulVecScalar_3_ remplaced by MulVecScalar


//AddVecVec_2_ remplaced by AddVecVec


//FpxxSub_15_ remplaced by FpxxSub


//FpxxSub_16_ remplaced by FpxxSub


//FpxxSub_17_ remplaced by FpxxSub


//DotProduct_1_ remplaced by DotProduct

module FpxxRSqrt_1_ (
      input   p0_vld,
      input   op_p0_sign,
      input  [5:0] op_p0_exp,
      input  [12:0] op_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  reg [13:0] _zz_1_;
  wire [6:0] _zz_2_;
  wire [6:0] _zz_3_;
  wire [6:0] _zz_4_;
  wire [11:0] _zz_5_;
  wire [14:0] _zz_6_;
  wire [6:0] _zz_7_;
  wire [6:0] _zz_8_;
  wire [6:0] _zz_9_;
  wire [6:0] _zz_10_;
  wire [6:0] _zz_11_;
  wire [6:0] _zz_12_;
  wire [6:0] _zz_13_;
  wire [6:0] _zz_14_;
  wire [6:0] _zz_15_;
  wire  op_zero_p0;
  wire  op_nan_p0;
  wire  op_inf_p0;
  wire [6:0] exp_p0;
  wire  gt_1_p0;
  wire [11:0] rsqrt_addr_p0;
  reg  p1_vld;
  reg  op_zero_p1;
  reg  op_nan_p1;
  reg  op_inf_p1;
  reg [6:0] exp_p1;
  wire [13:0] rsqrt_val_p1;
  wire [1:0] rsqrt_shift_p1;
  wire [11:0] rsqrt_mant_p1;
  wire [6:0] exp_adj_p1;
  reg  sign_final_p1;
  reg [5:0] exp_final_p1;
  reg [12:0] mant_final_p1;
  reg [13:0] rsqrt_table [0:3071];
  assign _zz_2_ = _zz_3_;
  assign _zz_3_ = {1'd0, op_p0_exp};
  assign _zz_4_ = (7'b0011111);
  assign _zz_5_ = (_zz_6_ >>> 3);
  assign _zz_6_ = ({1'd0,{(1'b1),op_p0_mant}} <<< gt_1_p0);
  assign _zz_7_ = ($signed(_zz_8_) - $signed(_zz_12_));
  assign _zz_8_ = (- _zz_9_);
  assign _zz_9_ = ($signed(_zz_10_) >>> 1);
  assign _zz_10_ = ($signed(exp_p1) + $signed(_zz_11_));
  assign _zz_11_ = (7'b0000001);
  assign _zz_12_ = {{5{rsqrt_shift_p1[1]}}, rsqrt_shift_p1};
  assign _zz_13_ = (7'b0011111);
  assign _zz_14_ = (7'b0000000);
  assign _zz_15_ = exp_adj_p1;
  initial begin
    $readmemb("PanoCore.v_toplevel_rt_u_shadow_sphere_intersect_u_normalize_u_rsqrt_rsqrt_table.bin",rsqrt_table);
  end
  always @ (posedge clk) begin
    if(p0_vld) begin
      _zz_1_ <= rsqrt_table[rsqrt_addr_p0];
    end
  end

  assign op_zero_p0 = (op_p0_exp == (6'b000000));
  assign op_nan_p0 = (((op_p0_exp == (6'b111111)) && (op_p0_mant != (13'b0000000000000))) || op_p0_sign);
  assign op_inf_p0 = ((op_p0_exp == (6'b111111)) && (! (op_p0_mant != (13'b0000000000000))));
  assign exp_p0 = ($signed(_zz_2_) - $signed(_zz_4_));
  assign gt_1_p0 = (! exp_p0[0]);
  assign rsqrt_addr_p0 = (_zz_5_ - (12'b010000000000));
  assign rsqrt_val_p1 = _zz_1_;
  assign rsqrt_shift_p1 = rsqrt_val_p1[1 : 0];
  assign rsqrt_mant_p1 = rsqrt_val_p1[13 : 2];
  assign exp_adj_p1 = ($signed(_zz_7_) + $signed(_zz_13_));
  always @ (*) begin
    if(op_nan_p1)begin
      sign_final_p1 = 1'b0;
      exp_final_p1 = (6'b111111);
      mant_final_p1 = (1'b0 ? (13'b1111111111111) : (13'b0000000000000));
      mant_final_p1[12] = 1'b1;
    end else begin
      if(op_zero_p1)begin
        sign_final_p1 = 1'b0;
        exp_final_p1 = (6'b111111);
        mant_final_p1 = (13'b0000000000000);
      end else begin
        if((op_inf_p1 || ($signed(exp_adj_p1) <= $signed(_zz_14_))))begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = (6'b000000);
          mant_final_p1 = (13'b0000000000000);
        end else begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = _zz_15_[5:0];
          mant_final_p1 = ({1'd0,rsqrt_mant_p1} <<< 1);
        end
      end
    end
  end

  assign io_result_vld = p1_vld;
  assign io_result_sign = sign_final_p1;
  assign io_result_exp = exp_final_p1;
  assign io_result_mant = mant_final_p1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      op_zero_p1 <= op_zero_p0;
    end
    if(p0_vld)begin
      op_nan_p1 <= op_nan_p0;
    end
    if(p0_vld)begin
      op_inf_p1 <= op_inf_p0;
    end
    if(p0_vld)begin
      exp_p1 <= exp_p0;
    end
  end

endmodule


//MulVecScalar_4_ remplaced by MulVecScalar


//FpxxMul_51_ remplaced by FpxxMul


//FpxxMul_52_ remplaced by FpxxMul


//FpxxMul_53_ remplaced by FpxxMul


//FpxxAdd_58_ remplaced by FpxxAdd


//FpxxAdd_59_ remplaced by FpxxAdd


//FpxxMul_54_ remplaced by FpxxMul


//FpxxMul_55_ remplaced by FpxxMul


//FpxxMul_56_ remplaced by FpxxMul


//FpxxSub_18_ remplaced by FpxxSub


//FpxxSub_19_ remplaced by FpxxSub


//FpxxSub_20_ remplaced by FpxxSub

module SInt2Fpxx (
      input   p0_vld,
      input  [11:0] op_p0,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  wire [1:0] _zz_28_;
  wire [1:0] _zz_29_;
  wire [1:0] _zz_30_;
  wire [1:0] _zz_31_;
  wire [1:0] _zz_32_;
  wire [1:0] _zz_33_;
  wire [1:0] _zz_34_;
  wire [1:0] _zz_35_;
  wire [1:0] _zz_36_;
  wire [1:0] _zz_37_;
  wire [1:0] _zz_38_;
  wire [11:0] _zz_39_;
  wire [11:0] _zz_40_;
  wire [0:0] _zz_41_;
  wire [0:0] _zz_42_;
  wire [0:0] _zz_43_;
  wire [0:0] _zz_44_;
  wire [0:0] _zz_45_;
  wire [0:0] _zz_46_;
  wire [0:0] _zz_47_;
  wire [0:0] _zz_48_;
  wire [0:0] _zz_49_;
  wire [0:0] _zz_50_;
  wire [0:0] _zz_51_;
  wire [0:0] _zz_52_;
  wire [0:0] _zz_53_;
  wire [0:0] _zz_54_;
  wire [0:0] _zz_55_;
  wire [0:0] _zz_56_;
  wire [0:0] _zz_57_;
  wire [0:0] _zz_58_;
  wire [0:0] _zz_59_;
  wire [0:0] _zz_60_;
  wire [0:0] _zz_61_;
  wire [0:0] _zz_62_;
  wire [1:0] _zz_63_;
  wire [1:0] _zz_64_;
  wire [1:0] _zz_65_;
  wire [0:0] _zz_66_;
  wire [0:0] _zz_67_;
  wire [0:0] _zz_68_;
  wire [0:0] _zz_69_;
  wire [0:0] _zz_70_;
  wire [0:0] _zz_71_;
  wire [0:0] _zz_72_;
  wire [0:0] _zz_73_;
  wire [0:0] _zz_74_;
  wire [0:0] _zz_75_;
  wire [0:0] _zz_76_;
  wire [2:0] _zz_77_;
  wire [2:0] _zz_78_;
  wire [2:0] _zz_79_;
  wire [3:0] _zz_80_;
  wire [5:0] _zz_81_;
  wire [10:0] _zz_82_;
  wire  sign_p0;
  wire [11:0] op_abs_p0;
  reg  p1_vld;
  reg  sign_p1;
  reg [11:0] op_abs_p1;
  wire [11:0] _zz_1_;
  wire [7:0] _zz_2_;
  wire [3:0] _zz_3_;
  wire [1:0] _zz_4_;
  reg [1:0] _zz_5_;
  wire [1:0] _zz_6_;
  reg [1:0] _zz_7_;
  wire [1:0] _zz_8_;
  reg [2:0] _zz_9_;
  wire [3:0] _zz_10_;
  wire [1:0] _zz_11_;
  reg [1:0] _zz_12_;
  wire [1:0] _zz_13_;
  reg [1:0] _zz_14_;
  wire [1:0] _zz_15_;
  reg [2:0] _zz_16_;
  wire [2:0] _zz_17_;
  reg [3:0] _zz_18_;
  wire [3:0] _zz_19_;
  wire [1:0] _zz_20_;
  reg [1:0] _zz_21_;
  wire [1:0] _zz_22_;
  reg [1:0] _zz_23_;
  wire [1:0] _zz_24_;
  reg [2:0] _zz_25_;
  wire [3:0] _zz_26_;
  reg [4:0] _zz_27_;
  wire [3:0] lz_p1;
  reg  p2_vld;
  reg  sign_p2;
  reg [11:0] op_abs_p2;
  reg [3:0] lz_p2;
  wire [11:0] op_adj_p2;
  reg  sign_final_p2;
  reg [5:0] exp_final_p2;
  reg [12:0] mant_final_p2;
  assign _zz_28_ = {_zz_41_[0],_zz_42_[0]};
  assign _zz_29_ = {_zz_45_[0],_zz_46_[0]};
  assign _zz_30_ = {_zz_5_[1],_zz_8_[1]};
  assign _zz_31_ = {_zz_52_[0],_zz_53_[0]};
  assign _zz_32_ = {_zz_56_[0],_zz_57_[0]};
  assign _zz_33_ = {_zz_12_[1],_zz_15_[1]};
  assign _zz_34_ = {_zz_9_[2],_zz_17_[2]};
  assign _zz_35_ = {_zz_66_[0],_zz_67_[0]};
  assign _zz_36_ = {_zz_70_[0],_zz_71_[0]};
  assign _zz_37_ = {_zz_21_[1],_zz_24_[1]};
  assign _zz_38_ = {_zz_18_[3],_zz_26_[3]};
  assign _zz_39_ = (sign_p0 ? _zz_40_ : op_p0);
  assign _zz_40_ = (- op_p0);
  assign _zz_41_ = _zz_4_[1 : 1];
  assign _zz_42_ = _zz_43_;
  assign _zz_43_ = _zz_44_;
  assign _zz_44_ = _zz_4_[0:0];
  assign _zz_45_ = _zz_6_[1 : 1];
  assign _zz_46_ = _zz_47_;
  assign _zz_47_ = _zz_48_;
  assign _zz_48_ = _zz_6_[0:0];
  assign _zz_49_ = _zz_5_[0:0];
  assign _zz_50_ = _zz_8_[0:0];
  assign _zz_51_ = _zz_5_[0:0];
  assign _zz_52_ = _zz_11_[1 : 1];
  assign _zz_53_ = _zz_54_;
  assign _zz_54_ = _zz_55_;
  assign _zz_55_ = _zz_11_[0:0];
  assign _zz_56_ = _zz_13_[1 : 1];
  assign _zz_57_ = _zz_58_;
  assign _zz_58_ = _zz_59_;
  assign _zz_59_ = _zz_13_[0:0];
  assign _zz_60_ = _zz_12_[0:0];
  assign _zz_61_ = _zz_15_[0:0];
  assign _zz_62_ = _zz_12_[0:0];
  assign _zz_63_ = _zz_9_[1:0];
  assign _zz_64_ = _zz_17_[1:0];
  assign _zz_65_ = _zz_9_[1:0];
  assign _zz_66_ = _zz_20_[1 : 1];
  assign _zz_67_ = _zz_68_;
  assign _zz_68_ = _zz_69_;
  assign _zz_69_ = _zz_20_[0:0];
  assign _zz_70_ = _zz_22_[1 : 1];
  assign _zz_71_ = _zz_72_;
  assign _zz_72_ = _zz_73_;
  assign _zz_73_ = _zz_22_[0:0];
  assign _zz_74_ = _zz_21_[0:0];
  assign _zz_75_ = _zz_24_[0:0];
  assign _zz_76_ = _zz_21_[0:0];
  assign _zz_77_ = _zz_18_[2:0];
  assign _zz_78_ = _zz_26_[2:0];
  assign _zz_79_ = _zz_18_[2:0];
  assign _zz_80_ = _zz_27_[3:0];
  assign _zz_81_ = {2'd0, lz_p2};
  assign _zz_82_ = op_adj_p2[10:0];
  assign sign_p0 = op_p0[11];
  assign op_abs_p0 = _zz_39_;
  assign _zz_1_ = (~ op_abs_p1);
  assign _zz_2_ = _zz_1_[11 : 4];
  assign _zz_3_ = _zz_2_[7 : 4];
  assign _zz_4_ = _zz_3_[3 : 2];
  always @ (*) begin
    case(_zz_28_)
      2'b11 : begin
        _zz_5_ = (2'b10);
      end
      2'b10 : begin
        _zz_5_ = (2'b01);
      end
      default : begin
        _zz_5_ = (2'b00);
      end
    endcase
  end

  assign _zz_6_ = _zz_3_[1:0];
  always @ (*) begin
    case(_zz_29_)
      2'b11 : begin
        _zz_7_ = (2'b10);
      end
      2'b10 : begin
        _zz_7_ = (2'b01);
      end
      default : begin
        _zz_7_ = (2'b00);
      end
    endcase
  end

  assign _zz_8_ = _zz_7_;
  always @ (*) begin
    case(_zz_30_)
      2'b11 : begin
        _zz_9_ = {(2'b10),_zz_49_};
      end
      2'b10 : begin
        _zz_9_ = {(2'b01),_zz_50_};
      end
      default : begin
        _zz_9_ = {(2'b00),_zz_51_};
      end
    endcase
  end

  assign _zz_10_ = _zz_2_[3:0];
  assign _zz_11_ = _zz_10_[3 : 2];
  always @ (*) begin
    case(_zz_31_)
      2'b11 : begin
        _zz_12_ = (2'b10);
      end
      2'b10 : begin
        _zz_12_ = (2'b01);
      end
      default : begin
        _zz_12_ = (2'b00);
      end
    endcase
  end

  assign _zz_13_ = _zz_10_[1:0];
  always @ (*) begin
    case(_zz_32_)
      2'b11 : begin
        _zz_14_ = (2'b10);
      end
      2'b10 : begin
        _zz_14_ = (2'b01);
      end
      default : begin
        _zz_14_ = (2'b00);
      end
    endcase
  end

  assign _zz_15_ = _zz_14_;
  always @ (*) begin
    case(_zz_33_)
      2'b11 : begin
        _zz_16_ = {(2'b10),_zz_60_};
      end
      2'b10 : begin
        _zz_16_ = {(2'b01),_zz_61_};
      end
      default : begin
        _zz_16_ = {(2'b00),_zz_62_};
      end
    endcase
  end

  assign _zz_17_ = _zz_16_;
  always @ (*) begin
    case(_zz_34_)
      2'b11 : begin
        _zz_18_ = {(2'b10),_zz_63_};
      end
      2'b10 : begin
        _zz_18_ = {(2'b01),_zz_64_};
      end
      default : begin
        _zz_18_ = {(2'b00),_zz_65_};
      end
    endcase
  end

  assign _zz_19_ = _zz_1_[3:0];
  assign _zz_20_ = _zz_19_[3 : 2];
  always @ (*) begin
    case(_zz_35_)
      2'b11 : begin
        _zz_21_ = (2'b10);
      end
      2'b10 : begin
        _zz_21_ = (2'b01);
      end
      default : begin
        _zz_21_ = (2'b00);
      end
    endcase
  end

  assign _zz_22_ = _zz_19_[1:0];
  always @ (*) begin
    case(_zz_36_)
      2'b11 : begin
        _zz_23_ = (2'b10);
      end
      2'b10 : begin
        _zz_23_ = (2'b01);
      end
      default : begin
        _zz_23_ = (2'b00);
      end
    endcase
  end

  assign _zz_24_ = _zz_23_;
  always @ (*) begin
    case(_zz_37_)
      2'b11 : begin
        _zz_25_ = {(2'b10),_zz_74_};
      end
      2'b10 : begin
        _zz_25_ = {(2'b01),_zz_75_};
      end
      default : begin
        _zz_25_ = {(2'b00),_zz_76_};
      end
    endcase
  end

  assign _zz_26_ = {1'd0, _zz_25_};
  always @ (*) begin
    case(_zz_38_)
      2'b11 : begin
        _zz_27_ = {(2'b10),_zz_77_};
      end
      2'b10 : begin
        _zz_27_ = {(2'b01),_zz_78_};
      end
      default : begin
        _zz_27_ = {(2'b00),_zz_79_};
      end
    endcase
  end

  assign lz_p1 = _zz_80_;
  assign op_adj_p2 = (op_abs_p2 <<< lz_p2);
  always @ (*) begin
    if((op_abs_p2 == (12'b000000000000)))begin
      sign_final_p2 = 1'b0;
      exp_final_p2 = (6'b000000);
      mant_final_p2 = (13'b0000000000000);
    end else begin
      sign_final_p2 = sign_p2;
      exp_final_p2 = ((6'b101010) - _zz_81_);
      mant_final_p2 = {_zz_82_,(2'b00)};
    end
  end

  assign io_result_vld = p2_vld;
  assign io_result_sign = sign_final_p2;
  assign io_result_exp = exp_final_p2;
  assign io_result_mant = mant_final_p2;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
      p2_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
      if(1'b1)begin
        p2_vld <= p1_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      sign_p1 <= sign_p0;
    end
    if(p0_vld)begin
      op_abs_p1 <= op_abs_p0;
    end
    if(p1_vld)begin
      sign_p2 <= sign_p1;
    end
    if(p1_vld)begin
      op_abs_p2 <= op_abs_p1;
    end
    if(p1_vld)begin
      lz_p2 <= lz_p1;
    end
  end

endmodule

module SInt2Fpxx_1_ (
      input   p0_vld,
      input  [10:0] op_p0,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  wire [1:0] _zz_26_;
  wire [1:0] _zz_27_;
  wire [1:0] _zz_28_;
  wire [1:0] _zz_29_;
  wire [1:0] _zz_30_;
  wire [1:0] _zz_31_;
  wire [1:0] _zz_32_;
  wire [1:0] _zz_33_;
  wire [1:0] _zz_34_;
  wire [1:0] _zz_35_;
  wire [10:0] _zz_36_;
  wire [10:0] _zz_37_;
  wire [0:0] _zz_38_;
  wire [0:0] _zz_39_;
  wire [0:0] _zz_40_;
  wire [0:0] _zz_41_;
  wire [0:0] _zz_42_;
  wire [0:0] _zz_43_;
  wire [0:0] _zz_44_;
  wire [0:0] _zz_45_;
  wire [0:0] _zz_46_;
  wire [0:0] _zz_47_;
  wire [0:0] _zz_48_;
  wire [0:0] _zz_49_;
  wire [0:0] _zz_50_;
  wire [0:0] _zz_51_;
  wire [0:0] _zz_52_;
  wire [0:0] _zz_53_;
  wire [0:0] _zz_54_;
  wire [0:0] _zz_55_;
  wire [0:0] _zz_56_;
  wire [0:0] _zz_57_;
  wire [0:0] _zz_58_;
  wire [0:0] _zz_59_;
  wire [1:0] _zz_60_;
  wire [1:0] _zz_61_;
  wire [1:0] _zz_62_;
  wire [0:0] _zz_63_;
  wire [0:0] _zz_64_;
  wire [0:0] _zz_65_;
  wire [0:0] _zz_66_;
  wire [0:0] _zz_67_;
  wire [0:0] _zz_68_;
  wire [0:0] _zz_69_;
  wire [0:0] _zz_70_;
  wire [0:0] _zz_71_;
  wire [2:0] _zz_72_;
  wire [2:0] _zz_73_;
  wire [2:0] _zz_74_;
  wire [3:0] _zz_75_;
  wire [5:0] _zz_76_;
  wire [9:0] _zz_77_;
  wire  sign_p0;
  wire [10:0] op_abs_p0;
  reg  p1_vld;
  reg  sign_p1;
  reg [10:0] op_abs_p1;
  wire [10:0] _zz_1_;
  wire [7:0] _zz_2_;
  wire [3:0] _zz_3_;
  wire [1:0] _zz_4_;
  reg [1:0] _zz_5_;
  wire [1:0] _zz_6_;
  reg [1:0] _zz_7_;
  wire [1:0] _zz_8_;
  reg [2:0] _zz_9_;
  wire [3:0] _zz_10_;
  wire [1:0] _zz_11_;
  reg [1:0] _zz_12_;
  wire [1:0] _zz_13_;
  reg [1:0] _zz_14_;
  wire [1:0] _zz_15_;
  reg [2:0] _zz_16_;
  wire [2:0] _zz_17_;
  reg [3:0] _zz_18_;
  wire [2:0] _zz_19_;
  wire [1:0] _zz_20_;
  reg [1:0] _zz_21_;
  wire [1:0] _zz_22_;
  reg [2:0] _zz_23_;
  wire [3:0] _zz_24_;
  reg [4:0] _zz_25_;
  wire [3:0] lz_p1;
  reg  p2_vld;
  reg  sign_p2;
  reg [10:0] op_abs_p2;
  reg [3:0] lz_p2;
  wire [10:0] op_adj_p2;
  reg  sign_final_p2;
  reg [5:0] exp_final_p2;
  reg [12:0] mant_final_p2;
  assign _zz_26_ = {_zz_38_[0],_zz_39_[0]};
  assign _zz_27_ = {_zz_42_[0],_zz_43_[0]};
  assign _zz_28_ = {_zz_5_[1],_zz_8_[1]};
  assign _zz_29_ = {_zz_49_[0],_zz_50_[0]};
  assign _zz_30_ = {_zz_53_[0],_zz_54_[0]};
  assign _zz_31_ = {_zz_12_[1],_zz_15_[1]};
  assign _zz_32_ = {_zz_9_[2],_zz_17_[2]};
  assign _zz_33_ = {_zz_63_[0],_zz_64_[0]};
  assign _zz_34_ = {_zz_21_[1],_zz_22_[1]};
  assign _zz_35_ = {_zz_18_[3],_zz_24_[3]};
  assign _zz_36_ = (sign_p0 ? _zz_37_ : op_p0);
  assign _zz_37_ = (- op_p0);
  assign _zz_38_ = _zz_4_[1 : 1];
  assign _zz_39_ = _zz_40_;
  assign _zz_40_ = _zz_41_;
  assign _zz_41_ = _zz_4_[0:0];
  assign _zz_42_ = _zz_6_[1 : 1];
  assign _zz_43_ = _zz_44_;
  assign _zz_44_ = _zz_45_;
  assign _zz_45_ = _zz_6_[0:0];
  assign _zz_46_ = _zz_5_[0:0];
  assign _zz_47_ = _zz_8_[0:0];
  assign _zz_48_ = _zz_5_[0:0];
  assign _zz_49_ = _zz_11_[1 : 1];
  assign _zz_50_ = _zz_51_;
  assign _zz_51_ = _zz_52_;
  assign _zz_52_ = _zz_11_[0:0];
  assign _zz_53_ = _zz_13_[1 : 1];
  assign _zz_54_ = _zz_55_;
  assign _zz_55_ = _zz_56_;
  assign _zz_56_ = _zz_13_[0:0];
  assign _zz_57_ = _zz_12_[0:0];
  assign _zz_58_ = _zz_15_[0:0];
  assign _zz_59_ = _zz_12_[0:0];
  assign _zz_60_ = _zz_9_[1:0];
  assign _zz_61_ = _zz_17_[1:0];
  assign _zz_62_ = _zz_9_[1:0];
  assign _zz_63_ = _zz_20_[1 : 1];
  assign _zz_64_ = _zz_65_;
  assign _zz_65_ = _zz_66_;
  assign _zz_66_ = _zz_20_[0:0];
  assign _zz_67_ = _zz_68_;
  assign _zz_68_ = _zz_19_[0:0];
  assign _zz_69_ = _zz_21_[0:0];
  assign _zz_70_ = _zz_22_[0:0];
  assign _zz_71_ = _zz_21_[0:0];
  assign _zz_72_ = _zz_18_[2:0];
  assign _zz_73_ = _zz_24_[2:0];
  assign _zz_74_ = _zz_18_[2:0];
  assign _zz_75_ = _zz_25_[3:0];
  assign _zz_76_ = {2'd0, lz_p2};
  assign _zz_77_ = op_adj_p2[9:0];
  assign sign_p0 = op_p0[10];
  assign op_abs_p0 = _zz_36_;
  assign _zz_1_ = (~ op_abs_p1);
  assign _zz_2_ = _zz_1_[10 : 3];
  assign _zz_3_ = _zz_2_[7 : 4];
  assign _zz_4_ = _zz_3_[3 : 2];
  always @ (*) begin
    case(_zz_26_)
      2'b11 : begin
        _zz_5_ = (2'b10);
      end
      2'b10 : begin
        _zz_5_ = (2'b01);
      end
      default : begin
        _zz_5_ = (2'b00);
      end
    endcase
  end

  assign _zz_6_ = _zz_3_[1:0];
  always @ (*) begin
    case(_zz_27_)
      2'b11 : begin
        _zz_7_ = (2'b10);
      end
      2'b10 : begin
        _zz_7_ = (2'b01);
      end
      default : begin
        _zz_7_ = (2'b00);
      end
    endcase
  end

  assign _zz_8_ = _zz_7_;
  always @ (*) begin
    case(_zz_28_)
      2'b11 : begin
        _zz_9_ = {(2'b10),_zz_46_};
      end
      2'b10 : begin
        _zz_9_ = {(2'b01),_zz_47_};
      end
      default : begin
        _zz_9_ = {(2'b00),_zz_48_};
      end
    endcase
  end

  assign _zz_10_ = _zz_2_[3:0];
  assign _zz_11_ = _zz_10_[3 : 2];
  always @ (*) begin
    case(_zz_29_)
      2'b11 : begin
        _zz_12_ = (2'b10);
      end
      2'b10 : begin
        _zz_12_ = (2'b01);
      end
      default : begin
        _zz_12_ = (2'b00);
      end
    endcase
  end

  assign _zz_13_ = _zz_10_[1:0];
  always @ (*) begin
    case(_zz_30_)
      2'b11 : begin
        _zz_14_ = (2'b10);
      end
      2'b10 : begin
        _zz_14_ = (2'b01);
      end
      default : begin
        _zz_14_ = (2'b00);
      end
    endcase
  end

  assign _zz_15_ = _zz_14_;
  always @ (*) begin
    case(_zz_31_)
      2'b11 : begin
        _zz_16_ = {(2'b10),_zz_57_};
      end
      2'b10 : begin
        _zz_16_ = {(2'b01),_zz_58_};
      end
      default : begin
        _zz_16_ = {(2'b00),_zz_59_};
      end
    endcase
  end

  assign _zz_17_ = _zz_16_;
  always @ (*) begin
    case(_zz_32_)
      2'b11 : begin
        _zz_18_ = {(2'b10),_zz_60_};
      end
      2'b10 : begin
        _zz_18_ = {(2'b01),_zz_61_};
      end
      default : begin
        _zz_18_ = {(2'b00),_zz_62_};
      end
    endcase
  end

  assign _zz_19_ = _zz_1_[2:0];
  assign _zz_20_ = _zz_19_[2 : 1];
  always @ (*) begin
    case(_zz_33_)
      2'b11 : begin
        _zz_21_ = (2'b10);
      end
      2'b10 : begin
        _zz_21_ = (2'b01);
      end
      default : begin
        _zz_21_ = (2'b00);
      end
    endcase
  end

  assign _zz_22_ = {1'd0, _zz_67_};
  always @ (*) begin
    case(_zz_34_)
      2'b11 : begin
        _zz_23_ = {(2'b10),_zz_69_};
      end
      2'b10 : begin
        _zz_23_ = {(2'b01),_zz_70_};
      end
      default : begin
        _zz_23_ = {(2'b00),_zz_71_};
      end
    endcase
  end

  assign _zz_24_ = {1'd0, _zz_23_};
  always @ (*) begin
    case(_zz_35_)
      2'b11 : begin
        _zz_25_ = {(2'b10),_zz_72_};
      end
      2'b10 : begin
        _zz_25_ = {(2'b01),_zz_73_};
      end
      default : begin
        _zz_25_ = {(2'b00),_zz_74_};
      end
    endcase
  end

  assign lz_p1 = _zz_75_;
  assign op_adj_p2 = (op_abs_p2 <<< lz_p2);
  always @ (*) begin
    if((op_abs_p2 == (11'b00000000000)))begin
      sign_final_p2 = 1'b0;
      exp_final_p2 = (6'b000000);
      mant_final_p2 = (13'b0000000000000);
    end else begin
      sign_final_p2 = sign_p2;
      exp_final_p2 = ((6'b101001) - _zz_76_);
      mant_final_p2 = {_zz_77_,(3'b000)};
    end
  end

  assign io_result_vld = p2_vld;
  assign io_result_sign = sign_final_p2;
  assign io_result_exp = exp_final_p2;
  assign io_result_mant = mant_final_p2;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
      p2_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
      if(1'b1)begin
        p2_vld <= p1_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      sign_p1 <= sign_p0;
    end
    if(p0_vld)begin
      op_abs_p1 <= op_abs_p0;
    end
    if(p1_vld)begin
      sign_p2 <= sign_p1;
    end
    if(p1_vld)begin
      op_abs_p2 <= op_abs_p1;
    end
    if(p1_vld)begin
      lz_p2 <= lz_p1;
    end
  end

endmodule


//FpxxMul_57_ remplaced by FpxxMul


//FpxxMul_58_ remplaced by FpxxMul


//FpxxMul_59_ remplaced by FpxxMul


//FpxxMul_60_ remplaced by FpxxMul


//FpxxMul_61_ remplaced by FpxxMul


//FpxxMul_62_ remplaced by FpxxMul


//FpxxSub_21_ remplaced by FpxxSub


//FpxxAdd_60_ remplaced by FpxxAdd


//FpxxMul_63_ remplaced by FpxxMul


//FpxxMul_64_ remplaced by FpxxMul


//FpxxMul_65_ remplaced by FpxxMul


//FpxxMul_66_ remplaced by FpxxMul


//FpxxAdd_61_ remplaced by FpxxAdd


//FpxxSub_22_ remplaced by FpxxSub


//DotProduct_2_ remplaced by DotProduct

module FpxxRSqrt_2_ (
      input   p0_vld,
      input   op_p0_sign,
      input  [5:0] op_p0_exp,
      input  [12:0] op_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  reg [13:0] _zz_1_;
  wire [6:0] _zz_2_;
  wire [6:0] _zz_3_;
  wire [6:0] _zz_4_;
  wire [11:0] _zz_5_;
  wire [14:0] _zz_6_;
  wire [6:0] _zz_7_;
  wire [6:0] _zz_8_;
  wire [6:0] _zz_9_;
  wire [6:0] _zz_10_;
  wire [6:0] _zz_11_;
  wire [6:0] _zz_12_;
  wire [6:0] _zz_13_;
  wire [6:0] _zz_14_;
  wire [6:0] _zz_15_;
  wire  op_zero_p0;
  wire  op_nan_p0;
  wire  op_inf_p0;
  wire [6:0] exp_p0;
  wire  gt_1_p0;
  wire [11:0] rsqrt_addr_p0;
  reg  p1_vld;
  reg  op_zero_p1;
  reg  op_nan_p1;
  reg  op_inf_p1;
  reg [6:0] exp_p1;
  wire [13:0] rsqrt_val_p1;
  wire [1:0] rsqrt_shift_p1;
  wire [11:0] rsqrt_mant_p1;
  wire [6:0] exp_adj_p1;
  reg  sign_final_p1;
  reg [5:0] exp_final_p1;
  reg [12:0] mant_final_p1;
  reg [13:0] rsqrt_table [0:3071];
  assign _zz_2_ = _zz_3_;
  assign _zz_3_ = {1'd0, op_p0_exp};
  assign _zz_4_ = (7'b0011111);
  assign _zz_5_ = (_zz_6_ >>> 3);
  assign _zz_6_ = ({1'd0,{(1'b1),op_p0_mant}} <<< gt_1_p0);
  assign _zz_7_ = ($signed(_zz_8_) - $signed(_zz_12_));
  assign _zz_8_ = (- _zz_9_);
  assign _zz_9_ = ($signed(_zz_10_) >>> 1);
  assign _zz_10_ = ($signed(exp_p1) + $signed(_zz_11_));
  assign _zz_11_ = (7'b0000001);
  assign _zz_12_ = {{5{rsqrt_shift_p1[1]}}, rsqrt_shift_p1};
  assign _zz_13_ = (7'b0011111);
  assign _zz_14_ = (7'b0000000);
  assign _zz_15_ = exp_adj_p1;
  initial begin
    $readmemb("PanoCore.v_toplevel_rt_u_normalize_ray_u_rsqrt_rsqrt_table.bin",rsqrt_table);
  end
  always @ (posedge clk) begin
    if(p0_vld) begin
      _zz_1_ <= rsqrt_table[rsqrt_addr_p0];
    end
  end

  assign op_zero_p0 = (op_p0_exp == (6'b000000));
  assign op_nan_p0 = (((op_p0_exp == (6'b111111)) && (op_p0_mant != (13'b0000000000000))) || op_p0_sign);
  assign op_inf_p0 = ((op_p0_exp == (6'b111111)) && (! (op_p0_mant != (13'b0000000000000))));
  assign exp_p0 = ($signed(_zz_2_) - $signed(_zz_4_));
  assign gt_1_p0 = (! exp_p0[0]);
  assign rsqrt_addr_p0 = (_zz_5_ - (12'b010000000000));
  assign rsqrt_val_p1 = _zz_1_;
  assign rsqrt_shift_p1 = rsqrt_val_p1[1 : 0];
  assign rsqrt_mant_p1 = rsqrt_val_p1[13 : 2];
  assign exp_adj_p1 = ($signed(_zz_7_) + $signed(_zz_13_));
  always @ (*) begin
    if(op_nan_p1)begin
      sign_final_p1 = 1'b0;
      exp_final_p1 = (6'b111111);
      mant_final_p1 = (1'b0 ? (13'b1111111111111) : (13'b0000000000000));
      mant_final_p1[12] = 1'b1;
    end else begin
      if(op_zero_p1)begin
        sign_final_p1 = 1'b0;
        exp_final_p1 = (6'b111111);
        mant_final_p1 = (13'b0000000000000);
      end else begin
        if((op_inf_p1 || ($signed(exp_adj_p1) <= $signed(_zz_14_))))begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = (6'b000000);
          mant_final_p1 = (13'b0000000000000);
        end else begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = _zz_15_[5:0];
          mant_final_p1 = ({1'd0,rsqrt_mant_p1} <<< 1);
        end
      end
    end
  end

  assign io_result_vld = p1_vld;
  assign io_result_sign = sign_final_p1;
  assign io_result_exp = exp_final_p1;
  assign io_result_mant = mant_final_p1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      op_zero_p1 <= op_zero_p0;
    end
    if(p0_vld)begin
      op_nan_p1 <= op_nan_p0;
    end
    if(p0_vld)begin
      op_inf_p1 <= op_inf_p0;
    end
    if(p0_vld)begin
      exp_p1 <= exp_p0;
    end
  end

endmodule


//MulVecScalar_5_ remplaced by MulVecScalar

module SubVecVec (
      input   io_op_vld,
      input   io_op_a_x_sign,
      input  [5:0] io_op_a_x_exp,
      input  [12:0] io_op_a_x_mant,
      input   io_op_a_y_sign,
      input  [5:0] io_op_a_y_exp,
      input  [12:0] io_op_a_y_mant,
      input   io_op_a_z_sign,
      input  [5:0] io_op_a_z_exp,
      input  [12:0] io_op_a_z_mant,
      input   io_op_b_x_sign,
      input  [5:0] io_op_b_x_exp,
      input  [12:0] io_op_b_x_mant,
      input   io_op_b_y_sign,
      input  [5:0] io_op_b_y_exp,
      input  [12:0] io_op_b_y_mant,
      input   io_op_b_z_sign,
      input  [5:0] io_op_b_z_exp,
      input  [12:0] io_op_b_z_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_x_io_result_vld;
  wire  u_x_io_result_sign;
  wire [5:0] u_x_io_result_exp;
  wire [12:0] u_x_io_result_mant;
  wire  u_y_io_result_vld;
  wire  u_y_io_result_sign;
  wire [5:0] u_y_io_result_exp;
  wire [12:0] u_y_io_result_mant;
  wire  u_z_io_result_vld;
  wire  u_z_io_result_sign;
  wire [5:0] u_z_io_result_exp;
  wire [12:0] u_z_io_result_mant;
  FpxxSub u_x ( 
    .io_op_vld(io_op_vld),
    .io_op_a_sign(io_op_a_x_sign),
    .io_op_a_exp(io_op_a_x_exp),
    .io_op_a_mant(io_op_a_x_mant),
    .io_op_b_sign(io_op_b_x_sign),
    .io_op_b_exp(io_op_b_x_exp),
    .io_op_b_mant(io_op_b_x_mant),
    .io_result_vld(u_x_io_result_vld),
    .io_result_sign(u_x_io_result_sign),
    .io_result_exp(u_x_io_result_exp),
    .io_result_mant(u_x_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_y ( 
    .io_op_vld(io_op_vld),
    .io_op_a_sign(io_op_a_y_sign),
    .io_op_a_exp(io_op_a_y_exp),
    .io_op_a_mant(io_op_a_y_mant),
    .io_op_b_sign(io_op_b_y_sign),
    .io_op_b_exp(io_op_b_y_exp),
    .io_op_b_mant(io_op_b_y_mant),
    .io_result_vld(u_y_io_result_vld),
    .io_result_sign(u_y_io_result_sign),
    .io_result_exp(u_y_io_result_exp),
    .io_result_mant(u_y_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_z ( 
    .io_op_vld(io_op_vld),
    .io_op_a_sign(io_op_a_z_sign),
    .io_op_a_exp(io_op_a_z_exp),
    .io_op_a_mant(io_op_a_z_mant),
    .io_op_b_sign(io_op_b_z_sign),
    .io_op_b_exp(io_op_b_z_exp),
    .io_op_b_mant(io_op_b_z_mant),
    .io_result_vld(u_z_io_result_vld),
    .io_result_sign(u_z_io_result_sign),
    .io_result_exp(u_z_io_result_exp),
    .io_result_mant(u_z_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign io_result_vld = u_x_io_result_vld;
  assign io_result_x_sign = u_x_io_result_sign;
  assign io_result_x_exp = u_x_io_result_exp;
  assign io_result_x_mant = u_x_io_result_mant;
  assign io_result_y_sign = u_y_io_result_sign;
  assign io_result_y_exp = u_y_io_result_exp;
  assign io_result_y_mant = u_y_io_result_mant;
  assign io_result_z_sign = u_z_io_result_sign;
  assign io_result_z_exp = u_z_io_result_exp;
  assign io_result_z_mant = u_z_io_result_mant;
endmodule


//DotProduct_3_ remplaced by DotProduct


//DotProduct_4_ remplaced by DotProduct


//FpxxMul_67_ remplaced by FpxxMul


//FpxxSub_23_ remplaced by FpxxSub


//FpxxSub_24_ remplaced by FpxxSub

module FpxxSqrt (
      input   p0_vld,
      input   op_p0_sign,
      input  [5:0] op_p0_exp,
      input  [12:0] op_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  reg [13:0] _zz_1_;
  wire [6:0] _zz_2_;
  wire [6:0] _zz_3_;
  wire [6:0] _zz_4_;
  wire [11:0] _zz_5_;
  wire [14:0] _zz_6_;
  wire [6:0] _zz_7_;
  wire [6:0] _zz_8_;
  wire [2:0] _zz_9_;
  wire [6:0] _zz_10_;
  wire [2:0] _zz_11_;
  wire [6:0] _zz_12_;
  wire [6:0] _zz_13_;
  wire [6:0] _zz_14_;
  wire  op_zero_p0;
  wire  op_nan_p0;
  wire  op_inf_p0;
  wire [6:0] exp_p0;
  wire  gt_1_p0;
  wire [11:0] sqrt_addr_p0;
  reg  p1_vld;
  reg  op_zero_p1;
  reg  op_nan_p1;
  reg  op_inf_p1;
  reg [6:0] exp_p1;
  wire [13:0] sqrt_val_p1;
  wire [1:0] sqrt_shift_p1;
  wire [11:0] sqrt_mant_p1;
  wire [6:0] exp_adj_p1;
  reg  sign_final_p1;
  reg [5:0] exp_final_p1;
  reg [12:0] mant_final_p1;
  reg [13:0] sqrt_table [0:3071];
  assign _zz_2_ = _zz_3_;
  assign _zz_3_ = {1'd0, op_p0_exp};
  assign _zz_4_ = (7'b0011111);
  assign _zz_5_ = (_zz_6_ >>> 3);
  assign _zz_6_ = ({1'd0,{(1'b1),op_p0_mant}} <<< gt_1_p0);
  assign _zz_7_ = ($signed(_zz_8_) - $signed(_zz_10_));
  assign _zz_8_ = ($signed(exp_p1) >>> 1);
  assign _zz_9_ = _zz_11_;
  assign _zz_10_ = {{4{_zz_9_[2]}}, _zz_9_};
  assign _zz_11_ = {1'd0, sqrt_shift_p1};
  assign _zz_12_ = (7'b0011111);
  assign _zz_13_ = (7'b0000000);
  assign _zz_14_ = exp_adj_p1;
  initial begin
    $readmemb("PanoCore.v_toplevel_rt_u_sphere_intersect_u_thc_sqrt_table.bin",sqrt_table);
  end
  always @ (posedge clk) begin
    if(p0_vld) begin
      _zz_1_ <= sqrt_table[sqrt_addr_p0];
    end
  end

  assign op_zero_p0 = (op_p0_exp == (6'b000000));
  assign op_nan_p0 = (((op_p0_exp == (6'b111111)) && (op_p0_mant != (13'b0000000000000))) || op_p0_sign);
  assign op_inf_p0 = (((op_p0_exp == (6'b111111)) && (! (op_p0_mant != (13'b0000000000000)))) && (! op_p0_sign));
  assign exp_p0 = ($signed(_zz_2_) - $signed(_zz_4_));
  assign gt_1_p0 = (! exp_p0[0]);
  assign sqrt_addr_p0 = (_zz_5_ - (12'b010000000000));
  assign sqrt_val_p1 = _zz_1_;
  assign sqrt_shift_p1 = sqrt_val_p1[1 : 0];
  assign sqrt_mant_p1 = sqrt_val_p1[13 : 2];
  assign exp_adj_p1 = ($signed(_zz_7_) + $signed(_zz_12_));
  always @ (*) begin
    if(op_nan_p1)begin
      sign_final_p1 = 1'b0;
      exp_final_p1 = (6'b111111);
      mant_final_p1 = (1'b0 ? (13'b1111111111111) : (13'b0000000000000));
      mant_final_p1[12] = 1'b1;
    end else begin
      if(op_inf_p1)begin
        sign_final_p1 = 1'b0;
        exp_final_p1 = (6'b111111);
        mant_final_p1 = (13'b0000000000000);
      end else begin
        if((($signed(exp_adj_p1) <= $signed(_zz_13_)) || op_zero_p1))begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = (6'b000000);
          mant_final_p1 = (13'b0000000000000);
        end else begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = _zz_14_[5:0];
          mant_final_p1 = ({1'd0,sqrt_mant_p1} <<< 1);
        end
      end
    end
  end

  assign io_result_vld = p1_vld;
  assign io_result_sign = sign_final_p1;
  assign io_result_exp = exp_final_p1;
  assign io_result_mant = mant_final_p1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      op_zero_p1 <= op_zero_p0;
    end
    if(p0_vld)begin
      op_nan_p1 <= op_nan_p0;
    end
    if(p0_vld)begin
      op_inf_p1 <= op_inf_p0;
    end
    if(p0_vld)begin
      exp_p1 <= exp_p0;
    end
  end

endmodule


//FpxxSub_25_ remplaced by FpxxSub


//FpxxAdd_62_ remplaced by FpxxAdd

module Intersection (
      input   io_op_vld,
      input   io_ray_origin_x_sign,
      input  [5:0] io_ray_origin_x_exp,
      input  [12:0] io_ray_origin_x_mant,
      input   io_ray_origin_y_sign,
      input  [5:0] io_ray_origin_y_exp,
      input  [12:0] io_ray_origin_y_mant,
      input   io_ray_origin_z_sign,
      input  [5:0] io_ray_origin_z_exp,
      input  [12:0] io_ray_origin_z_mant,
      input   io_ray_dir_x_sign,
      input  [5:0] io_ray_dir_x_exp,
      input  [12:0] io_ray_dir_x_mant,
      input   io_ray_dir_y_sign,
      input  [5:0] io_ray_dir_y_exp,
      input  [12:0] io_ray_dir_y_mant,
      input   io_ray_dir_z_sign,
      input  [5:0] io_ray_dir_z_exp,
      input  [12:0] io_ray_dir_z_mant,
      input   io_t_sign,
      input  [5:0] io_t_exp,
      input  [12:0] io_t_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_mul_dir_t_io_result_vld;
  wire  u_mul_dir_t_io_result_x_sign;
  wire [5:0] u_mul_dir_t_io_result_x_exp;
  wire [12:0] u_mul_dir_t_io_result_x_mant;
  wire  u_mul_dir_t_io_result_y_sign;
  wire [5:0] u_mul_dir_t_io_result_y_exp;
  wire [12:0] u_mul_dir_t_io_result_y_mant;
  wire  u_mul_dir_t_io_result_z_sign;
  wire [5:0] u_mul_dir_t_io_result_z_exp;
  wire [12:0] u_mul_dir_t_io_result_z_mant;
  wire  u_add_origin_dir_mul_t_io_result_vld;
  wire  u_add_origin_dir_mul_t_io_result_x_sign;
  wire [5:0] u_add_origin_dir_mul_t_io_result_x_exp;
  wire [12:0] u_add_origin_dir_mul_t_io_result_x_mant;
  wire  u_add_origin_dir_mul_t_io_result_y_sign;
  wire [5:0] u_add_origin_dir_mul_t_io_result_y_exp;
  wire [12:0] u_add_origin_dir_mul_t_io_result_y_mant;
  wire  u_add_origin_dir_mul_t_io_result_z_sign;
  wire [5:0] u_add_origin_dir_mul_t_io_result_z_exp;
  wire [12:0] u_add_origin_dir_mul_t_io_result_z_mant;
  wire  dir_mul_t_vld;
  wire  dir_mul_t_x_sign;
  wire [5:0] dir_mul_t_x_exp;
  wire [12:0] dir_mul_t_x_mant;
  wire  dir_mul_t_y_sign;
  wire [5:0] dir_mul_t_y_exp;
  wire [12:0] dir_mul_t_y_mant;
  wire  dir_mul_t_z_sign;
  wire [5:0] dir_mul_t_z_exp;
  wire [12:0] dir_mul_t_z_mant;
  reg  io_ray_origin_delay_1_x_sign;
  reg [5:0] io_ray_origin_delay_1_x_exp;
  reg [12:0] io_ray_origin_delay_1_x_mant;
  reg  io_ray_origin_delay_1_y_sign;
  reg [5:0] io_ray_origin_delay_1_y_exp;
  reg [12:0] io_ray_origin_delay_1_y_mant;
  reg  io_ray_origin_delay_1_z_sign;
  reg [5:0] io_ray_origin_delay_1_z_exp;
  reg [12:0] io_ray_origin_delay_1_z_mant;
  reg  origin_delayed_x_sign;
  reg [5:0] origin_delayed_x_exp;
  reg [12:0] origin_delayed_x_mant;
  reg  origin_delayed_y_sign;
  reg [5:0] origin_delayed_y_exp;
  reg [12:0] origin_delayed_y_mant;
  reg  origin_delayed_z_sign;
  reg [5:0] origin_delayed_z_exp;
  reg [12:0] origin_delayed_z_mant;
  wire  intersection_vld;
  wire  intersection_x_sign;
  wire [5:0] intersection_x_exp;
  wire [12:0] intersection_x_mant;
  wire  intersection_y_sign;
  wire [5:0] intersection_y_exp;
  wire [12:0] intersection_y_mant;
  wire  intersection_z_sign;
  wire [5:0] intersection_z_exp;
  wire [12:0] intersection_z_mant;
  MulVecScalar u_mul_dir_t ( 
    .io_op_vld(io_op_vld),
    .io_op_vec_x_sign(io_ray_dir_x_sign),
    .io_op_vec_x_exp(io_ray_dir_x_exp),
    .io_op_vec_x_mant(io_ray_dir_x_mant),
    .io_op_vec_y_sign(io_ray_dir_y_sign),
    .io_op_vec_y_exp(io_ray_dir_y_exp),
    .io_op_vec_y_mant(io_ray_dir_y_mant),
    .io_op_vec_z_sign(io_ray_dir_z_sign),
    .io_op_vec_z_exp(io_ray_dir_z_exp),
    .io_op_vec_z_mant(io_ray_dir_z_mant),
    .io_op_scalar_sign(io_t_sign),
    .io_op_scalar_exp(io_t_exp),
    .io_op_scalar_mant(io_t_mant),
    .io_result_vld(u_mul_dir_t_io_result_vld),
    .io_result_x_sign(u_mul_dir_t_io_result_x_sign),
    .io_result_x_exp(u_mul_dir_t_io_result_x_exp),
    .io_result_x_mant(u_mul_dir_t_io_result_x_mant),
    .io_result_y_sign(u_mul_dir_t_io_result_y_sign),
    .io_result_y_exp(u_mul_dir_t_io_result_y_exp),
    .io_result_y_mant(u_mul_dir_t_io_result_y_mant),
    .io_result_z_sign(u_mul_dir_t_io_result_z_sign),
    .io_result_z_exp(u_mul_dir_t_io_result_z_exp),
    .io_result_z_mant(u_mul_dir_t_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  AddVecVec u_add_origin_dir_mul_t ( 
    .io_op_vld(dir_mul_t_vld),
    .io_op_a_x_sign(dir_mul_t_x_sign),
    .io_op_a_x_exp(dir_mul_t_x_exp),
    .io_op_a_x_mant(dir_mul_t_x_mant),
    .io_op_a_y_sign(dir_mul_t_y_sign),
    .io_op_a_y_exp(dir_mul_t_y_exp),
    .io_op_a_y_mant(dir_mul_t_y_mant),
    .io_op_a_z_sign(dir_mul_t_z_sign),
    .io_op_a_z_exp(dir_mul_t_z_exp),
    .io_op_a_z_mant(dir_mul_t_z_mant),
    .io_op_b_x_sign(origin_delayed_x_sign),
    .io_op_b_x_exp(origin_delayed_x_exp),
    .io_op_b_x_mant(origin_delayed_x_mant),
    .io_op_b_y_sign(origin_delayed_y_sign),
    .io_op_b_y_exp(origin_delayed_y_exp),
    .io_op_b_y_mant(origin_delayed_y_mant),
    .io_op_b_z_sign(origin_delayed_z_sign),
    .io_op_b_z_exp(origin_delayed_z_exp),
    .io_op_b_z_mant(origin_delayed_z_mant),
    .io_result_vld(u_add_origin_dir_mul_t_io_result_vld),
    .io_result_x_sign(u_add_origin_dir_mul_t_io_result_x_sign),
    .io_result_x_exp(u_add_origin_dir_mul_t_io_result_x_exp),
    .io_result_x_mant(u_add_origin_dir_mul_t_io_result_x_mant),
    .io_result_y_sign(u_add_origin_dir_mul_t_io_result_y_sign),
    .io_result_y_exp(u_add_origin_dir_mul_t_io_result_y_exp),
    .io_result_y_mant(u_add_origin_dir_mul_t_io_result_y_mant),
    .io_result_z_sign(u_add_origin_dir_mul_t_io_result_z_sign),
    .io_result_z_exp(u_add_origin_dir_mul_t_io_result_z_exp),
    .io_result_z_mant(u_add_origin_dir_mul_t_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign dir_mul_t_vld = u_mul_dir_t_io_result_vld;
  assign dir_mul_t_x_sign = u_mul_dir_t_io_result_x_sign;
  assign dir_mul_t_x_exp = u_mul_dir_t_io_result_x_exp;
  assign dir_mul_t_x_mant = u_mul_dir_t_io_result_x_mant;
  assign dir_mul_t_y_sign = u_mul_dir_t_io_result_y_sign;
  assign dir_mul_t_y_exp = u_mul_dir_t_io_result_y_exp;
  assign dir_mul_t_y_mant = u_mul_dir_t_io_result_y_mant;
  assign dir_mul_t_z_sign = u_mul_dir_t_io_result_z_sign;
  assign dir_mul_t_z_exp = u_mul_dir_t_io_result_z_exp;
  assign dir_mul_t_z_mant = u_mul_dir_t_io_result_z_mant;
  assign intersection_vld = u_add_origin_dir_mul_t_io_result_vld;
  assign intersection_x_sign = u_add_origin_dir_mul_t_io_result_x_sign;
  assign intersection_x_exp = u_add_origin_dir_mul_t_io_result_x_exp;
  assign intersection_x_mant = u_add_origin_dir_mul_t_io_result_x_mant;
  assign intersection_y_sign = u_add_origin_dir_mul_t_io_result_y_sign;
  assign intersection_y_exp = u_add_origin_dir_mul_t_io_result_y_exp;
  assign intersection_y_mant = u_add_origin_dir_mul_t_io_result_y_mant;
  assign intersection_z_sign = u_add_origin_dir_mul_t_io_result_z_sign;
  assign intersection_z_exp = u_add_origin_dir_mul_t_io_result_z_exp;
  assign intersection_z_mant = u_add_origin_dir_mul_t_io_result_z_mant;
  assign io_result_vld = intersection_vld;
  assign io_result_x_sign = intersection_x_sign;
  assign io_result_x_exp = intersection_x_exp;
  assign io_result_x_mant = intersection_x_mant;
  assign io_result_y_sign = intersection_y_sign;
  assign io_result_y_exp = intersection_y_exp;
  assign io_result_y_mant = intersection_y_mant;
  assign io_result_z_sign = intersection_z_sign;
  assign io_result_z_exp = intersection_z_exp;
  assign io_result_z_mant = intersection_z_mant;
  always @ (posedge clk) begin
    io_ray_origin_delay_1_x_sign <= io_ray_origin_x_sign;
    io_ray_origin_delay_1_x_exp <= io_ray_origin_x_exp;
    io_ray_origin_delay_1_x_mant <= io_ray_origin_x_mant;
    io_ray_origin_delay_1_y_sign <= io_ray_origin_y_sign;
    io_ray_origin_delay_1_y_exp <= io_ray_origin_y_exp;
    io_ray_origin_delay_1_y_mant <= io_ray_origin_y_mant;
    io_ray_origin_delay_1_z_sign <= io_ray_origin_z_sign;
    io_ray_origin_delay_1_z_exp <= io_ray_origin_z_exp;
    io_ray_origin_delay_1_z_mant <= io_ray_origin_z_mant;
    origin_delayed_x_sign <= io_ray_origin_delay_1_x_sign;
    origin_delayed_x_exp <= io_ray_origin_delay_1_x_exp;
    origin_delayed_x_mant <= io_ray_origin_delay_1_x_mant;
    origin_delayed_y_sign <= io_ray_origin_delay_1_y_sign;
    origin_delayed_y_exp <= io_ray_origin_delay_1_y_exp;
    origin_delayed_y_mant <= io_ray_origin_delay_1_y_mant;
    origin_delayed_z_sign <= io_ray_origin_delay_1_z_sign;
    origin_delayed_z_exp <= io_ray_origin_delay_1_z_exp;
    origin_delayed_z_mant <= io_ray_origin_delay_1_z_mant;
  end

endmodule


//SubVecVec_1_ remplaced by SubVecVec

module Normalize (
      input   io_op_vld,
      input   io_op_x_sign,
      input  [5:0] io_op_x_exp,
      input  [12:0] io_op_x_mant,
      input   io_op_y_sign,
      input  [5:0] io_op_y_exp,
      input  [12:0] io_op_y_mant,
      input   io_op_z_sign,
      input  [5:0] io_op_z_exp,
      input  [12:0] io_op_z_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_dot_io_result_vld;
  wire  u_dot_io_result_sign;
  wire [5:0] u_dot_io_result_exp;
  wire [12:0] u_dot_io_result_mant;
  wire  u_rsqrt_io_result_vld;
  wire  u_rsqrt_io_result_sign;
  wire [5:0] u_rsqrt_io_result_exp;
  wire [12:0] u_rsqrt_io_result_mant;
  wire  u_vec_adj_io_result_vld;
  wire  u_vec_adj_io_result_x_sign;
  wire [5:0] u_vec_adj_io_result_x_exp;
  wire [12:0] u_vec_adj_io_result_x_mant;
  wire  u_vec_adj_io_result_y_sign;
  wire [5:0] u_vec_adj_io_result_y_exp;
  wire [12:0] u_vec_adj_io_result_y_mant;
  wire  u_vec_adj_io_result_z_sign;
  wire [5:0] u_vec_adj_io_result_z_exp;
  wire [12:0] u_vec_adj_io_result_z_mant;
  wire  vec_dot_vld;
  wire  vec_dot_sign;
  wire [5:0] vec_dot_exp;
  wire [12:0] vec_dot_mant;
  wire  denom_vld;
  wire  denom_sign;
  wire [5:0] denom_exp;
  wire [12:0] denom_mant;
  reg  io_op_delay_1_x_sign;
  reg [5:0] io_op_delay_1_x_exp;
  reg [12:0] io_op_delay_1_x_mant;
  reg  io_op_delay_1_y_sign;
  reg [5:0] io_op_delay_1_y_exp;
  reg [12:0] io_op_delay_1_y_mant;
  reg  io_op_delay_1_z_sign;
  reg [5:0] io_op_delay_1_z_exp;
  reg [12:0] io_op_delay_1_z_mant;
  reg  io_op_delay_2_x_sign;
  reg [5:0] io_op_delay_2_x_exp;
  reg [12:0] io_op_delay_2_x_mant;
  reg  io_op_delay_2_y_sign;
  reg [5:0] io_op_delay_2_y_exp;
  reg [12:0] io_op_delay_2_y_mant;
  reg  io_op_delay_2_z_sign;
  reg [5:0] io_op_delay_2_z_exp;
  reg [12:0] io_op_delay_2_z_mant;
  reg  io_op_delay_3_x_sign;
  reg [5:0] io_op_delay_3_x_exp;
  reg [12:0] io_op_delay_3_x_mant;
  reg  io_op_delay_3_y_sign;
  reg [5:0] io_op_delay_3_y_exp;
  reg [12:0] io_op_delay_3_y_mant;
  reg  io_op_delay_3_z_sign;
  reg [5:0] io_op_delay_3_z_exp;
  reg [12:0] io_op_delay_3_z_mant;
  reg  io_op_delay_4_x_sign;
  reg [5:0] io_op_delay_4_x_exp;
  reg [12:0] io_op_delay_4_x_mant;
  reg  io_op_delay_4_y_sign;
  reg [5:0] io_op_delay_4_y_exp;
  reg [12:0] io_op_delay_4_y_mant;
  reg  io_op_delay_4_z_sign;
  reg [5:0] io_op_delay_4_z_exp;
  reg [12:0] io_op_delay_4_z_mant;
  reg  io_op_delay_5_x_sign;
  reg [5:0] io_op_delay_5_x_exp;
  reg [12:0] io_op_delay_5_x_mant;
  reg  io_op_delay_5_y_sign;
  reg [5:0] io_op_delay_5_y_exp;
  reg [12:0] io_op_delay_5_y_mant;
  reg  io_op_delay_5_z_sign;
  reg [5:0] io_op_delay_5_z_exp;
  reg [12:0] io_op_delay_5_z_mant;
  reg  io_op_delay_6_x_sign;
  reg [5:0] io_op_delay_6_x_exp;
  reg [12:0] io_op_delay_6_x_mant;
  reg  io_op_delay_6_y_sign;
  reg [5:0] io_op_delay_6_y_exp;
  reg [12:0] io_op_delay_6_y_mant;
  reg  io_op_delay_6_z_sign;
  reg [5:0] io_op_delay_6_z_exp;
  reg [12:0] io_op_delay_6_z_mant;
  reg  op_delayed_x_sign;
  reg [5:0] op_delayed_x_exp;
  reg [12:0] op_delayed_x_mant;
  reg  op_delayed_y_sign;
  reg [5:0] op_delayed_y_exp;
  reg [12:0] op_delayed_y_mant;
  reg  op_delayed_z_sign;
  reg [5:0] op_delayed_z_exp;
  reg [12:0] op_delayed_z_mant;
  DotProduct u_dot ( 
    .io_op_vld(io_op_vld),
    .io_op_a_x_sign(io_op_x_sign),
    .io_op_a_x_exp(io_op_x_exp),
    .io_op_a_x_mant(io_op_x_mant),
    .io_op_a_y_sign(io_op_y_sign),
    .io_op_a_y_exp(io_op_y_exp),
    .io_op_a_y_mant(io_op_y_mant),
    .io_op_a_z_sign(io_op_z_sign),
    .io_op_a_z_exp(io_op_z_exp),
    .io_op_a_z_mant(io_op_z_mant),
    .io_op_b_x_sign(io_op_x_sign),
    .io_op_b_x_exp(io_op_x_exp),
    .io_op_b_x_mant(io_op_x_mant),
    .io_op_b_y_sign(io_op_y_sign),
    .io_op_b_y_exp(io_op_y_exp),
    .io_op_b_y_mant(io_op_y_mant),
    .io_op_b_z_sign(io_op_z_sign),
    .io_op_b_z_exp(io_op_z_exp),
    .io_op_b_z_mant(io_op_z_mant),
    .io_result_vld(u_dot_io_result_vld),
    .io_result_sign(u_dot_io_result_sign),
    .io_result_exp(u_dot_io_result_exp),
    .io_result_mant(u_dot_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxRSqrt u_rsqrt ( 
    .p0_vld(vec_dot_vld),
    .op_p0_sign(vec_dot_sign),
    .op_p0_exp(vec_dot_exp),
    .op_p0_mant(vec_dot_mant),
    .io_result_vld(u_rsqrt_io_result_vld),
    .io_result_sign(u_rsqrt_io_result_sign),
    .io_result_exp(u_rsqrt_io_result_exp),
    .io_result_mant(u_rsqrt_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  MulVecScalar u_vec_adj ( 
    .io_op_vld(denom_vld),
    .io_op_vec_x_sign(op_delayed_x_sign),
    .io_op_vec_x_exp(op_delayed_x_exp),
    .io_op_vec_x_mant(op_delayed_x_mant),
    .io_op_vec_y_sign(op_delayed_y_sign),
    .io_op_vec_y_exp(op_delayed_y_exp),
    .io_op_vec_y_mant(op_delayed_y_mant),
    .io_op_vec_z_sign(op_delayed_z_sign),
    .io_op_vec_z_exp(op_delayed_z_exp),
    .io_op_vec_z_mant(op_delayed_z_mant),
    .io_op_scalar_sign(denom_sign),
    .io_op_scalar_exp(denom_exp),
    .io_op_scalar_mant(denom_mant),
    .io_result_vld(u_vec_adj_io_result_vld),
    .io_result_x_sign(u_vec_adj_io_result_x_sign),
    .io_result_x_exp(u_vec_adj_io_result_x_exp),
    .io_result_x_mant(u_vec_adj_io_result_x_mant),
    .io_result_y_sign(u_vec_adj_io_result_y_sign),
    .io_result_y_exp(u_vec_adj_io_result_y_exp),
    .io_result_y_mant(u_vec_adj_io_result_y_mant),
    .io_result_z_sign(u_vec_adj_io_result_z_sign),
    .io_result_z_exp(u_vec_adj_io_result_z_exp),
    .io_result_z_mant(u_vec_adj_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign vec_dot_vld = u_dot_io_result_vld;
  assign vec_dot_sign = u_dot_io_result_sign;
  assign vec_dot_exp = u_dot_io_result_exp;
  assign vec_dot_mant = u_dot_io_result_mant;
  assign denom_vld = u_rsqrt_io_result_vld;
  assign denom_sign = u_rsqrt_io_result_sign;
  assign denom_exp = u_rsqrt_io_result_exp;
  assign denom_mant = u_rsqrt_io_result_mant;
  assign io_result_vld = u_vec_adj_io_result_vld;
  assign io_result_x_sign = u_vec_adj_io_result_x_sign;
  assign io_result_x_exp = u_vec_adj_io_result_x_exp;
  assign io_result_x_mant = u_vec_adj_io_result_x_mant;
  assign io_result_y_sign = u_vec_adj_io_result_y_sign;
  assign io_result_y_exp = u_vec_adj_io_result_y_exp;
  assign io_result_y_mant = u_vec_adj_io_result_y_mant;
  assign io_result_z_sign = u_vec_adj_io_result_z_sign;
  assign io_result_z_exp = u_vec_adj_io_result_z_exp;
  assign io_result_z_mant = u_vec_adj_io_result_z_mant;
  always @ (posedge clk) begin
    io_op_delay_1_x_sign <= io_op_x_sign;
    io_op_delay_1_x_exp <= io_op_x_exp;
    io_op_delay_1_x_mant <= io_op_x_mant;
    io_op_delay_1_y_sign <= io_op_y_sign;
    io_op_delay_1_y_exp <= io_op_y_exp;
    io_op_delay_1_y_mant <= io_op_y_mant;
    io_op_delay_1_z_sign <= io_op_z_sign;
    io_op_delay_1_z_exp <= io_op_z_exp;
    io_op_delay_1_z_mant <= io_op_z_mant;
    io_op_delay_2_x_sign <= io_op_delay_1_x_sign;
    io_op_delay_2_x_exp <= io_op_delay_1_x_exp;
    io_op_delay_2_x_mant <= io_op_delay_1_x_mant;
    io_op_delay_2_y_sign <= io_op_delay_1_y_sign;
    io_op_delay_2_y_exp <= io_op_delay_1_y_exp;
    io_op_delay_2_y_mant <= io_op_delay_1_y_mant;
    io_op_delay_2_z_sign <= io_op_delay_1_z_sign;
    io_op_delay_2_z_exp <= io_op_delay_1_z_exp;
    io_op_delay_2_z_mant <= io_op_delay_1_z_mant;
    io_op_delay_3_x_sign <= io_op_delay_2_x_sign;
    io_op_delay_3_x_exp <= io_op_delay_2_x_exp;
    io_op_delay_3_x_mant <= io_op_delay_2_x_mant;
    io_op_delay_3_y_sign <= io_op_delay_2_y_sign;
    io_op_delay_3_y_exp <= io_op_delay_2_y_exp;
    io_op_delay_3_y_mant <= io_op_delay_2_y_mant;
    io_op_delay_3_z_sign <= io_op_delay_2_z_sign;
    io_op_delay_3_z_exp <= io_op_delay_2_z_exp;
    io_op_delay_3_z_mant <= io_op_delay_2_z_mant;
    io_op_delay_4_x_sign <= io_op_delay_3_x_sign;
    io_op_delay_4_x_exp <= io_op_delay_3_x_exp;
    io_op_delay_4_x_mant <= io_op_delay_3_x_mant;
    io_op_delay_4_y_sign <= io_op_delay_3_y_sign;
    io_op_delay_4_y_exp <= io_op_delay_3_y_exp;
    io_op_delay_4_y_mant <= io_op_delay_3_y_mant;
    io_op_delay_4_z_sign <= io_op_delay_3_z_sign;
    io_op_delay_4_z_exp <= io_op_delay_3_z_exp;
    io_op_delay_4_z_mant <= io_op_delay_3_z_mant;
    io_op_delay_5_x_sign <= io_op_delay_4_x_sign;
    io_op_delay_5_x_exp <= io_op_delay_4_x_exp;
    io_op_delay_5_x_mant <= io_op_delay_4_x_mant;
    io_op_delay_5_y_sign <= io_op_delay_4_y_sign;
    io_op_delay_5_y_exp <= io_op_delay_4_y_exp;
    io_op_delay_5_y_mant <= io_op_delay_4_y_mant;
    io_op_delay_5_z_sign <= io_op_delay_4_z_sign;
    io_op_delay_5_z_exp <= io_op_delay_4_z_exp;
    io_op_delay_5_z_mant <= io_op_delay_4_z_mant;
    io_op_delay_6_x_sign <= io_op_delay_5_x_sign;
    io_op_delay_6_x_exp <= io_op_delay_5_x_exp;
    io_op_delay_6_x_mant <= io_op_delay_5_x_mant;
    io_op_delay_6_y_sign <= io_op_delay_5_y_sign;
    io_op_delay_6_y_exp <= io_op_delay_5_y_exp;
    io_op_delay_6_y_mant <= io_op_delay_5_y_mant;
    io_op_delay_6_z_sign <= io_op_delay_5_z_sign;
    io_op_delay_6_z_exp <= io_op_delay_5_z_exp;
    io_op_delay_6_z_mant <= io_op_delay_5_z_mant;
    op_delayed_x_sign <= io_op_delay_6_x_sign;
    op_delayed_x_exp <= io_op_delay_6_x_exp;
    op_delayed_x_mant <= io_op_delay_6_x_mant;
    op_delayed_y_sign <= io_op_delay_6_y_sign;
    op_delayed_y_exp <= io_op_delay_6_y_exp;
    op_delayed_y_mant <= io_op_delay_6_y_mant;
    op_delayed_z_sign <= io_op_delay_6_z_sign;
    op_delayed_z_exp <= io_op_delay_6_z_exp;
    op_delayed_z_mant <= io_op_delay_6_z_mant;
  end

endmodule


//DotProduct_5_ remplaced by DotProduct


//MulVecScalar_6_ remplaced by MulVecScalar


//SubVecVec_2_ remplaced by SubVecVec


//DotProduct_6_ remplaced by DotProduct


//SubVecVec_3_ remplaced by SubVecVec


//DotProduct_7_ remplaced by DotProduct

module FpxxDiv (
      input   p0_vld,
      input   op_a_p0_sign,
      input  [5:0] op_a_p0_exp,
      input  [12:0] op_a_p0_mant,
      input   op_b_p0_sign,
      input  [5:0] op_b_p0_exp,
      input  [12:0] op_b_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  reg [15:0] _zz_1_;
  wire [13:0] _zz_2_;
  wire [5:0] _zz_3_;
  wire [6:0] _zz_4_;
  wire [6:0] _zz_5_;
  wire [6:0] _zz_6_;
  wire [6:0] _zz_7_;
  wire [7:0] _zz_8_;
  wire [7:0] _zz_9_;
  wire [7:0] _zz_10_;
  wire [7:0] _zz_11_;
  wire [7:0] _zz_12_;
  wire [16:0] _zz_13_;
  wire [7:0] _zz_14_;
  wire [7:0] _zz_15_;
  wire [7:0] _zz_16_;
  wire [5:0] _zz_17_;
  wire [13:0] yh_p0;
  wire [13:0] yl_p0;
  wire [13:0] yh_m_yl_p0;
  wire [6:0] div_addr_p0;
  wire [6:0] exp_p0;
  wire  sign_p0;
  wire  op_a_zero_p0;
  wire  op_b_zero_p0;
  wire  op_a_inf_p0;
  wire  op_b_inf_p0;
  wire  op_nan_p0;
  wire [6:0] expBoundary;
  wire [1:0] recip_exp_p0;
  reg  p1_vld;
  reg [13:0] yh_m_yl_p1;
  reg [12:0] mant_a_p1;
  reg [6:0] exp_p1;
  reg  sign_p1;
  reg  op_a_zero_p1;
  reg  op_b_zero_p1;
  reg  op_nan_p1;
  reg [1:0] recip_exp_p1;
  wire [15:0] div_val_p1;
  wire [16:0] recip_yh2_p1;
  wire [7:0] exp_full_p1;
  reg  p2_vld;
  reg [13:0] yh_m_yl_p2;
  reg [12:0] mant_a_p2;
  reg  sign_p2;
  reg [16:0] recip_yh2_p2;
  reg [7:0] exp_full_p2;
  reg  op_a_zero_p2;
  reg  op_b_zero_p2;
  reg  op_nan_p2;
  wire [13:0] mant_a_full_p2;
  wire [27:0] x_mul_yhyl_full_p2;
  wire [16:0] x_mul_yhyl_p2;
  reg  p3_vld;
  reg  sign_p3;
  reg [16:0] x_mul_yhyl_p3;
  reg [16:0] recip_yh2_p3;
  reg [7:0] exp_full_p3;
  reg  op_a_zero_p3;
  reg  op_b_zero_p3;
  reg  op_nan_p3;
  reg  p4_vld;
  reg  sign_p4;
  reg [16:0] x_mul_yhyl_p4;
  reg [16:0] recip_yh2_p4;
  reg [7:0] exp_full_p4;
  reg  op_a_zero_p4;
  reg  op_b_zero_p4;
  reg  op_nan_p4;
  wire [33:0] div_full_p4;
  wire [16:0] div_p4;
  reg  p5_vld;
  reg  sign_p5;
  reg [16:0] div_p5;
  reg [7:0] exp_full_p5;
  reg  op_a_zero_p5;
  reg  op_b_zero_p5;
  reg  op_nan_p5;
  wire [12:0] div_adj_p5;
  wire [7:0] exp_adj_p5;
  reg [1:0] shift_adj_p5;
  reg [2:0] exp_delta_p5;
  reg  p6_vld;
  reg  sign_p6;
  reg [12:0] div_adj_p6;
  reg [7:0] exp_adj_p6;
  reg  op_a_zero_p6;
  reg  op_b_zero_p6;
  reg  op_nan_p6;
  reg  sign_final_p6;
  reg [5:0] exp_final_p6;
  reg [12:0] div_final_p6;
  reg [15:0] div_table [0:127];
  assign _zz_2_ = {(1'b1),op_b_p0_mant};
  assign _zz_3_ = op_b_p0_mant[5 : 0];
  assign _zz_4_ = _zz_5_;
  assign _zz_5_ = {1'd0, op_a_p0_exp};
  assign _zz_6_ = _zz_7_;
  assign _zz_7_ = {1'd0, op_b_p0_exp};
  assign _zz_8_ = ($signed(_zz_9_) - $signed(_zz_10_));
  assign _zz_9_ = {{1{exp_p1[6]}}, exp_p1};
  assign _zz_10_ = _zz_11_;
  assign _zz_11_ = {6'd0, recip_exp_p1};
  assign _zz_12_ = (8'b00100000);
  assign _zz_13_ = (div_p5 >>> shift_adj_p5);
  assign _zz_14_ = {{5{exp_delta_p5[2]}}, exp_delta_p5};
  assign _zz_15_ = (8'b00111111);
  assign _zz_16_ = (8'b00000000);
  assign _zz_17_ = exp_adj_p6[5 : 0];
  initial begin
    $readmemb("PanoCore.v_toplevel_rt_u_plane_intersect_u_div_p0r0_dot_norm_denom_div_table.bin",div_table);
  end
  always @ (posedge clk) begin
    if(p0_vld) begin
      _zz_1_ <= div_table[div_addr_p0];
    end
  end

  assign yh_p0 = ({6'd0,_zz_2_[13 : 6]} <<< 6);
  assign yl_p0 = {8'd0, _zz_3_};
  assign yh_m_yl_p0 = (yh_p0 - yl_p0);
  assign div_addr_p0 = (op_b_p0_mant >>> 6);
  assign exp_p0 = ($signed(_zz_4_) - $signed(_zz_6_));
  assign sign_p0 = (op_a_p0_sign ^ op_b_p0_sign);
  assign op_a_zero_p0 = (op_a_p0_exp == (6'b000000));
  assign op_b_zero_p0 = (op_b_p0_exp == (6'b000000));
  assign op_a_inf_p0 = ((op_a_p0_exp == (6'b111111)) && (! (op_a_p0_mant != (13'b0000000000000))));
  assign op_b_inf_p0 = ((op_b_p0_exp == (6'b111111)) && (! (op_b_p0_mant != (13'b0000000000000))));
  assign op_nan_p0 = ((((op_a_p0_exp == (6'b111111)) && (op_a_p0_mant != (13'b0000000000000))) || ((op_b_p0_exp == (6'b111111)) && (op_b_p0_mant != (13'b0000000000000)))) || (op_a_inf_p0 && op_b_inf_p0));
  assign expBoundary = (7'b0110110);
  assign recip_exp_p0 = ((div_addr_p0 == (7'b0000000)) ? (2'b00) : ((div_addr_p0 < expBoundary) ? (2'b01) : (2'b10)));
  assign div_val_p1 = _zz_1_;
  assign recip_yh2_p1 = {(1'b1),div_val_p1};
  assign exp_full_p1 = ($signed(_zz_8_) + $signed(_zz_12_));
  assign mant_a_full_p2 = {(1'b1),mant_a_p2};
  assign x_mul_yhyl_full_p2 = (mant_a_full_p2 * yh_m_yl_p2);
  assign x_mul_yhyl_p2 = x_mul_yhyl_full_p2[27 : 11];
  assign div_full_p4 = (x_mul_yhyl_p4 * recip_yh2_p4);
  assign div_p4 = div_full_p4[33 : 17];
  always @ (*) begin
    if((div_p5[16 : 16] == (1'b1)))begin
      shift_adj_p5 = (2'b11);
      exp_delta_p5 = (3'b001);
    end else begin
      if((div_p5[16 : 15] == (2'b01)))begin
        shift_adj_p5 = (2'b10);
        exp_delta_p5 = (3'b000);
      end else begin
        if((div_p5[16 : 14] == (3'b001)))begin
          shift_adj_p5 = (2'b01);
          exp_delta_p5 = (3'b111);
        end else begin
          shift_adj_p5 = (2'b00);
          exp_delta_p5 = (3'b110);
        end
      end
    end
  end

  assign div_adj_p5 = _zz_13_[12:0];
  assign exp_adj_p5 = ($signed(exp_full_p5) + $signed(_zz_14_));
  always @ (*) begin
    if(((op_a_zero_p6 && op_b_zero_p6) || op_nan_p6))begin
      sign_final_p6 = sign_p6;
      exp_final_p6 = (6'b111111);
      div_final_p6 = (1'b0 ? (13'b1111111111111) : (13'b0000000000000));
      div_final_p6[12] = 1'b1;
    end else begin
      if((($signed(_zz_15_) <= $signed(exp_adj_p6)) || op_b_zero_p6))begin
        sign_final_p6 = sign_p6;
        exp_final_p6 = (6'b111111);
        div_final_p6 = (13'b0000000000000);
      end else begin
        if(($signed(exp_adj_p6) <= $signed(_zz_16_)))begin
          sign_final_p6 = sign_p6;
          exp_final_p6 = (6'b000000);
          div_final_p6 = (13'b0000000000000);
        end else begin
          sign_final_p6 = sign_p6;
          exp_final_p6 = _zz_17_;
          div_final_p6 = div_adj_p6;
        end
      end
    end
  end

  assign io_result_vld = p6_vld;
  assign io_result_sign = sign_final_p6;
  assign io_result_exp = exp_final_p6;
  assign io_result_mant = div_final_p6;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
      p2_vld <= 1'b0;
      p3_vld <= 1'b0;
      p4_vld <= 1'b0;
      p5_vld <= 1'b0;
      p6_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
      if(1'b1)begin
        p2_vld <= p1_vld;
      end
      if(1'b1)begin
        p3_vld <= p2_vld;
      end
      if(1'b1)begin
        p4_vld <= p3_vld;
      end
      if(1'b1)begin
        p5_vld <= p4_vld;
      end
      if(1'b1)begin
        p6_vld <= p5_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      yh_m_yl_p1 <= yh_m_yl_p0;
    end
    if(p0_vld)begin
      mant_a_p1 <= op_a_p0_mant;
    end
    if(p0_vld)begin
      exp_p1 <= exp_p0;
    end
    if(p0_vld)begin
      sign_p1 <= sign_p0;
    end
    if(p0_vld)begin
      op_a_zero_p1 <= op_a_zero_p0;
    end
    if(p0_vld)begin
      op_b_zero_p1 <= op_b_zero_p0;
    end
    if(p0_vld)begin
      op_nan_p1 <= op_nan_p0;
    end
    if(p0_vld)begin
      recip_exp_p1 <= recip_exp_p0;
    end
    if(p1_vld)begin
      yh_m_yl_p2 <= yh_m_yl_p1;
    end
    if(p1_vld)begin
      mant_a_p2 <= mant_a_p1;
    end
    if(p1_vld)begin
      sign_p2 <= sign_p1;
    end
    if(p1_vld)begin
      recip_yh2_p2 <= recip_yh2_p1;
    end
    if(p1_vld)begin
      exp_full_p2 <= exp_full_p1;
    end
    if(p1_vld)begin
      op_a_zero_p2 <= op_a_zero_p1;
    end
    if(p1_vld)begin
      op_b_zero_p2 <= op_b_zero_p1;
    end
    if(p1_vld)begin
      op_nan_p2 <= op_nan_p1;
    end
    if(p2_vld)begin
      sign_p3 <= sign_p2;
    end
    if(p2_vld)begin
      x_mul_yhyl_p3 <= x_mul_yhyl_p2;
    end
    if(p2_vld)begin
      recip_yh2_p3 <= recip_yh2_p2;
    end
    if(p2_vld)begin
      exp_full_p3 <= exp_full_p2;
    end
    if(p2_vld)begin
      op_a_zero_p3 <= op_a_zero_p2;
    end
    if(p2_vld)begin
      op_b_zero_p3 <= op_b_zero_p2;
    end
    if(p2_vld)begin
      op_nan_p3 <= op_nan_p2;
    end
    if(p3_vld)begin
      sign_p4 <= sign_p3;
    end
    if(p3_vld)begin
      x_mul_yhyl_p4 <= x_mul_yhyl_p3;
    end
    if(p3_vld)begin
      recip_yh2_p4 <= recip_yh2_p3;
    end
    if(p3_vld)begin
      exp_full_p4 <= exp_full_p3;
    end
    if(p3_vld)begin
      op_a_zero_p4 <= op_a_zero_p3;
    end
    if(p3_vld)begin
      op_b_zero_p4 <= op_b_zero_p3;
    end
    if(p3_vld)begin
      op_nan_p4 <= op_nan_p3;
    end
    if(p4_vld)begin
      sign_p5 <= sign_p4;
    end
    if(p4_vld)begin
      div_p5 <= div_p4;
    end
    if(p4_vld)begin
      exp_full_p5 <= exp_full_p4;
    end
    if(p4_vld)begin
      op_a_zero_p5 <= op_a_zero_p4;
    end
    if(p4_vld)begin
      op_b_zero_p5 <= op_b_zero_p4;
    end
    if(p4_vld)begin
      op_nan_p5 <= op_nan_p4;
    end
    if(p5_vld)begin
      sign_p6 <= sign_p5;
    end
    if(p5_vld)begin
      div_adj_p6 <= div_adj_p5;
    end
    if(p5_vld)begin
      exp_adj_p6 <= exp_adj_p5;
    end
    if(p5_vld)begin
      op_a_zero_p6 <= op_a_zero_p5;
    end
    if(p5_vld)begin
      op_b_zero_p6 <= op_b_zero_p5;
    end
    if(p5_vld)begin
      op_nan_p6 <= op_nan_p5;
    end
  end

endmodule


//Intersection_1_ remplaced by Intersection


//SubVecVec_4_ remplaced by SubVecVec


//DotProduct_8_ remplaced by DotProduct


//DotProduct_9_ remplaced by DotProduct


//FpxxMul_68_ remplaced by FpxxMul


//FpxxSub_26_ remplaced by FpxxSub


//FpxxSub_27_ remplaced by FpxxSub

module FpxxSqrt_1_ (
      input   p0_vld,
      input   op_p0_sign,
      input  [5:0] op_p0_exp,
      input  [12:0] op_p0_mant,
      output  io_result_vld,
      output  io_result_sign,
      output [5:0] io_result_exp,
      output [12:0] io_result_mant,
      input   clk,
      input   reset);
  reg [13:0] _zz_1_;
  wire [6:0] _zz_2_;
  wire [6:0] _zz_3_;
  wire [6:0] _zz_4_;
  wire [11:0] _zz_5_;
  wire [14:0] _zz_6_;
  wire [6:0] _zz_7_;
  wire [6:0] _zz_8_;
  wire [2:0] _zz_9_;
  wire [6:0] _zz_10_;
  wire [2:0] _zz_11_;
  wire [6:0] _zz_12_;
  wire [6:0] _zz_13_;
  wire [6:0] _zz_14_;
  wire  op_zero_p0;
  wire  op_nan_p0;
  wire  op_inf_p0;
  wire [6:0] exp_p0;
  wire  gt_1_p0;
  wire [11:0] sqrt_addr_p0;
  reg  p1_vld;
  reg  op_zero_p1;
  reg  op_nan_p1;
  reg  op_inf_p1;
  reg [6:0] exp_p1;
  wire [13:0] sqrt_val_p1;
  wire [1:0] sqrt_shift_p1;
  wire [11:0] sqrt_mant_p1;
  wire [6:0] exp_adj_p1;
  reg  sign_final_p1;
  reg [5:0] exp_final_p1;
  reg [12:0] mant_final_p1;
  reg [13:0] sqrt_table [0:3071];
  assign _zz_2_ = _zz_3_;
  assign _zz_3_ = {1'd0, op_p0_exp};
  assign _zz_4_ = (7'b0011111);
  assign _zz_5_ = (_zz_6_ >>> 3);
  assign _zz_6_ = ({1'd0,{(1'b1),op_p0_mant}} <<< gt_1_p0);
  assign _zz_7_ = ($signed(_zz_8_) - $signed(_zz_10_));
  assign _zz_8_ = ($signed(exp_p1) >>> 1);
  assign _zz_9_ = _zz_11_;
  assign _zz_10_ = {{4{_zz_9_[2]}}, _zz_9_};
  assign _zz_11_ = {1'd0, sqrt_shift_p1};
  assign _zz_12_ = (7'b0011111);
  assign _zz_13_ = (7'b0000000);
  assign _zz_14_ = exp_adj_p1;
  initial begin
    $readmemb("PanoCore.v_toplevel_rt_u_shadow_sphere_intersect_u_thc_sqrt_table.bin",sqrt_table);
  end
  always @ (posedge clk) begin
    if(p0_vld) begin
      _zz_1_ <= sqrt_table[sqrt_addr_p0];
    end
  end

  assign op_zero_p0 = (op_p0_exp == (6'b000000));
  assign op_nan_p0 = (((op_p0_exp == (6'b111111)) && (op_p0_mant != (13'b0000000000000))) || op_p0_sign);
  assign op_inf_p0 = (((op_p0_exp == (6'b111111)) && (! (op_p0_mant != (13'b0000000000000)))) && (! op_p0_sign));
  assign exp_p0 = ($signed(_zz_2_) - $signed(_zz_4_));
  assign gt_1_p0 = (! exp_p0[0]);
  assign sqrt_addr_p0 = (_zz_5_ - (12'b010000000000));
  assign sqrt_val_p1 = _zz_1_;
  assign sqrt_shift_p1 = sqrt_val_p1[1 : 0];
  assign sqrt_mant_p1 = sqrt_val_p1[13 : 2];
  assign exp_adj_p1 = ($signed(_zz_7_) + $signed(_zz_12_));
  always @ (*) begin
    if(op_nan_p1)begin
      sign_final_p1 = 1'b0;
      exp_final_p1 = (6'b111111);
      mant_final_p1 = (1'b0 ? (13'b1111111111111) : (13'b0000000000000));
      mant_final_p1[12] = 1'b1;
    end else begin
      if(op_inf_p1)begin
        sign_final_p1 = 1'b0;
        exp_final_p1 = (6'b111111);
        mant_final_p1 = (13'b0000000000000);
      end else begin
        if((($signed(exp_adj_p1) <= $signed(_zz_13_)) || op_zero_p1))begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = (6'b000000);
          mant_final_p1 = (13'b0000000000000);
        end else begin
          sign_final_p1 = 1'b0;
          exp_final_p1 = _zz_14_[5:0];
          mant_final_p1 = ({1'd0,sqrt_mant_p1} <<< 1);
        end
      end
    end
  end

  assign io_result_vld = p1_vld;
  assign io_result_sign = sign_final_p1;
  assign io_result_exp = exp_final_p1;
  assign io_result_mant = mant_final_p1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      op_zero_p1 <= op_zero_p0;
    end
    if(p0_vld)begin
      op_nan_p1 <= op_nan_p0;
    end
    if(p0_vld)begin
      op_inf_p1 <= op_inf_p0;
    end
    if(p0_vld)begin
      exp_p1 <= exp_p0;
    end
  end

endmodule


//FpxxSub_28_ remplaced by FpxxSub


//FpxxAdd_63_ remplaced by FpxxAdd


//Intersection_2_ remplaced by Intersection


//SubVecVec_5_ remplaced by SubVecVec

module Normalize_1_ (
      input   io_op_vld,
      input   io_op_x_sign,
      input  [5:0] io_op_x_exp,
      input  [12:0] io_op_x_mant,
      input   io_op_y_sign,
      input  [5:0] io_op_y_exp,
      input  [12:0] io_op_y_mant,
      input   io_op_z_sign,
      input  [5:0] io_op_z_exp,
      input  [12:0] io_op_z_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_dot_io_result_vld;
  wire  u_dot_io_result_sign;
  wire [5:0] u_dot_io_result_exp;
  wire [12:0] u_dot_io_result_mant;
  wire  u_rsqrt_io_result_vld;
  wire  u_rsqrt_io_result_sign;
  wire [5:0] u_rsqrt_io_result_exp;
  wire [12:0] u_rsqrt_io_result_mant;
  wire  u_vec_adj_io_result_vld;
  wire  u_vec_adj_io_result_x_sign;
  wire [5:0] u_vec_adj_io_result_x_exp;
  wire [12:0] u_vec_adj_io_result_x_mant;
  wire  u_vec_adj_io_result_y_sign;
  wire [5:0] u_vec_adj_io_result_y_exp;
  wire [12:0] u_vec_adj_io_result_y_mant;
  wire  u_vec_adj_io_result_z_sign;
  wire [5:0] u_vec_adj_io_result_z_exp;
  wire [12:0] u_vec_adj_io_result_z_mant;
  wire  vec_dot_vld;
  wire  vec_dot_sign;
  wire [5:0] vec_dot_exp;
  wire [12:0] vec_dot_mant;
  wire  denom_vld;
  wire  denom_sign;
  wire [5:0] denom_exp;
  wire [12:0] denom_mant;
  reg  io_op_delay_1_x_sign;
  reg [5:0] io_op_delay_1_x_exp;
  reg [12:0] io_op_delay_1_x_mant;
  reg  io_op_delay_1_y_sign;
  reg [5:0] io_op_delay_1_y_exp;
  reg [12:0] io_op_delay_1_y_mant;
  reg  io_op_delay_1_z_sign;
  reg [5:0] io_op_delay_1_z_exp;
  reg [12:0] io_op_delay_1_z_mant;
  reg  io_op_delay_2_x_sign;
  reg [5:0] io_op_delay_2_x_exp;
  reg [12:0] io_op_delay_2_x_mant;
  reg  io_op_delay_2_y_sign;
  reg [5:0] io_op_delay_2_y_exp;
  reg [12:0] io_op_delay_2_y_mant;
  reg  io_op_delay_2_z_sign;
  reg [5:0] io_op_delay_2_z_exp;
  reg [12:0] io_op_delay_2_z_mant;
  reg  io_op_delay_3_x_sign;
  reg [5:0] io_op_delay_3_x_exp;
  reg [12:0] io_op_delay_3_x_mant;
  reg  io_op_delay_3_y_sign;
  reg [5:0] io_op_delay_3_y_exp;
  reg [12:0] io_op_delay_3_y_mant;
  reg  io_op_delay_3_z_sign;
  reg [5:0] io_op_delay_3_z_exp;
  reg [12:0] io_op_delay_3_z_mant;
  reg  io_op_delay_4_x_sign;
  reg [5:0] io_op_delay_4_x_exp;
  reg [12:0] io_op_delay_4_x_mant;
  reg  io_op_delay_4_y_sign;
  reg [5:0] io_op_delay_4_y_exp;
  reg [12:0] io_op_delay_4_y_mant;
  reg  io_op_delay_4_z_sign;
  reg [5:0] io_op_delay_4_z_exp;
  reg [12:0] io_op_delay_4_z_mant;
  reg  io_op_delay_5_x_sign;
  reg [5:0] io_op_delay_5_x_exp;
  reg [12:0] io_op_delay_5_x_mant;
  reg  io_op_delay_5_y_sign;
  reg [5:0] io_op_delay_5_y_exp;
  reg [12:0] io_op_delay_5_y_mant;
  reg  io_op_delay_5_z_sign;
  reg [5:0] io_op_delay_5_z_exp;
  reg [12:0] io_op_delay_5_z_mant;
  reg  io_op_delay_6_x_sign;
  reg [5:0] io_op_delay_6_x_exp;
  reg [12:0] io_op_delay_6_x_mant;
  reg  io_op_delay_6_y_sign;
  reg [5:0] io_op_delay_6_y_exp;
  reg [12:0] io_op_delay_6_y_mant;
  reg  io_op_delay_6_z_sign;
  reg [5:0] io_op_delay_6_z_exp;
  reg [12:0] io_op_delay_6_z_mant;
  reg  op_delayed_x_sign;
  reg [5:0] op_delayed_x_exp;
  reg [12:0] op_delayed_x_mant;
  reg  op_delayed_y_sign;
  reg [5:0] op_delayed_y_exp;
  reg [12:0] op_delayed_y_mant;
  reg  op_delayed_z_sign;
  reg [5:0] op_delayed_z_exp;
  reg [12:0] op_delayed_z_mant;
  DotProduct u_dot ( 
    .io_op_vld(io_op_vld),
    .io_op_a_x_sign(io_op_x_sign),
    .io_op_a_x_exp(io_op_x_exp),
    .io_op_a_x_mant(io_op_x_mant),
    .io_op_a_y_sign(io_op_y_sign),
    .io_op_a_y_exp(io_op_y_exp),
    .io_op_a_y_mant(io_op_y_mant),
    .io_op_a_z_sign(io_op_z_sign),
    .io_op_a_z_exp(io_op_z_exp),
    .io_op_a_z_mant(io_op_z_mant),
    .io_op_b_x_sign(io_op_x_sign),
    .io_op_b_x_exp(io_op_x_exp),
    .io_op_b_x_mant(io_op_x_mant),
    .io_op_b_y_sign(io_op_y_sign),
    .io_op_b_y_exp(io_op_y_exp),
    .io_op_b_y_mant(io_op_y_mant),
    .io_op_b_z_sign(io_op_z_sign),
    .io_op_b_z_exp(io_op_z_exp),
    .io_op_b_z_mant(io_op_z_mant),
    .io_result_vld(u_dot_io_result_vld),
    .io_result_sign(u_dot_io_result_sign),
    .io_result_exp(u_dot_io_result_exp),
    .io_result_mant(u_dot_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxRSqrt_1_ u_rsqrt ( 
    .p0_vld(vec_dot_vld),
    .op_p0_sign(vec_dot_sign),
    .op_p0_exp(vec_dot_exp),
    .op_p0_mant(vec_dot_mant),
    .io_result_vld(u_rsqrt_io_result_vld),
    .io_result_sign(u_rsqrt_io_result_sign),
    .io_result_exp(u_rsqrt_io_result_exp),
    .io_result_mant(u_rsqrt_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  MulVecScalar u_vec_adj ( 
    .io_op_vld(denom_vld),
    .io_op_vec_x_sign(op_delayed_x_sign),
    .io_op_vec_x_exp(op_delayed_x_exp),
    .io_op_vec_x_mant(op_delayed_x_mant),
    .io_op_vec_y_sign(op_delayed_y_sign),
    .io_op_vec_y_exp(op_delayed_y_exp),
    .io_op_vec_y_mant(op_delayed_y_mant),
    .io_op_vec_z_sign(op_delayed_z_sign),
    .io_op_vec_z_exp(op_delayed_z_exp),
    .io_op_vec_z_mant(op_delayed_z_mant),
    .io_op_scalar_sign(denom_sign),
    .io_op_scalar_exp(denom_exp),
    .io_op_scalar_mant(denom_mant),
    .io_result_vld(u_vec_adj_io_result_vld),
    .io_result_x_sign(u_vec_adj_io_result_x_sign),
    .io_result_x_exp(u_vec_adj_io_result_x_exp),
    .io_result_x_mant(u_vec_adj_io_result_x_mant),
    .io_result_y_sign(u_vec_adj_io_result_y_sign),
    .io_result_y_exp(u_vec_adj_io_result_y_exp),
    .io_result_y_mant(u_vec_adj_io_result_y_mant),
    .io_result_z_sign(u_vec_adj_io_result_z_sign),
    .io_result_z_exp(u_vec_adj_io_result_z_exp),
    .io_result_z_mant(u_vec_adj_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign vec_dot_vld = u_dot_io_result_vld;
  assign vec_dot_sign = u_dot_io_result_sign;
  assign vec_dot_exp = u_dot_io_result_exp;
  assign vec_dot_mant = u_dot_io_result_mant;
  assign denom_vld = u_rsqrt_io_result_vld;
  assign denom_sign = u_rsqrt_io_result_sign;
  assign denom_exp = u_rsqrt_io_result_exp;
  assign denom_mant = u_rsqrt_io_result_mant;
  assign io_result_vld = u_vec_adj_io_result_vld;
  assign io_result_x_sign = u_vec_adj_io_result_x_sign;
  assign io_result_x_exp = u_vec_adj_io_result_x_exp;
  assign io_result_x_mant = u_vec_adj_io_result_x_mant;
  assign io_result_y_sign = u_vec_adj_io_result_y_sign;
  assign io_result_y_exp = u_vec_adj_io_result_y_exp;
  assign io_result_y_mant = u_vec_adj_io_result_y_mant;
  assign io_result_z_sign = u_vec_adj_io_result_z_sign;
  assign io_result_z_exp = u_vec_adj_io_result_z_exp;
  assign io_result_z_mant = u_vec_adj_io_result_z_mant;
  always @ (posedge clk) begin
    io_op_delay_1_x_sign <= io_op_x_sign;
    io_op_delay_1_x_exp <= io_op_x_exp;
    io_op_delay_1_x_mant <= io_op_x_mant;
    io_op_delay_1_y_sign <= io_op_y_sign;
    io_op_delay_1_y_exp <= io_op_y_exp;
    io_op_delay_1_y_mant <= io_op_y_mant;
    io_op_delay_1_z_sign <= io_op_z_sign;
    io_op_delay_1_z_exp <= io_op_z_exp;
    io_op_delay_1_z_mant <= io_op_z_mant;
    io_op_delay_2_x_sign <= io_op_delay_1_x_sign;
    io_op_delay_2_x_exp <= io_op_delay_1_x_exp;
    io_op_delay_2_x_mant <= io_op_delay_1_x_mant;
    io_op_delay_2_y_sign <= io_op_delay_1_y_sign;
    io_op_delay_2_y_exp <= io_op_delay_1_y_exp;
    io_op_delay_2_y_mant <= io_op_delay_1_y_mant;
    io_op_delay_2_z_sign <= io_op_delay_1_z_sign;
    io_op_delay_2_z_exp <= io_op_delay_1_z_exp;
    io_op_delay_2_z_mant <= io_op_delay_1_z_mant;
    io_op_delay_3_x_sign <= io_op_delay_2_x_sign;
    io_op_delay_3_x_exp <= io_op_delay_2_x_exp;
    io_op_delay_3_x_mant <= io_op_delay_2_x_mant;
    io_op_delay_3_y_sign <= io_op_delay_2_y_sign;
    io_op_delay_3_y_exp <= io_op_delay_2_y_exp;
    io_op_delay_3_y_mant <= io_op_delay_2_y_mant;
    io_op_delay_3_z_sign <= io_op_delay_2_z_sign;
    io_op_delay_3_z_exp <= io_op_delay_2_z_exp;
    io_op_delay_3_z_mant <= io_op_delay_2_z_mant;
    io_op_delay_4_x_sign <= io_op_delay_3_x_sign;
    io_op_delay_4_x_exp <= io_op_delay_3_x_exp;
    io_op_delay_4_x_mant <= io_op_delay_3_x_mant;
    io_op_delay_4_y_sign <= io_op_delay_3_y_sign;
    io_op_delay_4_y_exp <= io_op_delay_3_y_exp;
    io_op_delay_4_y_mant <= io_op_delay_3_y_mant;
    io_op_delay_4_z_sign <= io_op_delay_3_z_sign;
    io_op_delay_4_z_exp <= io_op_delay_3_z_exp;
    io_op_delay_4_z_mant <= io_op_delay_3_z_mant;
    io_op_delay_5_x_sign <= io_op_delay_4_x_sign;
    io_op_delay_5_x_exp <= io_op_delay_4_x_exp;
    io_op_delay_5_x_mant <= io_op_delay_4_x_mant;
    io_op_delay_5_y_sign <= io_op_delay_4_y_sign;
    io_op_delay_5_y_exp <= io_op_delay_4_y_exp;
    io_op_delay_5_y_mant <= io_op_delay_4_y_mant;
    io_op_delay_5_z_sign <= io_op_delay_4_z_sign;
    io_op_delay_5_z_exp <= io_op_delay_4_z_exp;
    io_op_delay_5_z_mant <= io_op_delay_4_z_mant;
    io_op_delay_6_x_sign <= io_op_delay_5_x_sign;
    io_op_delay_6_x_exp <= io_op_delay_5_x_exp;
    io_op_delay_6_x_mant <= io_op_delay_5_x_mant;
    io_op_delay_6_y_sign <= io_op_delay_5_y_sign;
    io_op_delay_6_y_exp <= io_op_delay_5_y_exp;
    io_op_delay_6_y_mant <= io_op_delay_5_y_mant;
    io_op_delay_6_z_sign <= io_op_delay_5_z_sign;
    io_op_delay_6_z_exp <= io_op_delay_5_z_exp;
    io_op_delay_6_z_mant <= io_op_delay_5_z_mant;
    op_delayed_x_sign <= io_op_delay_6_x_sign;
    op_delayed_x_exp <= io_op_delay_6_x_exp;
    op_delayed_x_mant <= io_op_delay_6_x_mant;
    op_delayed_y_sign <= io_op_delay_6_y_sign;
    op_delayed_y_exp <= io_op_delay_6_y_exp;
    op_delayed_y_mant <= io_op_delay_6_y_mant;
    op_delayed_z_sign <= io_op_delay_6_z_sign;
    op_delayed_z_exp <= io_op_delay_6_z_exp;
    op_delayed_z_mant <= io_op_delay_6_z_mant;
  end

endmodule


//DotProduct_10_ remplaced by DotProduct


//MulVecScalar_7_ remplaced by MulVecScalar


//SubVecVec_6_ remplaced by SubVecVec


//FpxxMul_69_ remplaced by FpxxMul


//FpxxMul_70_ remplaced by FpxxMul


//FpxxMul_71_ remplaced by FpxxMul


//FpxxAdd_64_ remplaced by FpxxAdd


//FpxxAdd_65_ remplaced by FpxxAdd

module CamSweep (
      input  [11:0] io_pix_x,
      input  [10:0] io_pix_y,
      output  io_ray_origin_x_sign,
      output [5:0] io_ray_origin_x_exp,
      output [12:0] io_ray_origin_x_mant,
      output  io_ray_origin_y_sign,
      output [5:0] io_ray_origin_y_exp,
      output [12:0] io_ray_origin_y_mant,
      output  io_ray_origin_z_sign,
      output [5:0] io_ray_origin_z_exp,
      output [12:0] io_ray_origin_z_mant,
      output  io_ray_direction_x_sign,
      output [5:0] io_ray_direction_x_exp,
      output [12:0] io_ray_direction_x_mant,
      output  io_ray_direction_y_sign,
      output [5:0] io_ray_direction_y_exp,
      output [12:0] io_ray_direction_y_mant,
      output  io_ray_direction_z_sign,
      output [5:0] io_ray_direction_z_exp,
      output [12:0] io_ray_direction_z_mant,
      input   clk,
      input   reset);
  wire  u_pix_x_fp_io_result_vld;
  wire  u_pix_x_fp_io_result_sign;
  wire [5:0] u_pix_x_fp_io_result_exp;
  wire [12:0] u_pix_x_fp_io_result_mant;
  wire  u_pix_y_fp_io_result_vld;
  wire  u_pix_y_fp_io_result_sign;
  wire [5:0] u_pix_y_fp_io_result_exp;
  wire [12:0] u_pix_y_fp_io_result_mant;
  wire  u_dir_x_io_result_vld;
  wire  u_dir_x_io_result_sign;
  wire [5:0] u_dir_x_io_result_exp;
  wire [12:0] u_dir_x_io_result_mant;
  wire  u_dir_y_io_result_vld;
  wire  u_dir_y_io_result_sign;
  wire [5:0] u_dir_y_io_result_exp;
  wire [12:0] u_dir_y_io_result_mant;
  wire  incrX_sign;
  wire [5:0] incrX_exp;
  wire [12:0] incrX_mant;
  wire  incrY_sign;
  wire [5:0] incrY_exp;
  wire [12:0] incrY_mant;
  wire  pix_vld;
  wire  pix_fp_vld;
  wire  pix_x_fp_sign;
  wire [5:0] pix_x_fp_exp;
  wire [12:0] pix_x_fp_mant;
  wire  pix_y_fp_sign;
  wire [5:0] pix_y_fp_exp;
  wire [12:0] pix_y_fp_mant;
  wire  step_sign;
  wire [5:0] step_exp;
  wire [12:0] step_mant;
  wire  dir_x_vld;
  wire  dir_y_vld;
  wire  dir_x_sign;
  wire [5:0] dir_x_exp;
  wire [12:0] dir_x_mant;
  wire  dir_y_sign;
  wire [5:0] dir_y_exp;
  wire [12:0] dir_y_mant;
  SInt2Fpxx u_pix_x_fp ( 
    .p0_vld(pix_vld),
    .op_p0(io_pix_x),
    .io_result_vld(u_pix_x_fp_io_result_vld),
    .io_result_sign(u_pix_x_fp_io_result_sign),
    .io_result_exp(u_pix_x_fp_io_result_exp),
    .io_result_mant(u_pix_x_fp_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  SInt2Fpxx_1_ u_pix_y_fp ( 
    .p0_vld(pix_vld),
    .op_p0(io_pix_y),
    .io_result_vld(u_pix_y_fp_io_result_vld),
    .io_result_sign(u_pix_y_fp_io_result_sign),
    .io_result_exp(u_pix_y_fp_io_result_exp),
    .io_result_mant(u_pix_y_fp_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_dir_x ( 
    .p0_vld(pix_fp_vld),
    .op_a_p0_sign(pix_x_fp_sign),
    .exp_a_p0(pix_x_fp_exp),
    .op_a_p0_mant(pix_x_fp_mant),
    .op_b_p0_sign(step_sign),
    .exp_b_p0(step_exp),
    .op_b_p0_mant(step_mant),
    .io_result_vld(u_dir_x_io_result_vld),
    .io_result_sign(u_dir_x_io_result_sign),
    .io_result_exp(u_dir_x_io_result_exp),
    .io_result_mant(u_dir_x_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_dir_y ( 
    .p0_vld(pix_fp_vld),
    .op_a_p0_sign(pix_y_fp_sign),
    .exp_a_p0(pix_y_fp_exp),
    .op_a_p0_mant(pix_y_fp_mant),
    .op_b_p0_sign(step_sign),
    .exp_b_p0(step_exp),
    .op_b_p0_mant(step_mant),
    .io_result_vld(u_dir_y_io_result_vld),
    .io_result_sign(u_dir_y_io_result_sign),
    .io_result_exp(u_dir_y_io_result_exp),
    .io_result_mant(u_dir_y_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign incrX_sign = 1'b0;
  assign incrX_exp = (6'b010101);
  assign incrX_mant = (13'b1001100110011);
  assign incrY_sign = 1'b0;
  assign incrY_exp = (6'b010110);
  assign incrY_mant = (13'b0001000100010);
  assign pix_vld = 1'b1;
  assign pix_fp_vld = u_pix_x_fp_io_result_vld;
  assign pix_x_fp_sign = u_pix_x_fp_io_result_sign;
  assign pix_x_fp_exp = u_pix_x_fp_io_result_exp;
  assign pix_x_fp_mant = u_pix_x_fp_io_result_mant;
  assign pix_y_fp_sign = u_pix_y_fp_io_result_sign;
  assign pix_y_fp_exp = u_pix_y_fp_io_result_exp;
  assign pix_y_fp_mant = u_pix_y_fp_io_result_mant;
  assign step_sign = 1'b0;
  assign step_exp = (6'b010110);
  assign step_mant = (13'b0001000100010);
  assign dir_x_vld = u_dir_x_io_result_vld;
  assign dir_x_sign = u_dir_x_io_result_sign;
  assign dir_x_exp = u_dir_x_io_result_exp;
  assign dir_x_mant = u_dir_x_io_result_mant;
  assign dir_y_vld = u_dir_y_io_result_vld;
  assign dir_y_sign = u_dir_y_io_result_sign;
  assign dir_y_exp = u_dir_y_io_result_exp;
  assign dir_y_mant = u_dir_y_io_result_mant;
  assign io_ray_origin_x_sign = 1'b0;
  assign io_ray_origin_x_exp = (6'b000000);
  assign io_ray_origin_x_mant = (13'b0000000000000);
  assign io_ray_origin_y_sign = 1'b0;
  assign io_ray_origin_y_exp = (6'b100010);
  assign io_ray_origin_y_mant = (13'b0100000000000);
  assign io_ray_origin_z_sign = 1'b1;
  assign io_ray_origin_z_exp = (6'b100010);
  assign io_ray_origin_z_mant = (13'b0100000000000);
  assign io_ray_direction_x_sign = dir_x_sign;
  assign io_ray_direction_x_exp = dir_x_exp;
  assign io_ray_direction_x_mant = dir_x_mant;
  assign io_ray_direction_y_sign = dir_y_sign;
  assign io_ray_direction_y_exp = dir_y_exp;
  assign io_ray_direction_y_mant = dir_y_mant;
  assign io_ray_direction_z_sign = 1'b0;
  assign io_ray_direction_z_exp = (6'b011111);
  assign io_ray_direction_z_mant = (13'b0000000000000);
endmodule

module RotateX (
      input   io_op_vld,
      input   io_op_x_sign,
      input  [5:0] io_op_x_exp,
      input  [12:0] io_op_x_mant,
      input   io_op_y_sign,
      input  [5:0] io_op_y_exp,
      input  [12:0] io_op_y_mant,
      input   io_op_z_sign,
      input  [5:0] io_op_z_exp,
      input  [12:0] io_op_z_mant,
      input   io_sin_sign,
      input  [5:0] io_sin_exp,
      input  [12:0] io_sin_mant,
      input   io_cos_sign,
      input  [5:0] io_cos_exp,
      input  [12:0] io_cos_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_cy_io_result_vld;
  wire  u_cy_io_result_sign;
  wire [5:0] u_cy_io_result_exp;
  wire [12:0] u_cy_io_result_mant;
  wire  u_sy_io_result_vld;
  wire  u_sy_io_result_sign;
  wire [5:0] u_sy_io_result_exp;
  wire [12:0] u_sy_io_result_mant;
  wire  u_cz_io_result_vld;
  wire  u_cz_io_result_sign;
  wire [5:0] u_cz_io_result_exp;
  wire [12:0] u_cz_io_result_mant;
  wire  u_sz_io_result_vld;
  wire  u_sz_io_result_sign;
  wire [5:0] u_sz_io_result_exp;
  wire [12:0] u_sz_io_result_mant;
  wire  u_cy_sz_io_result_vld;
  wire  u_cy_sz_io_result_sign;
  wire [5:0] u_cy_sz_io_result_exp;
  wire [12:0] u_cy_sz_io_result_mant;
  wire  u_sy_cz_io_result_vld;
  wire  u_sy_cz_io_result_sign;
  wire [5:0] u_sy_cz_io_result_exp;
  wire [12:0] u_sy_cz_io_result_mant;
  wire  cy_vld;
  wire  cy_sign;
  wire [5:0] cy_exp;
  wire [12:0] cy_mant;
  wire  sy_vld;
  wire  sy_sign;
  wire [5:0] sy_exp;
  wire [12:0] sy_mant;
  wire  cz_vld;
  wire  cz_sign;
  wire [5:0] cz_exp;
  wire [12:0] cz_mant;
  wire  sz_vld;
  wire  sz_sign;
  wire [5:0] sz_exp;
  wire [12:0] sz_mant;
  wire  cy_sz_vld;
  wire  sy_cz_vld;
  wire  cy_sz_sign;
  wire [5:0] cy_sz_exp;
  wire [12:0] cy_sz_mant;
  wire  sy_cz_sign;
  wire [5:0] sy_cz_exp;
  wire [12:0] sy_cz_mant;
  reg  io_op_x_delay_1_sign;
  reg [5:0] io_op_x_delay_1_exp;
  reg [12:0] io_op_x_delay_1_mant;
  reg  x_delayed_sign;
  reg [5:0] x_delayed_exp;
  reg [12:0] x_delayed_mant;
  FpxxMul u_cy ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_y_sign),
    .exp_a_p0(io_op_y_exp),
    .op_a_p0_mant(io_op_y_mant),
    .op_b_p0_sign(io_cos_sign),
    .exp_b_p0(io_cos_exp),
    .op_b_p0_mant(io_cos_mant),
    .io_result_vld(u_cy_io_result_vld),
    .io_result_sign(u_cy_io_result_sign),
    .io_result_exp(u_cy_io_result_exp),
    .io_result_mant(u_cy_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_sy ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_y_sign),
    .exp_a_p0(io_op_y_exp),
    .op_a_p0_mant(io_op_y_mant),
    .op_b_p0_sign(io_sin_sign),
    .exp_b_p0(io_sin_exp),
    .op_b_p0_mant(io_sin_mant),
    .io_result_vld(u_sy_io_result_vld),
    .io_result_sign(u_sy_io_result_sign),
    .io_result_exp(u_sy_io_result_exp),
    .io_result_mant(u_sy_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_cz ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_z_sign),
    .exp_a_p0(io_op_z_exp),
    .op_a_p0_mant(io_op_z_mant),
    .op_b_p0_sign(io_cos_sign),
    .exp_b_p0(io_cos_exp),
    .op_b_p0_mant(io_cos_mant),
    .io_result_vld(u_cz_io_result_vld),
    .io_result_sign(u_cz_io_result_sign),
    .io_result_exp(u_cz_io_result_exp),
    .io_result_mant(u_cz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_sz ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_z_sign),
    .exp_a_p0(io_op_z_exp),
    .op_a_p0_mant(io_op_z_mant),
    .op_b_p0_sign(io_sin_sign),
    .exp_b_p0(io_sin_exp),
    .op_b_p0_mant(io_sin_mant),
    .io_result_vld(u_sz_io_result_vld),
    .io_result_sign(u_sz_io_result_sign),
    .io_result_exp(u_sz_io_result_exp),
    .io_result_mant(u_sz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_cy_sz ( 
    .io_op_vld(cy_vld),
    .io_op_a_sign(cy_sign),
    .io_op_a_exp(cy_exp),
    .io_op_a_mant(cy_mant),
    .io_op_b_sign(sz_sign),
    .io_op_b_exp(sz_exp),
    .io_op_b_mant(sz_mant),
    .io_result_vld(u_cy_sz_io_result_vld),
    .io_result_sign(u_cy_sz_io_result_sign),
    .io_result_exp(u_cy_sz_io_result_exp),
    .io_result_mant(u_cy_sz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_sy_cz ( 
    .p0_vld(sy_vld),
    .op_a_p0_sign(sy_sign),
    .op_a_p0_exp(sy_exp),
    .op_a_p0_mant(sy_mant),
    .op_b_p0_sign(cz_sign),
    .op_b_p0_exp(cz_exp),
    .op_b_p0_mant(cz_mant),
    .io_result_vld(u_sy_cz_io_result_vld),
    .io_result_sign(u_sy_cz_io_result_sign),
    .io_result_exp(u_sy_cz_io_result_exp),
    .io_result_mant(u_sy_cz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign cy_vld = u_cy_io_result_vld;
  assign cy_sign = u_cy_io_result_sign;
  assign cy_exp = u_cy_io_result_exp;
  assign cy_mant = u_cy_io_result_mant;
  assign sy_vld = u_sy_io_result_vld;
  assign sy_sign = u_sy_io_result_sign;
  assign sy_exp = u_sy_io_result_exp;
  assign sy_mant = u_sy_io_result_mant;
  assign cz_vld = u_cz_io_result_vld;
  assign cz_sign = u_cz_io_result_sign;
  assign cz_exp = u_cz_io_result_exp;
  assign cz_mant = u_cz_io_result_mant;
  assign sz_vld = u_sz_io_result_vld;
  assign sz_sign = u_sz_io_result_sign;
  assign sz_exp = u_sz_io_result_exp;
  assign sz_mant = u_sz_io_result_mant;
  assign cy_sz_vld = u_cy_sz_io_result_vld;
  assign cy_sz_sign = u_cy_sz_io_result_sign;
  assign cy_sz_exp = u_cy_sz_io_result_exp;
  assign cy_sz_mant = u_cy_sz_io_result_mant;
  assign sy_cz_vld = u_sy_cz_io_result_vld;
  assign sy_cz_sign = u_sy_cz_io_result_sign;
  assign sy_cz_exp = u_sy_cz_io_result_exp;
  assign sy_cz_mant = u_sy_cz_io_result_mant;
  assign io_result_vld = cy_vld;
  assign io_result_x_sign = x_delayed_sign;
  assign io_result_x_exp = x_delayed_exp;
  assign io_result_x_mant = x_delayed_mant;
  assign io_result_y_sign = cy_sz_sign;
  assign io_result_y_exp = cy_sz_exp;
  assign io_result_y_mant = cy_sz_mant;
  assign io_result_z_sign = sy_cz_sign;
  assign io_result_z_exp = sy_cz_exp;
  assign io_result_z_mant = sy_cz_mant;
  always @ (posedge clk) begin
    io_op_x_delay_1_sign <= io_op_x_sign;
    io_op_x_delay_1_exp <= io_op_x_exp;
    io_op_x_delay_1_mant <= io_op_x_mant;
    x_delayed_sign <= io_op_x_delay_1_sign;
    x_delayed_exp <= io_op_x_delay_1_exp;
    x_delayed_mant <= io_op_x_delay_1_mant;
  end

endmodule

module RotateY (
      input   io_op_vld,
      input   io_op_x_sign,
      input  [5:0] io_op_x_exp,
      input  [12:0] io_op_x_mant,
      input   io_op_y_sign,
      input  [5:0] io_op_y_exp,
      input  [12:0] io_op_y_mant,
      input   io_op_z_sign,
      input  [5:0] io_op_z_exp,
      input  [12:0] io_op_z_mant,
      input   io_sin_sign,
      input  [5:0] io_sin_exp,
      input  [12:0] io_sin_mant,
      input   io_cos_sign,
      input  [5:0] io_cos_exp,
      input  [12:0] io_cos_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_cx_io_result_vld;
  wire  u_cx_io_result_sign;
  wire [5:0] u_cx_io_result_exp;
  wire [12:0] u_cx_io_result_mant;
  wire  u_sx_io_result_vld;
  wire  u_sx_io_result_sign;
  wire [5:0] u_sx_io_result_exp;
  wire [12:0] u_sx_io_result_mant;
  wire  u_cz_io_result_vld;
  wire  u_cz_io_result_sign;
  wire [5:0] u_cz_io_result_exp;
  wire [12:0] u_cz_io_result_mant;
  wire  u_sz_io_result_vld;
  wire  u_sz_io_result_sign;
  wire [5:0] u_sz_io_result_exp;
  wire [12:0] u_sz_io_result_mant;
  wire  u_cx_sz_io_result_vld;
  wire  u_cx_sz_io_result_sign;
  wire [5:0] u_cx_sz_io_result_exp;
  wire [12:0] u_cx_sz_io_result_mant;
  wire  u_cz_sx_io_result_vld;
  wire  u_cz_sx_io_result_sign;
  wire [5:0] u_cz_sx_io_result_exp;
  wire [12:0] u_cz_sx_io_result_mant;
  wire  cx_vld;
  wire  cx_sign;
  wire [5:0] cx_exp;
  wire [12:0] cx_mant;
  wire  sx_vld;
  wire  sx_sign;
  wire [5:0] sx_exp;
  wire [12:0] sx_mant;
  wire  cz_vld;
  wire  cz_sign;
  wire [5:0] cz_exp;
  wire [12:0] cz_mant;
  wire  sz_vld;
  wire  sz_sign;
  wire [5:0] sz_exp;
  wire [12:0] sz_mant;
  wire  cx_sz_vld;
  wire  cz_sx_vld;
  wire  cx_sz_sign;
  wire [5:0] cx_sz_exp;
  wire [12:0] cx_sz_mant;
  wire  cz_sx_sign;
  wire [5:0] cz_sx_exp;
  wire [12:0] cz_sx_mant;
  reg  io_op_y_delay_1_sign;
  reg [5:0] io_op_y_delay_1_exp;
  reg [12:0] io_op_y_delay_1_mant;
  reg  y_delayed_sign;
  reg [5:0] y_delayed_exp;
  reg [12:0] y_delayed_mant;
  FpxxMul u_cx ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_x_sign),
    .exp_a_p0(io_op_x_exp),
    .op_a_p0_mant(io_op_x_mant),
    .op_b_p0_sign(io_cos_sign),
    .exp_b_p0(io_cos_exp),
    .op_b_p0_mant(io_cos_mant),
    .io_result_vld(u_cx_io_result_vld),
    .io_result_sign(u_cx_io_result_sign),
    .io_result_exp(u_cx_io_result_exp),
    .io_result_mant(u_cx_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_sx ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_x_sign),
    .exp_a_p0(io_op_x_exp),
    .op_a_p0_mant(io_op_x_mant),
    .op_b_p0_sign(io_sin_sign),
    .exp_b_p0(io_sin_exp),
    .op_b_p0_mant(io_sin_mant),
    .io_result_vld(u_sx_io_result_vld),
    .io_result_sign(u_sx_io_result_sign),
    .io_result_exp(u_sx_io_result_exp),
    .io_result_mant(u_sx_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_cz ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_z_sign),
    .exp_a_p0(io_op_z_exp),
    .op_a_p0_mant(io_op_z_mant),
    .op_b_p0_sign(io_cos_sign),
    .exp_b_p0(io_cos_exp),
    .op_b_p0_mant(io_cos_mant),
    .io_result_vld(u_cz_io_result_vld),
    .io_result_sign(u_cz_io_result_sign),
    .io_result_exp(u_cz_io_result_exp),
    .io_result_mant(u_cz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_sz ( 
    .p0_vld(io_op_vld),
    .op_a_p0_sign(io_op_z_sign),
    .exp_a_p0(io_op_z_exp),
    .op_a_p0_mant(io_op_z_mant),
    .op_b_p0_sign(io_sin_sign),
    .exp_b_p0(io_sin_exp),
    .op_b_p0_mant(io_sin_mant),
    .io_result_vld(u_sz_io_result_vld),
    .io_result_sign(u_sz_io_result_sign),
    .io_result_exp(u_sz_io_result_exp),
    .io_result_mant(u_sz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_cx_sz ( 
    .p0_vld(cx_vld),
    .op_a_p0_sign(cx_sign),
    .op_a_p0_exp(cx_exp),
    .op_a_p0_mant(cx_mant),
    .op_b_p0_sign(sz_sign),
    .op_b_p0_exp(sz_exp),
    .op_b_p0_mant(sz_mant),
    .io_result_vld(u_cx_sz_io_result_vld),
    .io_result_sign(u_cx_sz_io_result_sign),
    .io_result_exp(u_cx_sz_io_result_exp),
    .io_result_mant(u_cx_sz_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_cz_sx ( 
    .io_op_vld(cz_vld),
    .io_op_a_sign(cz_sign),
    .io_op_a_exp(cz_exp),
    .io_op_a_mant(cz_mant),
    .io_op_b_sign(sx_sign),
    .io_op_b_exp(sx_exp),
    .io_op_b_mant(sx_mant),
    .io_result_vld(u_cz_sx_io_result_vld),
    .io_result_sign(u_cz_sx_io_result_sign),
    .io_result_exp(u_cz_sx_io_result_exp),
    .io_result_mant(u_cz_sx_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign cx_vld = u_cx_io_result_vld;
  assign cx_sign = u_cx_io_result_sign;
  assign cx_exp = u_cx_io_result_exp;
  assign cx_mant = u_cx_io_result_mant;
  assign sx_vld = u_sx_io_result_vld;
  assign sx_sign = u_sx_io_result_sign;
  assign sx_exp = u_sx_io_result_exp;
  assign sx_mant = u_sx_io_result_mant;
  assign cz_vld = u_cz_io_result_vld;
  assign cz_sign = u_cz_io_result_sign;
  assign cz_exp = u_cz_io_result_exp;
  assign cz_mant = u_cz_io_result_mant;
  assign sz_vld = u_sz_io_result_vld;
  assign sz_sign = u_sz_io_result_sign;
  assign sz_exp = u_sz_io_result_exp;
  assign sz_mant = u_sz_io_result_mant;
  assign cx_sz_vld = u_cx_sz_io_result_vld;
  assign cx_sz_sign = u_cx_sz_io_result_sign;
  assign cx_sz_exp = u_cx_sz_io_result_exp;
  assign cx_sz_mant = u_cx_sz_io_result_mant;
  assign cz_sx_vld = u_cz_sx_io_result_vld;
  assign cz_sx_sign = u_cz_sx_io_result_sign;
  assign cz_sx_exp = u_cz_sx_io_result_exp;
  assign cz_sx_mant = u_cz_sx_io_result_mant;
  assign io_result_vld = cx_vld;
  assign io_result_x_sign = cx_sz_sign;
  assign io_result_x_exp = cx_sz_exp;
  assign io_result_x_mant = cx_sz_mant;
  assign io_result_y_sign = y_delayed_sign;
  assign io_result_y_exp = y_delayed_exp;
  assign io_result_y_mant = y_delayed_mant;
  assign io_result_z_sign = cz_sx_sign;
  assign io_result_z_exp = cz_sx_exp;
  assign io_result_z_mant = cz_sx_mant;
  always @ (posedge clk) begin
    io_op_y_delay_1_sign <= io_op_y_sign;
    io_op_y_delay_1_exp <= io_op_y_exp;
    io_op_y_delay_1_mant <= io_op_y_mant;
    y_delayed_sign <= io_op_y_delay_1_sign;
    y_delayed_exp <= io_op_y_delay_1_exp;
    y_delayed_mant <= io_op_y_delay_1_mant;
  end

endmodule

module Normalize_2_ (
      input   io_op_vld,
      input   io_op_x_sign,
      input  [5:0] io_op_x_exp,
      input  [12:0] io_op_x_mant,
      input   io_op_y_sign,
      input  [5:0] io_op_y_exp,
      input  [12:0] io_op_y_mant,
      input   io_op_z_sign,
      input  [5:0] io_op_z_exp,
      input  [12:0] io_op_z_mant,
      output  io_result_vld,
      output  io_result_x_sign,
      output [5:0] io_result_x_exp,
      output [12:0] io_result_x_mant,
      output  io_result_y_sign,
      output [5:0] io_result_y_exp,
      output [12:0] io_result_y_mant,
      output  io_result_z_sign,
      output [5:0] io_result_z_exp,
      output [12:0] io_result_z_mant,
      input   clk,
      input   reset);
  wire  u_dot_io_result_vld;
  wire  u_dot_io_result_sign;
  wire [5:0] u_dot_io_result_exp;
  wire [12:0] u_dot_io_result_mant;
  wire  u_rsqrt_io_result_vld;
  wire  u_rsqrt_io_result_sign;
  wire [5:0] u_rsqrt_io_result_exp;
  wire [12:0] u_rsqrt_io_result_mant;
  wire  u_vec_adj_io_result_vld;
  wire  u_vec_adj_io_result_x_sign;
  wire [5:0] u_vec_adj_io_result_x_exp;
  wire [12:0] u_vec_adj_io_result_x_mant;
  wire  u_vec_adj_io_result_y_sign;
  wire [5:0] u_vec_adj_io_result_y_exp;
  wire [12:0] u_vec_adj_io_result_y_mant;
  wire  u_vec_adj_io_result_z_sign;
  wire [5:0] u_vec_adj_io_result_z_exp;
  wire [12:0] u_vec_adj_io_result_z_mant;
  wire  vec_dot_vld;
  wire  vec_dot_sign;
  wire [5:0] vec_dot_exp;
  wire [12:0] vec_dot_mant;
  wire  denom_vld;
  wire  denom_sign;
  wire [5:0] denom_exp;
  wire [12:0] denom_mant;
  reg  io_op_delay_1_x_sign;
  reg [5:0] io_op_delay_1_x_exp;
  reg [12:0] io_op_delay_1_x_mant;
  reg  io_op_delay_1_y_sign;
  reg [5:0] io_op_delay_1_y_exp;
  reg [12:0] io_op_delay_1_y_mant;
  reg  io_op_delay_1_z_sign;
  reg [5:0] io_op_delay_1_z_exp;
  reg [12:0] io_op_delay_1_z_mant;
  reg  io_op_delay_2_x_sign;
  reg [5:0] io_op_delay_2_x_exp;
  reg [12:0] io_op_delay_2_x_mant;
  reg  io_op_delay_2_y_sign;
  reg [5:0] io_op_delay_2_y_exp;
  reg [12:0] io_op_delay_2_y_mant;
  reg  io_op_delay_2_z_sign;
  reg [5:0] io_op_delay_2_z_exp;
  reg [12:0] io_op_delay_2_z_mant;
  reg  io_op_delay_3_x_sign;
  reg [5:0] io_op_delay_3_x_exp;
  reg [12:0] io_op_delay_3_x_mant;
  reg  io_op_delay_3_y_sign;
  reg [5:0] io_op_delay_3_y_exp;
  reg [12:0] io_op_delay_3_y_mant;
  reg  io_op_delay_3_z_sign;
  reg [5:0] io_op_delay_3_z_exp;
  reg [12:0] io_op_delay_3_z_mant;
  reg  io_op_delay_4_x_sign;
  reg [5:0] io_op_delay_4_x_exp;
  reg [12:0] io_op_delay_4_x_mant;
  reg  io_op_delay_4_y_sign;
  reg [5:0] io_op_delay_4_y_exp;
  reg [12:0] io_op_delay_4_y_mant;
  reg  io_op_delay_4_z_sign;
  reg [5:0] io_op_delay_4_z_exp;
  reg [12:0] io_op_delay_4_z_mant;
  reg  io_op_delay_5_x_sign;
  reg [5:0] io_op_delay_5_x_exp;
  reg [12:0] io_op_delay_5_x_mant;
  reg  io_op_delay_5_y_sign;
  reg [5:0] io_op_delay_5_y_exp;
  reg [12:0] io_op_delay_5_y_mant;
  reg  io_op_delay_5_z_sign;
  reg [5:0] io_op_delay_5_z_exp;
  reg [12:0] io_op_delay_5_z_mant;
  reg  io_op_delay_6_x_sign;
  reg [5:0] io_op_delay_6_x_exp;
  reg [12:0] io_op_delay_6_x_mant;
  reg  io_op_delay_6_y_sign;
  reg [5:0] io_op_delay_6_y_exp;
  reg [12:0] io_op_delay_6_y_mant;
  reg  io_op_delay_6_z_sign;
  reg [5:0] io_op_delay_6_z_exp;
  reg [12:0] io_op_delay_6_z_mant;
  reg  op_delayed_x_sign;
  reg [5:0] op_delayed_x_exp;
  reg [12:0] op_delayed_x_mant;
  reg  op_delayed_y_sign;
  reg [5:0] op_delayed_y_exp;
  reg [12:0] op_delayed_y_mant;
  reg  op_delayed_z_sign;
  reg [5:0] op_delayed_z_exp;
  reg [12:0] op_delayed_z_mant;
  DotProduct u_dot ( 
    .io_op_vld(io_op_vld),
    .io_op_a_x_sign(io_op_x_sign),
    .io_op_a_x_exp(io_op_x_exp),
    .io_op_a_x_mant(io_op_x_mant),
    .io_op_a_y_sign(io_op_y_sign),
    .io_op_a_y_exp(io_op_y_exp),
    .io_op_a_y_mant(io_op_y_mant),
    .io_op_a_z_sign(io_op_z_sign),
    .io_op_a_z_exp(io_op_z_exp),
    .io_op_a_z_mant(io_op_z_mant),
    .io_op_b_x_sign(io_op_x_sign),
    .io_op_b_x_exp(io_op_x_exp),
    .io_op_b_x_mant(io_op_x_mant),
    .io_op_b_y_sign(io_op_y_sign),
    .io_op_b_y_exp(io_op_y_exp),
    .io_op_b_y_mant(io_op_y_mant),
    .io_op_b_z_sign(io_op_z_sign),
    .io_op_b_z_exp(io_op_z_exp),
    .io_op_b_z_mant(io_op_z_mant),
    .io_result_vld(u_dot_io_result_vld),
    .io_result_sign(u_dot_io_result_sign),
    .io_result_exp(u_dot_io_result_exp),
    .io_result_mant(u_dot_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxRSqrt_2_ u_rsqrt ( 
    .p0_vld(vec_dot_vld),
    .op_p0_sign(vec_dot_sign),
    .op_p0_exp(vec_dot_exp),
    .op_p0_mant(vec_dot_mant),
    .io_result_vld(u_rsqrt_io_result_vld),
    .io_result_sign(u_rsqrt_io_result_sign),
    .io_result_exp(u_rsqrt_io_result_exp),
    .io_result_mant(u_rsqrt_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  MulVecScalar u_vec_adj ( 
    .io_op_vld(denom_vld),
    .io_op_vec_x_sign(op_delayed_x_sign),
    .io_op_vec_x_exp(op_delayed_x_exp),
    .io_op_vec_x_mant(op_delayed_x_mant),
    .io_op_vec_y_sign(op_delayed_y_sign),
    .io_op_vec_y_exp(op_delayed_y_exp),
    .io_op_vec_y_mant(op_delayed_y_mant),
    .io_op_vec_z_sign(op_delayed_z_sign),
    .io_op_vec_z_exp(op_delayed_z_exp),
    .io_op_vec_z_mant(op_delayed_z_mant),
    .io_op_scalar_sign(denom_sign),
    .io_op_scalar_exp(denom_exp),
    .io_op_scalar_mant(denom_mant),
    .io_result_vld(u_vec_adj_io_result_vld),
    .io_result_x_sign(u_vec_adj_io_result_x_sign),
    .io_result_x_exp(u_vec_adj_io_result_x_exp),
    .io_result_x_mant(u_vec_adj_io_result_x_mant),
    .io_result_y_sign(u_vec_adj_io_result_y_sign),
    .io_result_y_exp(u_vec_adj_io_result_y_exp),
    .io_result_y_mant(u_vec_adj_io_result_y_mant),
    .io_result_z_sign(u_vec_adj_io_result_z_sign),
    .io_result_z_exp(u_vec_adj_io_result_z_exp),
    .io_result_z_mant(u_vec_adj_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign vec_dot_vld = u_dot_io_result_vld;
  assign vec_dot_sign = u_dot_io_result_sign;
  assign vec_dot_exp = u_dot_io_result_exp;
  assign vec_dot_mant = u_dot_io_result_mant;
  assign denom_vld = u_rsqrt_io_result_vld;
  assign denom_sign = u_rsqrt_io_result_sign;
  assign denom_exp = u_rsqrt_io_result_exp;
  assign denom_mant = u_rsqrt_io_result_mant;
  assign io_result_vld = u_vec_adj_io_result_vld;
  assign io_result_x_sign = u_vec_adj_io_result_x_sign;
  assign io_result_x_exp = u_vec_adj_io_result_x_exp;
  assign io_result_x_mant = u_vec_adj_io_result_x_mant;
  assign io_result_y_sign = u_vec_adj_io_result_y_sign;
  assign io_result_y_exp = u_vec_adj_io_result_y_exp;
  assign io_result_y_mant = u_vec_adj_io_result_y_mant;
  assign io_result_z_sign = u_vec_adj_io_result_z_sign;
  assign io_result_z_exp = u_vec_adj_io_result_z_exp;
  assign io_result_z_mant = u_vec_adj_io_result_z_mant;
  always @ (posedge clk) begin
    io_op_delay_1_x_sign <= io_op_x_sign;
    io_op_delay_1_x_exp <= io_op_x_exp;
    io_op_delay_1_x_mant <= io_op_x_mant;
    io_op_delay_1_y_sign <= io_op_y_sign;
    io_op_delay_1_y_exp <= io_op_y_exp;
    io_op_delay_1_y_mant <= io_op_y_mant;
    io_op_delay_1_z_sign <= io_op_z_sign;
    io_op_delay_1_z_exp <= io_op_z_exp;
    io_op_delay_1_z_mant <= io_op_z_mant;
    io_op_delay_2_x_sign <= io_op_delay_1_x_sign;
    io_op_delay_2_x_exp <= io_op_delay_1_x_exp;
    io_op_delay_2_x_mant <= io_op_delay_1_x_mant;
    io_op_delay_2_y_sign <= io_op_delay_1_y_sign;
    io_op_delay_2_y_exp <= io_op_delay_1_y_exp;
    io_op_delay_2_y_mant <= io_op_delay_1_y_mant;
    io_op_delay_2_z_sign <= io_op_delay_1_z_sign;
    io_op_delay_2_z_exp <= io_op_delay_1_z_exp;
    io_op_delay_2_z_mant <= io_op_delay_1_z_mant;
    io_op_delay_3_x_sign <= io_op_delay_2_x_sign;
    io_op_delay_3_x_exp <= io_op_delay_2_x_exp;
    io_op_delay_3_x_mant <= io_op_delay_2_x_mant;
    io_op_delay_3_y_sign <= io_op_delay_2_y_sign;
    io_op_delay_3_y_exp <= io_op_delay_2_y_exp;
    io_op_delay_3_y_mant <= io_op_delay_2_y_mant;
    io_op_delay_3_z_sign <= io_op_delay_2_z_sign;
    io_op_delay_3_z_exp <= io_op_delay_2_z_exp;
    io_op_delay_3_z_mant <= io_op_delay_2_z_mant;
    io_op_delay_4_x_sign <= io_op_delay_3_x_sign;
    io_op_delay_4_x_exp <= io_op_delay_3_x_exp;
    io_op_delay_4_x_mant <= io_op_delay_3_x_mant;
    io_op_delay_4_y_sign <= io_op_delay_3_y_sign;
    io_op_delay_4_y_exp <= io_op_delay_3_y_exp;
    io_op_delay_4_y_mant <= io_op_delay_3_y_mant;
    io_op_delay_4_z_sign <= io_op_delay_3_z_sign;
    io_op_delay_4_z_exp <= io_op_delay_3_z_exp;
    io_op_delay_4_z_mant <= io_op_delay_3_z_mant;
    io_op_delay_5_x_sign <= io_op_delay_4_x_sign;
    io_op_delay_5_x_exp <= io_op_delay_4_x_exp;
    io_op_delay_5_x_mant <= io_op_delay_4_x_mant;
    io_op_delay_5_y_sign <= io_op_delay_4_y_sign;
    io_op_delay_5_y_exp <= io_op_delay_4_y_exp;
    io_op_delay_5_y_mant <= io_op_delay_4_y_mant;
    io_op_delay_5_z_sign <= io_op_delay_4_z_sign;
    io_op_delay_5_z_exp <= io_op_delay_4_z_exp;
    io_op_delay_5_z_mant <= io_op_delay_4_z_mant;
    io_op_delay_6_x_sign <= io_op_delay_5_x_sign;
    io_op_delay_6_x_exp <= io_op_delay_5_x_exp;
    io_op_delay_6_x_mant <= io_op_delay_5_x_mant;
    io_op_delay_6_y_sign <= io_op_delay_5_y_sign;
    io_op_delay_6_y_exp <= io_op_delay_5_y_exp;
    io_op_delay_6_y_mant <= io_op_delay_5_y_mant;
    io_op_delay_6_z_sign <= io_op_delay_5_z_sign;
    io_op_delay_6_z_exp <= io_op_delay_5_z_exp;
    io_op_delay_6_z_mant <= io_op_delay_5_z_mant;
    op_delayed_x_sign <= io_op_delay_6_x_sign;
    op_delayed_x_exp <= io_op_delay_6_x_exp;
    op_delayed_x_mant <= io_op_delay_6_x_mant;
    op_delayed_y_sign <= io_op_delay_6_y_sign;
    op_delayed_y_exp <= io_op_delay_6_y_exp;
    op_delayed_y_mant <= io_op_delay_6_y_mant;
    op_delayed_z_sign <= io_op_delay_6_z_sign;
    op_delayed_z_exp <= io_op_delay_6_z_exp;
    op_delayed_z_mant <= io_op_delay_6_z_mant;
  end

endmodule

module SphereIntersect (
      input   io_op_vld,
      input   io_sphere_center_x_sign,
      input  [5:0] io_sphere_center_x_exp,
      input  [12:0] io_sphere_center_x_mant,
      input   io_sphere_center_y_sign,
      input  [5:0] io_sphere_center_y_exp,
      input  [12:0] io_sphere_center_y_mant,
      input   io_sphere_center_z_sign,
      input  [5:0] io_sphere_center_z_exp,
      input  [12:0] io_sphere_center_z_mant,
      input   io_sphere_radius2_sign,
      input  [5:0] io_sphere_radius2_exp,
      input  [12:0] io_sphere_radius2_mant,
      input   io_ray_origin_x_sign,
      input  [5:0] io_ray_origin_x_exp,
      input  [12:0] io_ray_origin_x_mant,
      input   io_ray_origin_y_sign,
      input  [5:0] io_ray_origin_y_exp,
      input  [12:0] io_ray_origin_y_mant,
      input   io_ray_origin_z_sign,
      input  [5:0] io_ray_origin_z_exp,
      input  [12:0] io_ray_origin_z_mant,
      input   io_ray_direction_x_sign,
      input  [5:0] io_ray_direction_x_exp,
      input  [12:0] io_ray_direction_x_mant,
      input   io_ray_direction_y_sign,
      input  [5:0] io_ray_direction_y_exp,
      input  [12:0] io_ray_direction_y_mant,
      input   io_ray_direction_z_sign,
      input  [5:0] io_ray_direction_z_exp,
      input  [12:0] io_ray_direction_z_mant,
      output  io_early_intersects_vld,
      output  io_early_intersects,
      output  io_early_normal_vld,
      output  io_early_normal_x_sign,
      output [5:0] io_early_normal_x_exp,
      output [12:0] io_early_normal_x_mant,
      output  io_early_normal_y_sign,
      output [5:0] io_early_normal_y_exp,
      output [12:0] io_early_normal_y_mant,
      output  io_early_normal_z_sign,
      output [5:0] io_early_normal_z_exp,
      output [12:0] io_early_normal_z_mant,
      output  io_result_vld,
      output  io_result_intersects,
      output  io_result_t_sign,
      output [5:0] io_result_t_exp,
      output [12:0] io_result_t_mant,
      output  io_result_intersection_x_sign,
      output [5:0] io_result_intersection_x_exp,
      output [12:0] io_result_intersection_x_mant,
      output  io_result_intersection_y_sign,
      output [5:0] io_result_intersection_y_exp,
      output [12:0] io_result_intersection_y_mant,
      output  io_result_intersection_z_sign,
      output [5:0] io_result_intersection_z_exp,
      output [12:0] io_result_intersection_z_mant,
      output  io_result_normal_x_sign,
      output [5:0] io_result_normal_x_exp,
      output [12:0] io_result_normal_x_mant,
      output  io_result_normal_y_sign,
      output [5:0] io_result_normal_y_exp,
      output [12:0] io_result_normal_y_mant,
      output  io_result_normal_z_sign,
      output [5:0] io_result_normal_z_exp,
      output [12:0] io_result_normal_z_mant,
      output  io_result_reflect_ray_origin_x_sign,
      output [5:0] io_result_reflect_ray_origin_x_exp,
      output [12:0] io_result_reflect_ray_origin_x_mant,
      output  io_result_reflect_ray_origin_y_sign,
      output [5:0] io_result_reflect_ray_origin_y_exp,
      output [12:0] io_result_reflect_ray_origin_y_mant,
      output  io_result_reflect_ray_origin_z_sign,
      output [5:0] io_result_reflect_ray_origin_z_exp,
      output [12:0] io_result_reflect_ray_origin_z_mant,
      output  io_result_reflect_ray_direction_x_sign,
      output [5:0] io_result_reflect_ray_direction_x_exp,
      output [12:0] io_result_reflect_ray_direction_x_mant,
      output  io_result_reflect_ray_direction_y_sign,
      output [5:0] io_result_reflect_ray_direction_y_exp,
      output [12:0] io_result_reflect_ray_direction_y_mant,
      output  io_result_reflect_ray_direction_z_sign,
      output [5:0] io_result_reflect_ray_direction_z_exp,
      output [12:0] io_result_reflect_ray_direction_z_mant,
      output  io_result_ray_origin_x_sign,
      output [5:0] io_result_ray_origin_x_exp,
      output [12:0] io_result_ray_origin_x_mant,
      output  io_result_ray_origin_y_sign,
      output [5:0] io_result_ray_origin_y_exp,
      output [12:0] io_result_ray_origin_y_mant,
      output  io_result_ray_origin_z_sign,
      output [5:0] io_result_ray_origin_z_exp,
      output [12:0] io_result_ray_origin_z_mant,
      output  io_result_ray_direction_x_sign,
      output [5:0] io_result_ray_direction_x_exp,
      output [12:0] io_result_ray_direction_x_mant,
      output  io_result_ray_direction_y_sign,
      output [5:0] io_result_ray_direction_y_exp,
      output [12:0] io_result_ray_direction_y_mant,
      output  io_result_ray_direction_z_sign,
      output [5:0] io_result_ray_direction_z_exp,
      output [12:0] io_result_ray_direction_z_mant,
      input   clk,
      input   reset);
  wire  u_c0r0_io_result_vld;
  wire  u_c0r0_io_result_x_sign;
  wire [5:0] u_c0r0_io_result_x_exp;
  wire [12:0] u_c0r0_io_result_x_mant;
  wire  u_c0r0_io_result_y_sign;
  wire [5:0] u_c0r0_io_result_y_exp;
  wire [12:0] u_c0r0_io_result_y_mant;
  wire  u_c0r0_io_result_z_sign;
  wire [5:0] u_c0r0_io_result_z_exp;
  wire [12:0] u_c0r0_io_result_z_mant;
  wire  u_dot_tca_io_result_vld;
  wire  u_dot_tca_io_result_sign;
  wire [5:0] u_dot_tca_io_result_exp;
  wire [12:0] u_dot_tca_io_result_mant;
  wire  u_dot_c0r0_c0r0_io_result_vld;
  wire  u_dot_c0r0_c0r0_io_result_sign;
  wire [5:0] u_dot_c0r0_c0r0_io_result_exp;
  wire [12:0] u_dot_c0r0_c0r0_io_result_mant;
  wire  u_tca_tca_io_result_vld;
  wire  u_tca_tca_io_result_sign;
  wire [5:0] u_tca_tca_io_result_exp;
  wire [12:0] u_tca_tca_io_result_mant;
  wire  u_d2_io_result_vld;
  wire  u_d2_io_result_sign;
  wire [5:0] u_d2_io_result_exp;
  wire [12:0] u_d2_io_result_mant;
  wire  u_radius2_m_d2_io_result_vld;
  wire  u_radius2_m_d2_io_result_sign;
  wire [5:0] u_radius2_m_d2_io_result_exp;
  wire [12:0] u_radius2_m_d2_io_result_mant;
  wire  u_thc_io_result_vld;
  wire  u_thc_io_result_sign;
  wire [5:0] u_thc_io_result_exp;
  wire [12:0] u_thc_io_result_mant;
  wire  u_t0_io_result_vld;
  wire  u_t0_io_result_sign;
  wire [5:0] u_t0_io_result_exp;
  wire [12:0] u_t0_io_result_mant;
  wire  u_t1_io_result_vld;
  wire  u_t1_io_result_sign;
  wire [5:0] u_t1_io_result_exp;
  wire [12:0] u_t1_io_result_mant;
  wire  u_intersection_io_result_vld;
  wire  u_intersection_io_result_x_sign;
  wire [5:0] u_intersection_io_result_x_exp;
  wire [12:0] u_intersection_io_result_x_mant;
  wire  u_intersection_io_result_y_sign;
  wire [5:0] u_intersection_io_result_y_exp;
  wire [12:0] u_intersection_io_result_y_mant;
  wire  u_intersection_io_result_z_sign;
  wire [5:0] u_intersection_io_result_z_exp;
  wire [12:0] u_intersection_io_result_z_mant;
  wire  u_normal_raw_io_result_vld;
  wire  u_normal_raw_io_result_x_sign;
  wire [5:0] u_normal_raw_io_result_x_exp;
  wire [12:0] u_normal_raw_io_result_x_mant;
  wire  u_normal_raw_io_result_y_sign;
  wire [5:0] u_normal_raw_io_result_y_exp;
  wire [12:0] u_normal_raw_io_result_y_mant;
  wire  u_normal_raw_io_result_z_sign;
  wire [5:0] u_normal_raw_io_result_z_exp;
  wire [12:0] u_normal_raw_io_result_z_mant;
  wire  u_normalize_io_result_vld;
  wire  u_normalize_io_result_x_sign;
  wire [5:0] u_normalize_io_result_x_exp;
  wire [12:0] u_normalize_io_result_x_mant;
  wire  u_normalize_io_result_y_sign;
  wire [5:0] u_normalize_io_result_y_exp;
  wire [12:0] u_normalize_io_result_y_mant;
  wire  u_normalize_io_result_z_sign;
  wire [5:0] u_normalize_io_result_z_exp;
  wire [12:0] u_normalize_io_result_z_mant;
  wire  u_dir_dot_normal_io_result_vld;
  wire  u_dir_dot_normal_io_result_sign;
  wire [5:0] u_dir_dot_normal_io_result_exp;
  wire [12:0] u_dir_dot_normal_io_result_mant;
  wire  u_dir_mirror_io_result_vld;
  wire  u_dir_mirror_io_result_x_sign;
  wire [5:0] u_dir_mirror_io_result_x_exp;
  wire [12:0] u_dir_mirror_io_result_x_mant;
  wire  u_dir_mirror_io_result_y_sign;
  wire [5:0] u_dir_mirror_io_result_y_exp;
  wire [12:0] u_dir_mirror_io_result_y_mant;
  wire  u_dir_mirror_io_result_z_sign;
  wire [5:0] u_dir_mirror_io_result_z_exp;
  wire [12:0] u_dir_mirror_io_result_z_mant;
  wire  u_reflect_dir_io_result_vld;
  wire  u_reflect_dir_io_result_x_sign;
  wire [5:0] u_reflect_dir_io_result_x_exp;
  wire [12:0] u_reflect_dir_io_result_x_mant;
  wire  u_reflect_dir_io_result_y_sign;
  wire [5:0] u_reflect_dir_io_result_y_exp;
  wire [12:0] u_reflect_dir_io_result_y_mant;
  wire  u_reflect_dir_io_result_z_sign;
  wire [5:0] u_reflect_dir_io_result_z_exp;
  wire [12:0] u_reflect_dir_io_result_z_mant;
  wire [19:0] _zz_6_;
  wire [19:0] _zz_7_;
  wire [19:0] _zz_8_;
  wire [19:0] _zz_9_;
  wire  c0r0_vld;
  wire  c0r0_x_sign;
  wire [5:0] c0r0_x_exp;
  wire [12:0] c0r0_x_mant;
  wire  c0r0_y_sign;
  wire [5:0] c0r0_y_exp;
  wire [12:0] c0r0_y_mant;
  wire  c0r0_z_sign;
  wire [5:0] c0r0_z_exp;
  wire [12:0] c0r0_z_mant;
  reg  io_ray_direction_delay_1_x_sign;
  reg [5:0] io_ray_direction_delay_1_x_exp;
  reg [12:0] io_ray_direction_delay_1_x_mant;
  reg  io_ray_direction_delay_1_y_sign;
  reg [5:0] io_ray_direction_delay_1_y_exp;
  reg [12:0] io_ray_direction_delay_1_y_mant;
  reg  io_ray_direction_delay_1_z_sign;
  reg [5:0] io_ray_direction_delay_1_z_exp;
  reg [12:0] io_ray_direction_delay_1_z_mant;
  reg  dir_delayed_c0r0_x_sign;
  reg [5:0] dir_delayed_c0r0_x_exp;
  reg [12:0] dir_delayed_c0r0_x_mant;
  reg  dir_delayed_c0r0_y_sign;
  reg [5:0] dir_delayed_c0r0_y_exp;
  reg [12:0] dir_delayed_c0r0_y_mant;
  reg  dir_delayed_c0r0_z_sign;
  reg [5:0] dir_delayed_c0r0_z_exp;
  reg [12:0] dir_delayed_c0r0_z_mant;
  wire  tca_vld;
  wire  tca_sign;
  wire [5:0] tca_exp;
  wire [12:0] tca_mant;
  wire  intersects_tca;
  wire  c0r0_c0r0_vld;
  wire  c0r0_c0r0_sign;
  wire [5:0] c0r0_c0r0_exp;
  wire [12:0] c0r0_c0r0_mant;
  wire  tca_tca_vld;
  wire  tca_tca_sign;
  wire [5:0] tca_tca_exp;
  wire [12:0] tca_tca_mant;
  reg  c0r0_c0r0_delay_1_sign;
  reg [5:0] c0r0_c0r0_delay_1_exp;
  reg [12:0] c0r0_c0r0_delay_1_mant;
  reg  c0r0_c0r0_delayed_sign;
  reg [5:0] c0r0_c0r0_delayed_exp;
  reg [12:0] c0r0_c0r0_delayed_mant;
  wire  d2_vld;
  wire  d2_sign;
  wire [5:0] d2_exp;
  wire [12:0] d2_mant;
  reg  intersects_tca_delay_1;
  reg  intersects_tca_delay_2;
  reg  intersects_tca_delay_3;
  reg  intersects_tca_delayed_early;
  wire  radius2_ge_d2;
  reg  d2_vld_regNext;
  reg  _zz_1_;
  wire  radius2_m_d2_vld;
  wire  radius2_m_d2_sign;
  wire [5:0] radius2_m_d2_exp;
  wire [12:0] radius2_m_d2_mant;
  wire  intersects_d2;
  wire  thc_vld;
  wire  thc_sign;
  wire [5:0] thc_exp;
  wire [12:0] thc_mant;
  reg  tca_delay_1_sign;
  reg [5:0] tca_delay_1_exp;
  reg [12:0] tca_delay_1_mant;
  reg  tca_delay_2_sign;
  reg [5:0] tca_delay_2_exp;
  reg [12:0] tca_delay_2_mant;
  reg  tca_delay_3_sign;
  reg [5:0] tca_delay_3_exp;
  reg [12:0] tca_delay_3_mant;
  reg  tca_delay_4_sign;
  reg [5:0] tca_delay_4_exp;
  reg [12:0] tca_delay_4_mant;
  reg  tca_delay_5_sign;
  reg [5:0] tca_delay_5_exp;
  reg [12:0] tca_delay_5_mant;
  reg  tca_delay_6_sign;
  reg [5:0] tca_delay_6_exp;
  reg [12:0] tca_delay_6_mant;
  reg  tca_delayed_sign;
  reg [5:0] tca_delayed_exp;
  reg [12:0] tca_delayed_mant;
  wire  t0_vld;
  wire  t0_sign;
  wire [5:0] t0_exp;
  wire [12:0] t0_mant;
  wire  t1_vld;
  wire  t1_sign;
  wire [5:0] t1_exp;
  wire [12:0] t1_mant;
  wire  t_vld;
  wire  t_sign;
  wire [5:0] t_exp;
  wire [12:0] t_mant;
  reg  t0_vld_regNext;
  wire  _zz_2_;
  reg  _zz_3_;
  reg [5:0] _zz_4_;
  reg [12:0] _zz_5_;
  reg  dir_delayed_c0r0_delay_1_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_1_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_1_x_mant;
  reg  dir_delayed_c0r0_delay_1_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_1_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_1_y_mant;
  reg  dir_delayed_c0r0_delay_1_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_1_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_1_z_mant;
  reg  dir_delayed_c0r0_delay_2_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_2_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_2_x_mant;
  reg  dir_delayed_c0r0_delay_2_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_2_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_2_y_mant;
  reg  dir_delayed_c0r0_delay_2_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_2_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_2_z_mant;
  reg  dir_delayed_c0r0_delay_3_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_3_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_3_x_mant;
  reg  dir_delayed_c0r0_delay_3_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_3_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_3_y_mant;
  reg  dir_delayed_c0r0_delay_3_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_3_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_3_z_mant;
  reg  dir_delayed_c0r0_delay_4_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_4_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_4_x_mant;
  reg  dir_delayed_c0r0_delay_4_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_4_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_4_y_mant;
  reg  dir_delayed_c0r0_delay_4_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_4_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_4_z_mant;
  reg  dir_delayed_c0r0_delay_5_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_5_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_5_x_mant;
  reg  dir_delayed_c0r0_delay_5_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_5_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_5_y_mant;
  reg  dir_delayed_c0r0_delay_5_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_5_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_5_z_mant;
  reg  dir_delayed_c0r0_delay_6_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_6_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_6_x_mant;
  reg  dir_delayed_c0r0_delay_6_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_6_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_6_y_mant;
  reg  dir_delayed_c0r0_delay_6_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_6_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_6_z_mant;
  reg  dir_delayed_c0r0_delay_7_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_7_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_7_x_mant;
  reg  dir_delayed_c0r0_delay_7_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_7_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_7_y_mant;
  reg  dir_delayed_c0r0_delay_7_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_7_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_7_z_mant;
  reg  dir_delayed_c0r0_delay_8_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_8_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_8_x_mant;
  reg  dir_delayed_c0r0_delay_8_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_8_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_8_y_mant;
  reg  dir_delayed_c0r0_delay_8_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_8_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_8_z_mant;
  reg  dir_delayed_c0r0_delay_9_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_9_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_9_x_mant;
  reg  dir_delayed_c0r0_delay_9_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_9_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_9_y_mant;
  reg  dir_delayed_c0r0_delay_9_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_9_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_9_z_mant;
  reg  dir_delayed_c0r0_delay_10_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_10_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_10_x_mant;
  reg  dir_delayed_c0r0_delay_10_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_10_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_10_y_mant;
  reg  dir_delayed_c0r0_delay_10_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_10_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_10_z_mant;
  reg  dir_delayed_c0r0_delay_11_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_11_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_11_x_mant;
  reg  dir_delayed_c0r0_delay_11_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_11_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_11_y_mant;
  reg  dir_delayed_c0r0_delay_11_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_11_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_11_z_mant;
  reg  dir_delayed_c0r0_delay_12_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_12_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_12_x_mant;
  reg  dir_delayed_c0r0_delay_12_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_12_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_12_y_mant;
  reg  dir_delayed_c0r0_delay_12_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_12_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_12_z_mant;
  reg  dir_delayed_c0r0_delay_13_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_13_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_13_x_mant;
  reg  dir_delayed_c0r0_delay_13_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_13_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_13_y_mant;
  reg  dir_delayed_c0r0_delay_13_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_13_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_13_z_mant;
  reg  dir_delayed_c0r0_delay_14_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_14_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_14_x_mant;
  reg  dir_delayed_c0r0_delay_14_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_14_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_14_y_mant;
  reg  dir_delayed_c0r0_delay_14_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_14_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_14_z_mant;
  reg  dir_delayed_c0r0_delay_15_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_15_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_15_x_mant;
  reg  dir_delayed_c0r0_delay_15_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_15_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_15_y_mant;
  reg  dir_delayed_c0r0_delay_15_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_15_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_15_z_mant;
  reg  dir_delayed_intersect_x_sign;
  reg [5:0] dir_delayed_intersect_x_exp;
  reg [12:0] dir_delayed_intersect_x_mant;
  reg  dir_delayed_intersect_y_sign;
  reg [5:0] dir_delayed_intersect_y_exp;
  reg [12:0] dir_delayed_intersect_y_mant;
  reg  dir_delayed_intersect_z_sign;
  reg [5:0] dir_delayed_intersect_z_exp;
  reg [12:0] dir_delayed_intersect_z_mant;
  reg  io_ray_origin_delay_1_x_sign;
  reg [5:0] io_ray_origin_delay_1_x_exp;
  reg [12:0] io_ray_origin_delay_1_x_mant;
  reg  io_ray_origin_delay_1_y_sign;
  reg [5:0] io_ray_origin_delay_1_y_exp;
  reg [12:0] io_ray_origin_delay_1_y_mant;
  reg  io_ray_origin_delay_1_z_sign;
  reg [5:0] io_ray_origin_delay_1_z_exp;
  reg [12:0] io_ray_origin_delay_1_z_mant;
  reg  io_ray_origin_delay_2_x_sign;
  reg [5:0] io_ray_origin_delay_2_x_exp;
  reg [12:0] io_ray_origin_delay_2_x_mant;
  reg  io_ray_origin_delay_2_y_sign;
  reg [5:0] io_ray_origin_delay_2_y_exp;
  reg [12:0] io_ray_origin_delay_2_y_mant;
  reg  io_ray_origin_delay_2_z_sign;
  reg [5:0] io_ray_origin_delay_2_z_exp;
  reg [12:0] io_ray_origin_delay_2_z_mant;
  reg  io_ray_origin_delay_3_x_sign;
  reg [5:0] io_ray_origin_delay_3_x_exp;
  reg [12:0] io_ray_origin_delay_3_x_mant;
  reg  io_ray_origin_delay_3_y_sign;
  reg [5:0] io_ray_origin_delay_3_y_exp;
  reg [12:0] io_ray_origin_delay_3_y_mant;
  reg  io_ray_origin_delay_3_z_sign;
  reg [5:0] io_ray_origin_delay_3_z_exp;
  reg [12:0] io_ray_origin_delay_3_z_mant;
  reg  io_ray_origin_delay_4_x_sign;
  reg [5:0] io_ray_origin_delay_4_x_exp;
  reg [12:0] io_ray_origin_delay_4_x_mant;
  reg  io_ray_origin_delay_4_y_sign;
  reg [5:0] io_ray_origin_delay_4_y_exp;
  reg [12:0] io_ray_origin_delay_4_y_mant;
  reg  io_ray_origin_delay_4_z_sign;
  reg [5:0] io_ray_origin_delay_4_z_exp;
  reg [12:0] io_ray_origin_delay_4_z_mant;
  reg  io_ray_origin_delay_5_x_sign;
  reg [5:0] io_ray_origin_delay_5_x_exp;
  reg [12:0] io_ray_origin_delay_5_x_mant;
  reg  io_ray_origin_delay_5_y_sign;
  reg [5:0] io_ray_origin_delay_5_y_exp;
  reg [12:0] io_ray_origin_delay_5_y_mant;
  reg  io_ray_origin_delay_5_z_sign;
  reg [5:0] io_ray_origin_delay_5_z_exp;
  reg [12:0] io_ray_origin_delay_5_z_mant;
  reg  io_ray_origin_delay_6_x_sign;
  reg [5:0] io_ray_origin_delay_6_x_exp;
  reg [12:0] io_ray_origin_delay_6_x_mant;
  reg  io_ray_origin_delay_6_y_sign;
  reg [5:0] io_ray_origin_delay_6_y_exp;
  reg [12:0] io_ray_origin_delay_6_y_mant;
  reg  io_ray_origin_delay_6_z_sign;
  reg [5:0] io_ray_origin_delay_6_z_exp;
  reg [12:0] io_ray_origin_delay_6_z_mant;
  reg  io_ray_origin_delay_7_x_sign;
  reg [5:0] io_ray_origin_delay_7_x_exp;
  reg [12:0] io_ray_origin_delay_7_x_mant;
  reg  io_ray_origin_delay_7_y_sign;
  reg [5:0] io_ray_origin_delay_7_y_exp;
  reg [12:0] io_ray_origin_delay_7_y_mant;
  reg  io_ray_origin_delay_7_z_sign;
  reg [5:0] io_ray_origin_delay_7_z_exp;
  reg [12:0] io_ray_origin_delay_7_z_mant;
  reg  io_ray_origin_delay_8_x_sign;
  reg [5:0] io_ray_origin_delay_8_x_exp;
  reg [12:0] io_ray_origin_delay_8_x_mant;
  reg  io_ray_origin_delay_8_y_sign;
  reg [5:0] io_ray_origin_delay_8_y_exp;
  reg [12:0] io_ray_origin_delay_8_y_mant;
  reg  io_ray_origin_delay_8_z_sign;
  reg [5:0] io_ray_origin_delay_8_z_exp;
  reg [12:0] io_ray_origin_delay_8_z_mant;
  reg  io_ray_origin_delay_9_x_sign;
  reg [5:0] io_ray_origin_delay_9_x_exp;
  reg [12:0] io_ray_origin_delay_9_x_mant;
  reg  io_ray_origin_delay_9_y_sign;
  reg [5:0] io_ray_origin_delay_9_y_exp;
  reg [12:0] io_ray_origin_delay_9_y_mant;
  reg  io_ray_origin_delay_9_z_sign;
  reg [5:0] io_ray_origin_delay_9_z_exp;
  reg [12:0] io_ray_origin_delay_9_z_mant;
  reg  io_ray_origin_delay_10_x_sign;
  reg [5:0] io_ray_origin_delay_10_x_exp;
  reg [12:0] io_ray_origin_delay_10_x_mant;
  reg  io_ray_origin_delay_10_y_sign;
  reg [5:0] io_ray_origin_delay_10_y_exp;
  reg [12:0] io_ray_origin_delay_10_y_mant;
  reg  io_ray_origin_delay_10_z_sign;
  reg [5:0] io_ray_origin_delay_10_z_exp;
  reg [12:0] io_ray_origin_delay_10_z_mant;
  reg  io_ray_origin_delay_11_x_sign;
  reg [5:0] io_ray_origin_delay_11_x_exp;
  reg [12:0] io_ray_origin_delay_11_x_mant;
  reg  io_ray_origin_delay_11_y_sign;
  reg [5:0] io_ray_origin_delay_11_y_exp;
  reg [12:0] io_ray_origin_delay_11_y_mant;
  reg  io_ray_origin_delay_11_z_sign;
  reg [5:0] io_ray_origin_delay_11_z_exp;
  reg [12:0] io_ray_origin_delay_11_z_mant;
  reg  io_ray_origin_delay_12_x_sign;
  reg [5:0] io_ray_origin_delay_12_x_exp;
  reg [12:0] io_ray_origin_delay_12_x_mant;
  reg  io_ray_origin_delay_12_y_sign;
  reg [5:0] io_ray_origin_delay_12_y_exp;
  reg [12:0] io_ray_origin_delay_12_y_mant;
  reg  io_ray_origin_delay_12_z_sign;
  reg [5:0] io_ray_origin_delay_12_z_exp;
  reg [12:0] io_ray_origin_delay_12_z_mant;
  reg  io_ray_origin_delay_13_x_sign;
  reg [5:0] io_ray_origin_delay_13_x_exp;
  reg [12:0] io_ray_origin_delay_13_x_mant;
  reg  io_ray_origin_delay_13_y_sign;
  reg [5:0] io_ray_origin_delay_13_y_exp;
  reg [12:0] io_ray_origin_delay_13_y_mant;
  reg  io_ray_origin_delay_13_z_sign;
  reg [5:0] io_ray_origin_delay_13_z_exp;
  reg [12:0] io_ray_origin_delay_13_z_mant;
  reg  io_ray_origin_delay_14_x_sign;
  reg [5:0] io_ray_origin_delay_14_x_exp;
  reg [12:0] io_ray_origin_delay_14_x_mant;
  reg  io_ray_origin_delay_14_y_sign;
  reg [5:0] io_ray_origin_delay_14_y_exp;
  reg [12:0] io_ray_origin_delay_14_y_mant;
  reg  io_ray_origin_delay_14_z_sign;
  reg [5:0] io_ray_origin_delay_14_z_exp;
  reg [12:0] io_ray_origin_delay_14_z_mant;
  reg  io_ray_origin_delay_15_x_sign;
  reg [5:0] io_ray_origin_delay_15_x_exp;
  reg [12:0] io_ray_origin_delay_15_x_mant;
  reg  io_ray_origin_delay_15_y_sign;
  reg [5:0] io_ray_origin_delay_15_y_exp;
  reg [12:0] io_ray_origin_delay_15_y_mant;
  reg  io_ray_origin_delay_15_z_sign;
  reg [5:0] io_ray_origin_delay_15_z_exp;
  reg [12:0] io_ray_origin_delay_15_z_mant;
  reg  io_ray_origin_delay_16_x_sign;
  reg [5:0] io_ray_origin_delay_16_x_exp;
  reg [12:0] io_ray_origin_delay_16_x_mant;
  reg  io_ray_origin_delay_16_y_sign;
  reg [5:0] io_ray_origin_delay_16_y_exp;
  reg [12:0] io_ray_origin_delay_16_y_mant;
  reg  io_ray_origin_delay_16_z_sign;
  reg [5:0] io_ray_origin_delay_16_z_exp;
  reg [12:0] io_ray_origin_delay_16_z_mant;
  reg  io_ray_origin_delay_17_x_sign;
  reg [5:0] io_ray_origin_delay_17_x_exp;
  reg [12:0] io_ray_origin_delay_17_x_mant;
  reg  io_ray_origin_delay_17_y_sign;
  reg [5:0] io_ray_origin_delay_17_y_exp;
  reg [12:0] io_ray_origin_delay_17_y_mant;
  reg  io_ray_origin_delay_17_z_sign;
  reg [5:0] io_ray_origin_delay_17_z_exp;
  reg [12:0] io_ray_origin_delay_17_z_mant;
  reg  origin_delayed_intersect_x_sign;
  reg [5:0] origin_delayed_intersect_x_exp;
  reg [12:0] origin_delayed_intersect_x_mant;
  reg  origin_delayed_intersect_y_sign;
  reg [5:0] origin_delayed_intersect_y_exp;
  reg [12:0] origin_delayed_intersect_y_mant;
  reg  origin_delayed_intersect_z_sign;
  reg [5:0] origin_delayed_intersect_z_exp;
  reg [12:0] origin_delayed_intersect_z_mant;
  wire  intersection_vld;
  wire  intersection_x_sign;
  wire [5:0] intersection_x_exp;
  wire [12:0] intersection_x_mant;
  wire  intersection_y_sign;
  wire [5:0] intersection_y_exp;
  wire [12:0] intersection_y_mant;
  wire  intersection_z_sign;
  wire [5:0] intersection_z_exp;
  wire [12:0] intersection_z_mant;
  reg  io_sphere_center_delay_1_x_sign;
  reg [5:0] io_sphere_center_delay_1_x_exp;
  reg [12:0] io_sphere_center_delay_1_x_mant;
  reg  io_sphere_center_delay_1_y_sign;
  reg [5:0] io_sphere_center_delay_1_y_exp;
  reg [12:0] io_sphere_center_delay_1_y_mant;
  reg  io_sphere_center_delay_1_z_sign;
  reg [5:0] io_sphere_center_delay_1_z_exp;
  reg [12:0] io_sphere_center_delay_1_z_mant;
  reg  io_sphere_center_delay_2_x_sign;
  reg [5:0] io_sphere_center_delay_2_x_exp;
  reg [12:0] io_sphere_center_delay_2_x_mant;
  reg  io_sphere_center_delay_2_y_sign;
  reg [5:0] io_sphere_center_delay_2_y_exp;
  reg [12:0] io_sphere_center_delay_2_y_mant;
  reg  io_sphere_center_delay_2_z_sign;
  reg [5:0] io_sphere_center_delay_2_z_exp;
  reg [12:0] io_sphere_center_delay_2_z_mant;
  reg  io_sphere_center_delay_3_x_sign;
  reg [5:0] io_sphere_center_delay_3_x_exp;
  reg [12:0] io_sphere_center_delay_3_x_mant;
  reg  io_sphere_center_delay_3_y_sign;
  reg [5:0] io_sphere_center_delay_3_y_exp;
  reg [12:0] io_sphere_center_delay_3_y_mant;
  reg  io_sphere_center_delay_3_z_sign;
  reg [5:0] io_sphere_center_delay_3_z_exp;
  reg [12:0] io_sphere_center_delay_3_z_mant;
  reg  io_sphere_center_delay_4_x_sign;
  reg [5:0] io_sphere_center_delay_4_x_exp;
  reg [12:0] io_sphere_center_delay_4_x_mant;
  reg  io_sphere_center_delay_4_y_sign;
  reg [5:0] io_sphere_center_delay_4_y_exp;
  reg [12:0] io_sphere_center_delay_4_y_mant;
  reg  io_sphere_center_delay_4_z_sign;
  reg [5:0] io_sphere_center_delay_4_z_exp;
  reg [12:0] io_sphere_center_delay_4_z_mant;
  reg  io_sphere_center_delay_5_x_sign;
  reg [5:0] io_sphere_center_delay_5_x_exp;
  reg [12:0] io_sphere_center_delay_5_x_mant;
  reg  io_sphere_center_delay_5_y_sign;
  reg [5:0] io_sphere_center_delay_5_y_exp;
  reg [12:0] io_sphere_center_delay_5_y_mant;
  reg  io_sphere_center_delay_5_z_sign;
  reg [5:0] io_sphere_center_delay_5_z_exp;
  reg [12:0] io_sphere_center_delay_5_z_mant;
  reg  io_sphere_center_delay_6_x_sign;
  reg [5:0] io_sphere_center_delay_6_x_exp;
  reg [12:0] io_sphere_center_delay_6_x_mant;
  reg  io_sphere_center_delay_6_y_sign;
  reg [5:0] io_sphere_center_delay_6_y_exp;
  reg [12:0] io_sphere_center_delay_6_y_mant;
  reg  io_sphere_center_delay_6_z_sign;
  reg [5:0] io_sphere_center_delay_6_z_exp;
  reg [12:0] io_sphere_center_delay_6_z_mant;
  reg  io_sphere_center_delay_7_x_sign;
  reg [5:0] io_sphere_center_delay_7_x_exp;
  reg [12:0] io_sphere_center_delay_7_x_mant;
  reg  io_sphere_center_delay_7_y_sign;
  reg [5:0] io_sphere_center_delay_7_y_exp;
  reg [12:0] io_sphere_center_delay_7_y_mant;
  reg  io_sphere_center_delay_7_z_sign;
  reg [5:0] io_sphere_center_delay_7_z_exp;
  reg [12:0] io_sphere_center_delay_7_z_mant;
  reg  io_sphere_center_delay_8_x_sign;
  reg [5:0] io_sphere_center_delay_8_x_exp;
  reg [12:0] io_sphere_center_delay_8_x_mant;
  reg  io_sphere_center_delay_8_y_sign;
  reg [5:0] io_sphere_center_delay_8_y_exp;
  reg [12:0] io_sphere_center_delay_8_y_mant;
  reg  io_sphere_center_delay_8_z_sign;
  reg [5:0] io_sphere_center_delay_8_z_exp;
  reg [12:0] io_sphere_center_delay_8_z_mant;
  reg  io_sphere_center_delay_9_x_sign;
  reg [5:0] io_sphere_center_delay_9_x_exp;
  reg [12:0] io_sphere_center_delay_9_x_mant;
  reg  io_sphere_center_delay_9_y_sign;
  reg [5:0] io_sphere_center_delay_9_y_exp;
  reg [12:0] io_sphere_center_delay_9_y_mant;
  reg  io_sphere_center_delay_9_z_sign;
  reg [5:0] io_sphere_center_delay_9_z_exp;
  reg [12:0] io_sphere_center_delay_9_z_mant;
  reg  io_sphere_center_delay_10_x_sign;
  reg [5:0] io_sphere_center_delay_10_x_exp;
  reg [12:0] io_sphere_center_delay_10_x_mant;
  reg  io_sphere_center_delay_10_y_sign;
  reg [5:0] io_sphere_center_delay_10_y_exp;
  reg [12:0] io_sphere_center_delay_10_y_mant;
  reg  io_sphere_center_delay_10_z_sign;
  reg [5:0] io_sphere_center_delay_10_z_exp;
  reg [12:0] io_sphere_center_delay_10_z_mant;
  reg  io_sphere_center_delay_11_x_sign;
  reg [5:0] io_sphere_center_delay_11_x_exp;
  reg [12:0] io_sphere_center_delay_11_x_mant;
  reg  io_sphere_center_delay_11_y_sign;
  reg [5:0] io_sphere_center_delay_11_y_exp;
  reg [12:0] io_sphere_center_delay_11_y_mant;
  reg  io_sphere_center_delay_11_z_sign;
  reg [5:0] io_sphere_center_delay_11_z_exp;
  reg [12:0] io_sphere_center_delay_11_z_mant;
  reg  io_sphere_center_delay_12_x_sign;
  reg [5:0] io_sphere_center_delay_12_x_exp;
  reg [12:0] io_sphere_center_delay_12_x_mant;
  reg  io_sphere_center_delay_12_y_sign;
  reg [5:0] io_sphere_center_delay_12_y_exp;
  reg [12:0] io_sphere_center_delay_12_y_mant;
  reg  io_sphere_center_delay_12_z_sign;
  reg [5:0] io_sphere_center_delay_12_z_exp;
  reg [12:0] io_sphere_center_delay_12_z_mant;
  reg  io_sphere_center_delay_13_x_sign;
  reg [5:0] io_sphere_center_delay_13_x_exp;
  reg [12:0] io_sphere_center_delay_13_x_mant;
  reg  io_sphere_center_delay_13_y_sign;
  reg [5:0] io_sphere_center_delay_13_y_exp;
  reg [12:0] io_sphere_center_delay_13_y_mant;
  reg  io_sphere_center_delay_13_z_sign;
  reg [5:0] io_sphere_center_delay_13_z_exp;
  reg [12:0] io_sphere_center_delay_13_z_mant;
  reg  io_sphere_center_delay_14_x_sign;
  reg [5:0] io_sphere_center_delay_14_x_exp;
  reg [12:0] io_sphere_center_delay_14_x_mant;
  reg  io_sphere_center_delay_14_y_sign;
  reg [5:0] io_sphere_center_delay_14_y_exp;
  reg [12:0] io_sphere_center_delay_14_y_mant;
  reg  io_sphere_center_delay_14_z_sign;
  reg [5:0] io_sphere_center_delay_14_z_exp;
  reg [12:0] io_sphere_center_delay_14_z_mant;
  reg  io_sphere_center_delay_15_x_sign;
  reg [5:0] io_sphere_center_delay_15_x_exp;
  reg [12:0] io_sphere_center_delay_15_x_mant;
  reg  io_sphere_center_delay_15_y_sign;
  reg [5:0] io_sphere_center_delay_15_y_exp;
  reg [12:0] io_sphere_center_delay_15_y_mant;
  reg  io_sphere_center_delay_15_z_sign;
  reg [5:0] io_sphere_center_delay_15_z_exp;
  reg [12:0] io_sphere_center_delay_15_z_mant;
  reg  io_sphere_center_delay_16_x_sign;
  reg [5:0] io_sphere_center_delay_16_x_exp;
  reg [12:0] io_sphere_center_delay_16_x_mant;
  reg  io_sphere_center_delay_16_y_sign;
  reg [5:0] io_sphere_center_delay_16_y_exp;
  reg [12:0] io_sphere_center_delay_16_y_mant;
  reg  io_sphere_center_delay_16_z_sign;
  reg [5:0] io_sphere_center_delay_16_z_exp;
  reg [12:0] io_sphere_center_delay_16_z_mant;
  reg  io_sphere_center_delay_17_x_sign;
  reg [5:0] io_sphere_center_delay_17_x_exp;
  reg [12:0] io_sphere_center_delay_17_x_mant;
  reg  io_sphere_center_delay_17_y_sign;
  reg [5:0] io_sphere_center_delay_17_y_exp;
  reg [12:0] io_sphere_center_delay_17_y_mant;
  reg  io_sphere_center_delay_17_z_sign;
  reg [5:0] io_sphere_center_delay_17_z_exp;
  reg [12:0] io_sphere_center_delay_17_z_mant;
  reg  io_sphere_center_delay_18_x_sign;
  reg [5:0] io_sphere_center_delay_18_x_exp;
  reg [12:0] io_sphere_center_delay_18_x_mant;
  reg  io_sphere_center_delay_18_y_sign;
  reg [5:0] io_sphere_center_delay_18_y_exp;
  reg [12:0] io_sphere_center_delay_18_y_mant;
  reg  io_sphere_center_delay_18_z_sign;
  reg [5:0] io_sphere_center_delay_18_z_exp;
  reg [12:0] io_sphere_center_delay_18_z_mant;
  reg  io_sphere_center_delay_19_x_sign;
  reg [5:0] io_sphere_center_delay_19_x_exp;
  reg [12:0] io_sphere_center_delay_19_x_mant;
  reg  io_sphere_center_delay_19_y_sign;
  reg [5:0] io_sphere_center_delay_19_y_exp;
  reg [12:0] io_sphere_center_delay_19_y_mant;
  reg  io_sphere_center_delay_19_z_sign;
  reg [5:0] io_sphere_center_delay_19_z_exp;
  reg [12:0] io_sphere_center_delay_19_z_mant;
  reg  io_sphere_center_delay_20_x_sign;
  reg [5:0] io_sphere_center_delay_20_x_exp;
  reg [12:0] io_sphere_center_delay_20_x_mant;
  reg  io_sphere_center_delay_20_y_sign;
  reg [5:0] io_sphere_center_delay_20_y_exp;
  reg [12:0] io_sphere_center_delay_20_y_mant;
  reg  io_sphere_center_delay_20_z_sign;
  reg [5:0] io_sphere_center_delay_20_z_exp;
  reg [12:0] io_sphere_center_delay_20_z_mant;
  reg  io_sphere_center_delay_21_x_sign;
  reg [5:0] io_sphere_center_delay_21_x_exp;
  reg [12:0] io_sphere_center_delay_21_x_mant;
  reg  io_sphere_center_delay_21_y_sign;
  reg [5:0] io_sphere_center_delay_21_y_exp;
  reg [12:0] io_sphere_center_delay_21_y_mant;
  reg  io_sphere_center_delay_21_z_sign;
  reg [5:0] io_sphere_center_delay_21_z_exp;
  reg [12:0] io_sphere_center_delay_21_z_mant;
  reg  center_delayed_x_sign;
  reg [5:0] center_delayed_x_exp;
  reg [12:0] center_delayed_x_mant;
  reg  center_delayed_y_sign;
  reg [5:0] center_delayed_y_exp;
  reg [12:0] center_delayed_y_mant;
  reg  center_delayed_z_sign;
  reg [5:0] center_delayed_z_exp;
  reg [12:0] center_delayed_z_mant;
  wire  normal_raw_vld;
  wire  normal_raw_x_sign;
  wire [5:0] normal_raw_x_exp;
  wire [12:0] normal_raw_x_mant;
  wire  normal_raw_y_sign;
  wire [5:0] normal_raw_y_exp;
  wire [12:0] normal_raw_y_mant;
  wire  normal_raw_z_sign;
  wire [5:0] normal_raw_z_exp;
  wire [12:0] normal_raw_z_mant;
  wire  normal_vld;
  wire  normal_x_sign;
  wire [5:0] normal_x_exp;
  wire [12:0] normal_x_mant;
  wire  normal_y_sign;
  wire [5:0] normal_y_exp;
  wire [12:0] normal_y_mant;
  wire  normal_z_sign;
  wire [5:0] normal_z_exp;
  wire [12:0] normal_z_mant;
  reg  dir_delayed_intersect_delay_1_x_sign;
  reg [5:0] dir_delayed_intersect_delay_1_x_exp;
  reg [12:0] dir_delayed_intersect_delay_1_x_mant;
  reg  dir_delayed_intersect_delay_1_y_sign;
  reg [5:0] dir_delayed_intersect_delay_1_y_exp;
  reg [12:0] dir_delayed_intersect_delay_1_y_mant;
  reg  dir_delayed_intersect_delay_1_z_sign;
  reg [5:0] dir_delayed_intersect_delay_1_z_exp;
  reg [12:0] dir_delayed_intersect_delay_1_z_mant;
  reg  dir_delayed_intersect_delay_2_x_sign;
  reg [5:0] dir_delayed_intersect_delay_2_x_exp;
  reg [12:0] dir_delayed_intersect_delay_2_x_mant;
  reg  dir_delayed_intersect_delay_2_y_sign;
  reg [5:0] dir_delayed_intersect_delay_2_y_exp;
  reg [12:0] dir_delayed_intersect_delay_2_y_mant;
  reg  dir_delayed_intersect_delay_2_z_sign;
  reg [5:0] dir_delayed_intersect_delay_2_z_exp;
  reg [12:0] dir_delayed_intersect_delay_2_z_mant;
  reg  dir_delayed_intersect_delay_3_x_sign;
  reg [5:0] dir_delayed_intersect_delay_3_x_exp;
  reg [12:0] dir_delayed_intersect_delay_3_x_mant;
  reg  dir_delayed_intersect_delay_3_y_sign;
  reg [5:0] dir_delayed_intersect_delay_3_y_exp;
  reg [12:0] dir_delayed_intersect_delay_3_y_mant;
  reg  dir_delayed_intersect_delay_3_z_sign;
  reg [5:0] dir_delayed_intersect_delay_3_z_exp;
  reg [12:0] dir_delayed_intersect_delay_3_z_mant;
  reg  dir_delayed_intersect_delay_4_x_sign;
  reg [5:0] dir_delayed_intersect_delay_4_x_exp;
  reg [12:0] dir_delayed_intersect_delay_4_x_mant;
  reg  dir_delayed_intersect_delay_4_y_sign;
  reg [5:0] dir_delayed_intersect_delay_4_y_exp;
  reg [12:0] dir_delayed_intersect_delay_4_y_mant;
  reg  dir_delayed_intersect_delay_4_z_sign;
  reg [5:0] dir_delayed_intersect_delay_4_z_exp;
  reg [12:0] dir_delayed_intersect_delay_4_z_mant;
  reg  dir_delayed_intersect_delay_5_x_sign;
  reg [5:0] dir_delayed_intersect_delay_5_x_exp;
  reg [12:0] dir_delayed_intersect_delay_5_x_mant;
  reg  dir_delayed_intersect_delay_5_y_sign;
  reg [5:0] dir_delayed_intersect_delay_5_y_exp;
  reg [12:0] dir_delayed_intersect_delay_5_y_mant;
  reg  dir_delayed_intersect_delay_5_z_sign;
  reg [5:0] dir_delayed_intersect_delay_5_z_exp;
  reg [12:0] dir_delayed_intersect_delay_5_z_mant;
  reg  dir_delayed_intersect_delay_6_x_sign;
  reg [5:0] dir_delayed_intersect_delay_6_x_exp;
  reg [12:0] dir_delayed_intersect_delay_6_x_mant;
  reg  dir_delayed_intersect_delay_6_y_sign;
  reg [5:0] dir_delayed_intersect_delay_6_y_exp;
  reg [12:0] dir_delayed_intersect_delay_6_y_mant;
  reg  dir_delayed_intersect_delay_6_z_sign;
  reg [5:0] dir_delayed_intersect_delay_6_z_exp;
  reg [12:0] dir_delayed_intersect_delay_6_z_mant;
  reg  dir_delayed_intersect_delay_7_x_sign;
  reg [5:0] dir_delayed_intersect_delay_7_x_exp;
  reg [12:0] dir_delayed_intersect_delay_7_x_mant;
  reg  dir_delayed_intersect_delay_7_y_sign;
  reg [5:0] dir_delayed_intersect_delay_7_y_exp;
  reg [12:0] dir_delayed_intersect_delay_7_y_mant;
  reg  dir_delayed_intersect_delay_7_z_sign;
  reg [5:0] dir_delayed_intersect_delay_7_z_exp;
  reg [12:0] dir_delayed_intersect_delay_7_z_mant;
  reg  dir_delayed_intersect_delay_8_x_sign;
  reg [5:0] dir_delayed_intersect_delay_8_x_exp;
  reg [12:0] dir_delayed_intersect_delay_8_x_mant;
  reg  dir_delayed_intersect_delay_8_y_sign;
  reg [5:0] dir_delayed_intersect_delay_8_y_exp;
  reg [12:0] dir_delayed_intersect_delay_8_y_mant;
  reg  dir_delayed_intersect_delay_8_z_sign;
  reg [5:0] dir_delayed_intersect_delay_8_z_exp;
  reg [12:0] dir_delayed_intersect_delay_8_z_mant;
  reg  dir_delayed_intersect_delay_9_x_sign;
  reg [5:0] dir_delayed_intersect_delay_9_x_exp;
  reg [12:0] dir_delayed_intersect_delay_9_x_mant;
  reg  dir_delayed_intersect_delay_9_y_sign;
  reg [5:0] dir_delayed_intersect_delay_9_y_exp;
  reg [12:0] dir_delayed_intersect_delay_9_y_mant;
  reg  dir_delayed_intersect_delay_9_z_sign;
  reg [5:0] dir_delayed_intersect_delay_9_z_exp;
  reg [12:0] dir_delayed_intersect_delay_9_z_mant;
  reg  dir_delayed_intersect_delay_10_x_sign;
  reg [5:0] dir_delayed_intersect_delay_10_x_exp;
  reg [12:0] dir_delayed_intersect_delay_10_x_mant;
  reg  dir_delayed_intersect_delay_10_y_sign;
  reg [5:0] dir_delayed_intersect_delay_10_y_exp;
  reg [12:0] dir_delayed_intersect_delay_10_y_mant;
  reg  dir_delayed_intersect_delay_10_z_sign;
  reg [5:0] dir_delayed_intersect_delay_10_z_exp;
  reg [12:0] dir_delayed_intersect_delay_10_z_mant;
  reg  dir_delayed_intersect_delay_11_x_sign;
  reg [5:0] dir_delayed_intersect_delay_11_x_exp;
  reg [12:0] dir_delayed_intersect_delay_11_x_mant;
  reg  dir_delayed_intersect_delay_11_y_sign;
  reg [5:0] dir_delayed_intersect_delay_11_y_exp;
  reg [12:0] dir_delayed_intersect_delay_11_y_mant;
  reg  dir_delayed_intersect_delay_11_z_sign;
  reg [5:0] dir_delayed_intersect_delay_11_z_exp;
  reg [12:0] dir_delayed_intersect_delay_11_z_mant;
  reg  dir_delayed_intersect_delay_12_x_sign;
  reg [5:0] dir_delayed_intersect_delay_12_x_exp;
  reg [12:0] dir_delayed_intersect_delay_12_x_mant;
  reg  dir_delayed_intersect_delay_12_y_sign;
  reg [5:0] dir_delayed_intersect_delay_12_y_exp;
  reg [12:0] dir_delayed_intersect_delay_12_y_mant;
  reg  dir_delayed_intersect_delay_12_z_sign;
  reg [5:0] dir_delayed_intersect_delay_12_z_exp;
  reg [12:0] dir_delayed_intersect_delay_12_z_mant;
  reg  dir_delayed_intersect_delay_13_x_sign;
  reg [5:0] dir_delayed_intersect_delay_13_x_exp;
  reg [12:0] dir_delayed_intersect_delay_13_x_mant;
  reg  dir_delayed_intersect_delay_13_y_sign;
  reg [5:0] dir_delayed_intersect_delay_13_y_exp;
  reg [12:0] dir_delayed_intersect_delay_13_y_mant;
  reg  dir_delayed_intersect_delay_13_z_sign;
  reg [5:0] dir_delayed_intersect_delay_13_z_exp;
  reg [12:0] dir_delayed_intersect_delay_13_z_mant;
  reg  dir_delayed_intersect_delay_14_x_sign;
  reg [5:0] dir_delayed_intersect_delay_14_x_exp;
  reg [12:0] dir_delayed_intersect_delay_14_x_mant;
  reg  dir_delayed_intersect_delay_14_y_sign;
  reg [5:0] dir_delayed_intersect_delay_14_y_exp;
  reg [12:0] dir_delayed_intersect_delay_14_y_mant;
  reg  dir_delayed_intersect_delay_14_z_sign;
  reg [5:0] dir_delayed_intersect_delay_14_z_exp;
  reg [12:0] dir_delayed_intersect_delay_14_z_mant;
  reg  dir_delayed_dot_normal_x_sign;
  reg [5:0] dir_delayed_dot_normal_x_exp;
  reg [12:0] dir_delayed_dot_normal_x_mant;
  reg  dir_delayed_dot_normal_y_sign;
  reg [5:0] dir_delayed_dot_normal_y_exp;
  reg [12:0] dir_delayed_dot_normal_y_mant;
  reg  dir_delayed_dot_normal_z_sign;
  reg [5:0] dir_delayed_dot_normal_z_exp;
  reg [12:0] dir_delayed_dot_normal_z_mant;
  wire  dir_dot_normal_vld;
  wire  dir_dot_normal_sign;
  wire [5:0] dir_dot_normal_exp;
  wire [12:0] dir_dot_normal_mant;
  wire  dir_dot_normal_x2_vld;
  wire  dir_dot_normal_x2_sign;
  wire [5:0] dir_dot_normal_x2_exp;
  wire [12:0] dir_dot_normal_x2_mant;
  reg  dir_dot_normal_vld_regNext;
  reg  dir_dot_normal_sign_regNext;
  reg [5:0] dir_dot_normal_exp_regNext;
  reg [12:0] dir_dot_normal_mant_regNext;
  reg  normal_delay_1_x_sign;
  reg [5:0] normal_delay_1_x_exp;
  reg [12:0] normal_delay_1_x_mant;
  reg  normal_delay_1_y_sign;
  reg [5:0] normal_delay_1_y_exp;
  reg [12:0] normal_delay_1_y_mant;
  reg  normal_delay_1_z_sign;
  reg [5:0] normal_delay_1_z_exp;
  reg [12:0] normal_delay_1_z_mant;
  reg  normal_delay_2_x_sign;
  reg [5:0] normal_delay_2_x_exp;
  reg [12:0] normal_delay_2_x_mant;
  reg  normal_delay_2_y_sign;
  reg [5:0] normal_delay_2_y_exp;
  reg [12:0] normal_delay_2_y_mant;
  reg  normal_delay_2_z_sign;
  reg [5:0] normal_delay_2_z_exp;
  reg [12:0] normal_delay_2_z_mant;
  reg  normal_delay_3_x_sign;
  reg [5:0] normal_delay_3_x_exp;
  reg [12:0] normal_delay_3_x_mant;
  reg  normal_delay_3_y_sign;
  reg [5:0] normal_delay_3_y_exp;
  reg [12:0] normal_delay_3_y_mant;
  reg  normal_delay_3_z_sign;
  reg [5:0] normal_delay_3_z_exp;
  reg [12:0] normal_delay_3_z_mant;
  reg  normal_delay_4_x_sign;
  reg [5:0] normal_delay_4_x_exp;
  reg [12:0] normal_delay_4_x_mant;
  reg  normal_delay_4_y_sign;
  reg [5:0] normal_delay_4_y_exp;
  reg [12:0] normal_delay_4_y_mant;
  reg  normal_delay_4_z_sign;
  reg [5:0] normal_delay_4_z_exp;
  reg [12:0] normal_delay_4_z_mant;
  reg  normal_delay_5_x_sign;
  reg [5:0] normal_delay_5_x_exp;
  reg [12:0] normal_delay_5_x_mant;
  reg  normal_delay_5_y_sign;
  reg [5:0] normal_delay_5_y_exp;
  reg [12:0] normal_delay_5_y_mant;
  reg  normal_delay_5_z_sign;
  reg [5:0] normal_delay_5_z_exp;
  reg [12:0] normal_delay_5_z_mant;
  reg  normal_delay_6_x_sign;
  reg [5:0] normal_delay_6_x_exp;
  reg [12:0] normal_delay_6_x_mant;
  reg  normal_delay_6_y_sign;
  reg [5:0] normal_delay_6_y_exp;
  reg [12:0] normal_delay_6_y_mant;
  reg  normal_delay_6_z_sign;
  reg [5:0] normal_delay_6_z_exp;
  reg [12:0] normal_delay_6_z_mant;
  reg  normal_delayed_dir_mirror_x_sign;
  reg [5:0] normal_delayed_dir_mirror_x_exp;
  reg [12:0] normal_delayed_dir_mirror_x_mant;
  reg  normal_delayed_dir_mirror_y_sign;
  reg [5:0] normal_delayed_dir_mirror_y_exp;
  reg [12:0] normal_delayed_dir_mirror_y_mant;
  reg  normal_delayed_dir_mirror_z_sign;
  reg [5:0] normal_delayed_dir_mirror_z_exp;
  reg [12:0] normal_delayed_dir_mirror_z_mant;
  wire  dir_mirror_vld;
  wire  dir_mirror_x_sign;
  wire [5:0] dir_mirror_x_exp;
  wire [12:0] dir_mirror_x_mant;
  wire  dir_mirror_y_sign;
  wire [5:0] dir_mirror_y_exp;
  wire [12:0] dir_mirror_y_mant;
  wire  dir_mirror_z_sign;
  wire [5:0] dir_mirror_z_exp;
  wire [12:0] dir_mirror_z_mant;
  reg  dir_delayed_dot_normal_delay_1_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_1_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_1_x_mant;
  reg  dir_delayed_dot_normal_delay_1_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_1_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_1_y_mant;
  reg  dir_delayed_dot_normal_delay_1_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_1_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_1_z_mant;
  reg  dir_delayed_dot_normal_delay_2_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_2_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_2_x_mant;
  reg  dir_delayed_dot_normal_delay_2_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_2_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_2_y_mant;
  reg  dir_delayed_dot_normal_delay_2_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_2_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_2_z_mant;
  reg  dir_delayed_dot_normal_delay_3_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_3_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_3_x_mant;
  reg  dir_delayed_dot_normal_delay_3_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_3_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_3_y_mant;
  reg  dir_delayed_dot_normal_delay_3_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_3_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_3_z_mant;
  reg  dir_delayed_dot_normal_delay_4_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_4_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_4_x_mant;
  reg  dir_delayed_dot_normal_delay_4_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_4_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_4_y_mant;
  reg  dir_delayed_dot_normal_delay_4_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_4_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_4_z_mant;
  reg  dir_delayed_dot_normal_delay_5_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_5_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_5_x_mant;
  reg  dir_delayed_dot_normal_delay_5_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_5_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_5_y_mant;
  reg  dir_delayed_dot_normal_delay_5_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_5_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_5_z_mant;
  reg  dir_delayed_dot_normal_delay_6_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_6_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_6_x_mant;
  reg  dir_delayed_dot_normal_delay_6_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_6_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_6_y_mant;
  reg  dir_delayed_dot_normal_delay_6_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_6_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_6_z_mant;
  reg  dir_delayed_dot_normal_delay_7_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_7_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_7_x_mant;
  reg  dir_delayed_dot_normal_delay_7_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_7_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_7_y_mant;
  reg  dir_delayed_dot_normal_delay_7_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_7_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_7_z_mant;
  reg  dir_delayed_dot_normal_delay_8_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_8_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_8_x_mant;
  reg  dir_delayed_dot_normal_delay_8_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_8_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_8_y_mant;
  reg  dir_delayed_dot_normal_delay_8_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_8_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_8_z_mant;
  reg  dir_delayed_reflect_dir_x_sign;
  reg [5:0] dir_delayed_reflect_dir_x_exp;
  reg [12:0] dir_delayed_reflect_dir_x_mant;
  reg  dir_delayed_reflect_dir_y_sign;
  reg [5:0] dir_delayed_reflect_dir_y_exp;
  reg [12:0] dir_delayed_reflect_dir_y_mant;
  reg  dir_delayed_reflect_dir_z_sign;
  reg [5:0] dir_delayed_reflect_dir_z_exp;
  reg [12:0] dir_delayed_reflect_dir_z_mant;
  wire  reflect_dir_vld;
  wire  reflect_dir_x_sign;
  wire [5:0] reflect_dir_x_exp;
  wire [12:0] reflect_dir_x_mant;
  wire  reflect_dir_y_sign;
  wire [5:0] reflect_dir_y_exp;
  wire [12:0] reflect_dir_y_mant;
  wire  reflect_dir_z_sign;
  wire [5:0] reflect_dir_z_exp;
  wire [12:0] reflect_dir_z_mant;
  reg  intersects_tca_delay_1_1_;
  reg  intersects_tca_delay_2_1_;
  reg  intersects_tca_delay_3_1_;
  reg  intersects_tca_delay_4;
  reg  intersects_tca_delay_5;
  reg  intersects_tca_delay_6;
  reg  intersects_tca_delay_7;
  reg  intersects_tca_delay_8;
  reg  intersects_tca_delay_9;
  reg  intersects_tca_delay_10;
  reg  intersects_tca_delay_11;
  reg  intersects_tca_delay_12;
  reg  intersects_tca_delay_13;
  reg  intersects_tca_delay_14;
  reg  intersects_tca_delay_15;
  reg  intersects_tca_delay_16;
  reg  intersects_tca_delay_17;
  reg  intersects_tca_delay_18;
  reg  intersects_tca_delay_19;
  reg  intersects_tca_delay_20;
  reg  intersects_tca_delay_21;
  reg  intersects_tca_delay_22;
  reg  intersects_tca_delay_23;
  reg  intersects_tca_delay_24;
  reg  intersects_tca_delay_25;
  reg  intersects_tca_delay_26;
  reg  intersects_tca_delay_27;
  reg  intersects_tca_delay_28;
  reg  intersects_tca_delay_29;
  reg  intersects_tca_delay_30;
  reg  intersects_tca_delay_31;
  reg  intersects_tca_delay_32;
  reg  intersects_tca_delay_33;
  reg  intersects_tca_delay_34;
  reg  intersects_tca_delay_35;
  reg  intersects_tca_delayed;
  reg  intersects_d2_delay_1;
  reg  intersects_d2_delay_2;
  reg  intersects_d2_delay_3;
  reg  intersects_d2_delay_4;
  reg  intersects_d2_delay_5;
  reg  intersects_d2_delay_6;
  reg  intersects_d2_delay_7;
  reg  intersects_d2_delay_8;
  reg  intersects_d2_delay_9;
  reg  intersects_d2_delay_10;
  reg  intersects_d2_delay_11;
  reg  intersects_d2_delay_12;
  reg  intersects_d2_delay_13;
  reg  intersects_d2_delay_14;
  reg  intersects_d2_delay_15;
  reg  intersects_d2_delay_16;
  reg  intersects_d2_delay_17;
  reg  intersects_d2_delay_18;
  reg  intersects_d2_delay_19;
  reg  intersects_d2_delay_20;
  reg  intersects_d2_delay_21;
  reg  intersects_d2_delay_22;
  reg  intersects_d2_delay_23;
  reg  intersects_d2_delay_24;
  reg  intersects_d2_delay_25;
  reg  intersects_d2_delay_26;
  reg  intersects_d2_delay_27;
  reg  intersects_d2_delay_28;
  reg  intersects_d2_delay_29;
  reg  intersects_d2_delayed;
  reg  t_delay_1_sign;
  reg [5:0] t_delay_1_exp;
  reg [12:0] t_delay_1_mant;
  reg  t_delay_2_sign;
  reg [5:0] t_delay_2_exp;
  reg [12:0] t_delay_2_mant;
  reg  t_delay_3_sign;
  reg [5:0] t_delay_3_exp;
  reg [12:0] t_delay_3_mant;
  reg  t_delay_4_sign;
  reg [5:0] t_delay_4_exp;
  reg [12:0] t_delay_4_mant;
  reg  t_delay_5_sign;
  reg [5:0] t_delay_5_exp;
  reg [12:0] t_delay_5_mant;
  reg  t_delay_6_sign;
  reg [5:0] t_delay_6_exp;
  reg [12:0] t_delay_6_mant;
  reg  t_delay_7_sign;
  reg [5:0] t_delay_7_exp;
  reg [12:0] t_delay_7_mant;
  reg  t_delay_8_sign;
  reg [5:0] t_delay_8_exp;
  reg [12:0] t_delay_8_mant;
  reg  t_delay_9_sign;
  reg [5:0] t_delay_9_exp;
  reg [12:0] t_delay_9_mant;
  reg  t_delay_10_sign;
  reg [5:0] t_delay_10_exp;
  reg [12:0] t_delay_10_mant;
  reg  t_delay_11_sign;
  reg [5:0] t_delay_11_exp;
  reg [12:0] t_delay_11_mant;
  reg  t_delay_12_sign;
  reg [5:0] t_delay_12_exp;
  reg [12:0] t_delay_12_mant;
  reg  t_delay_13_sign;
  reg [5:0] t_delay_13_exp;
  reg [12:0] t_delay_13_mant;
  reg  t_delay_14_sign;
  reg [5:0] t_delay_14_exp;
  reg [12:0] t_delay_14_mant;
  reg  t_delay_15_sign;
  reg [5:0] t_delay_15_exp;
  reg [12:0] t_delay_15_mant;
  reg  t_delay_16_sign;
  reg [5:0] t_delay_16_exp;
  reg [12:0] t_delay_16_mant;
  reg  t_delay_17_sign;
  reg [5:0] t_delay_17_exp;
  reg [12:0] t_delay_17_mant;
  reg  t_delay_18_sign;
  reg [5:0] t_delay_18_exp;
  reg [12:0] t_delay_18_mant;
  reg  t_delay_19_sign;
  reg [5:0] t_delay_19_exp;
  reg [12:0] t_delay_19_mant;
  reg  t_delay_20_sign;
  reg [5:0] t_delay_20_exp;
  reg [12:0] t_delay_20_mant;
  reg  t_delay_21_sign;
  reg [5:0] t_delay_21_exp;
  reg [12:0] t_delay_21_mant;
  reg  t_delay_22_sign;
  reg [5:0] t_delay_22_exp;
  reg [12:0] t_delay_22_mant;
  reg  t_delay_23_sign;
  reg [5:0] t_delay_23_exp;
  reg [12:0] t_delay_23_mant;
  reg  t_delay_24_sign;
  reg [5:0] t_delay_24_exp;
  reg [12:0] t_delay_24_mant;
  reg  t_delay_25_sign;
  reg [5:0] t_delay_25_exp;
  reg [12:0] t_delay_25_mant;
  reg  t_delayed_sign;
  reg [5:0] t_delayed_exp;
  reg [12:0] t_delayed_mant;
  reg  intersection_delay_1_x_sign;
  reg [5:0] intersection_delay_1_x_exp;
  reg [12:0] intersection_delay_1_x_mant;
  reg  intersection_delay_1_y_sign;
  reg [5:0] intersection_delay_1_y_exp;
  reg [12:0] intersection_delay_1_y_mant;
  reg  intersection_delay_1_z_sign;
  reg [5:0] intersection_delay_1_z_exp;
  reg [12:0] intersection_delay_1_z_mant;
  reg  intersection_delay_2_x_sign;
  reg [5:0] intersection_delay_2_x_exp;
  reg [12:0] intersection_delay_2_x_mant;
  reg  intersection_delay_2_y_sign;
  reg [5:0] intersection_delay_2_y_exp;
  reg [12:0] intersection_delay_2_y_mant;
  reg  intersection_delay_2_z_sign;
  reg [5:0] intersection_delay_2_z_exp;
  reg [12:0] intersection_delay_2_z_mant;
  reg  intersection_delay_3_x_sign;
  reg [5:0] intersection_delay_3_x_exp;
  reg [12:0] intersection_delay_3_x_mant;
  reg  intersection_delay_3_y_sign;
  reg [5:0] intersection_delay_3_y_exp;
  reg [12:0] intersection_delay_3_y_mant;
  reg  intersection_delay_3_z_sign;
  reg [5:0] intersection_delay_3_z_exp;
  reg [12:0] intersection_delay_3_z_mant;
  reg  intersection_delay_4_x_sign;
  reg [5:0] intersection_delay_4_x_exp;
  reg [12:0] intersection_delay_4_x_mant;
  reg  intersection_delay_4_y_sign;
  reg [5:0] intersection_delay_4_y_exp;
  reg [12:0] intersection_delay_4_y_mant;
  reg  intersection_delay_4_z_sign;
  reg [5:0] intersection_delay_4_z_exp;
  reg [12:0] intersection_delay_4_z_mant;
  reg  intersection_delay_5_x_sign;
  reg [5:0] intersection_delay_5_x_exp;
  reg [12:0] intersection_delay_5_x_mant;
  reg  intersection_delay_5_y_sign;
  reg [5:0] intersection_delay_5_y_exp;
  reg [12:0] intersection_delay_5_y_mant;
  reg  intersection_delay_5_z_sign;
  reg [5:0] intersection_delay_5_z_exp;
  reg [12:0] intersection_delay_5_z_mant;
  reg  intersection_delay_6_x_sign;
  reg [5:0] intersection_delay_6_x_exp;
  reg [12:0] intersection_delay_6_x_mant;
  reg  intersection_delay_6_y_sign;
  reg [5:0] intersection_delay_6_y_exp;
  reg [12:0] intersection_delay_6_y_mant;
  reg  intersection_delay_6_z_sign;
  reg [5:0] intersection_delay_6_z_exp;
  reg [12:0] intersection_delay_6_z_mant;
  reg  intersection_delay_7_x_sign;
  reg [5:0] intersection_delay_7_x_exp;
  reg [12:0] intersection_delay_7_x_mant;
  reg  intersection_delay_7_y_sign;
  reg [5:0] intersection_delay_7_y_exp;
  reg [12:0] intersection_delay_7_y_mant;
  reg  intersection_delay_7_z_sign;
  reg [5:0] intersection_delay_7_z_exp;
  reg [12:0] intersection_delay_7_z_mant;
  reg  intersection_delay_8_x_sign;
  reg [5:0] intersection_delay_8_x_exp;
  reg [12:0] intersection_delay_8_x_mant;
  reg  intersection_delay_8_y_sign;
  reg [5:0] intersection_delay_8_y_exp;
  reg [12:0] intersection_delay_8_y_mant;
  reg  intersection_delay_8_z_sign;
  reg [5:0] intersection_delay_8_z_exp;
  reg [12:0] intersection_delay_8_z_mant;
  reg  intersection_delay_9_x_sign;
  reg [5:0] intersection_delay_9_x_exp;
  reg [12:0] intersection_delay_9_x_mant;
  reg  intersection_delay_9_y_sign;
  reg [5:0] intersection_delay_9_y_exp;
  reg [12:0] intersection_delay_9_y_mant;
  reg  intersection_delay_9_z_sign;
  reg [5:0] intersection_delay_9_z_exp;
  reg [12:0] intersection_delay_9_z_mant;
  reg  intersection_delay_10_x_sign;
  reg [5:0] intersection_delay_10_x_exp;
  reg [12:0] intersection_delay_10_x_mant;
  reg  intersection_delay_10_y_sign;
  reg [5:0] intersection_delay_10_y_exp;
  reg [12:0] intersection_delay_10_y_mant;
  reg  intersection_delay_10_z_sign;
  reg [5:0] intersection_delay_10_z_exp;
  reg [12:0] intersection_delay_10_z_mant;
  reg  intersection_delay_11_x_sign;
  reg [5:0] intersection_delay_11_x_exp;
  reg [12:0] intersection_delay_11_x_mant;
  reg  intersection_delay_11_y_sign;
  reg [5:0] intersection_delay_11_y_exp;
  reg [12:0] intersection_delay_11_y_mant;
  reg  intersection_delay_11_z_sign;
  reg [5:0] intersection_delay_11_z_exp;
  reg [12:0] intersection_delay_11_z_mant;
  reg  intersection_delay_12_x_sign;
  reg [5:0] intersection_delay_12_x_exp;
  reg [12:0] intersection_delay_12_x_mant;
  reg  intersection_delay_12_y_sign;
  reg [5:0] intersection_delay_12_y_exp;
  reg [12:0] intersection_delay_12_y_mant;
  reg  intersection_delay_12_z_sign;
  reg [5:0] intersection_delay_12_z_exp;
  reg [12:0] intersection_delay_12_z_mant;
  reg  intersection_delay_13_x_sign;
  reg [5:0] intersection_delay_13_x_exp;
  reg [12:0] intersection_delay_13_x_mant;
  reg  intersection_delay_13_y_sign;
  reg [5:0] intersection_delay_13_y_exp;
  reg [12:0] intersection_delay_13_y_mant;
  reg  intersection_delay_13_z_sign;
  reg [5:0] intersection_delay_13_z_exp;
  reg [12:0] intersection_delay_13_z_mant;
  reg  intersection_delay_14_x_sign;
  reg [5:0] intersection_delay_14_x_exp;
  reg [12:0] intersection_delay_14_x_mant;
  reg  intersection_delay_14_y_sign;
  reg [5:0] intersection_delay_14_y_exp;
  reg [12:0] intersection_delay_14_y_mant;
  reg  intersection_delay_14_z_sign;
  reg [5:0] intersection_delay_14_z_exp;
  reg [12:0] intersection_delay_14_z_mant;
  reg  intersection_delay_15_x_sign;
  reg [5:0] intersection_delay_15_x_exp;
  reg [12:0] intersection_delay_15_x_mant;
  reg  intersection_delay_15_y_sign;
  reg [5:0] intersection_delay_15_y_exp;
  reg [12:0] intersection_delay_15_y_mant;
  reg  intersection_delay_15_z_sign;
  reg [5:0] intersection_delay_15_z_exp;
  reg [12:0] intersection_delay_15_z_mant;
  reg  intersection_delay_16_x_sign;
  reg [5:0] intersection_delay_16_x_exp;
  reg [12:0] intersection_delay_16_x_mant;
  reg  intersection_delay_16_y_sign;
  reg [5:0] intersection_delay_16_y_exp;
  reg [12:0] intersection_delay_16_y_mant;
  reg  intersection_delay_16_z_sign;
  reg [5:0] intersection_delay_16_z_exp;
  reg [12:0] intersection_delay_16_z_mant;
  reg  intersection_delay_17_x_sign;
  reg [5:0] intersection_delay_17_x_exp;
  reg [12:0] intersection_delay_17_x_mant;
  reg  intersection_delay_17_y_sign;
  reg [5:0] intersection_delay_17_y_exp;
  reg [12:0] intersection_delay_17_y_mant;
  reg  intersection_delay_17_z_sign;
  reg [5:0] intersection_delay_17_z_exp;
  reg [12:0] intersection_delay_17_z_mant;
  reg  intersection_delay_18_x_sign;
  reg [5:0] intersection_delay_18_x_exp;
  reg [12:0] intersection_delay_18_x_mant;
  reg  intersection_delay_18_y_sign;
  reg [5:0] intersection_delay_18_y_exp;
  reg [12:0] intersection_delay_18_y_mant;
  reg  intersection_delay_18_z_sign;
  reg [5:0] intersection_delay_18_z_exp;
  reg [12:0] intersection_delay_18_z_mant;
  reg  intersection_delay_19_x_sign;
  reg [5:0] intersection_delay_19_x_exp;
  reg [12:0] intersection_delay_19_x_mant;
  reg  intersection_delay_19_y_sign;
  reg [5:0] intersection_delay_19_y_exp;
  reg [12:0] intersection_delay_19_y_mant;
  reg  intersection_delay_19_z_sign;
  reg [5:0] intersection_delay_19_z_exp;
  reg [12:0] intersection_delay_19_z_mant;
  reg  intersection_delay_20_x_sign;
  reg [5:0] intersection_delay_20_x_exp;
  reg [12:0] intersection_delay_20_x_mant;
  reg  intersection_delay_20_y_sign;
  reg [5:0] intersection_delay_20_y_exp;
  reg [12:0] intersection_delay_20_y_mant;
  reg  intersection_delay_20_z_sign;
  reg [5:0] intersection_delay_20_z_exp;
  reg [12:0] intersection_delay_20_z_mant;
  reg  intersection_delay_21_x_sign;
  reg [5:0] intersection_delay_21_x_exp;
  reg [12:0] intersection_delay_21_x_mant;
  reg  intersection_delay_21_y_sign;
  reg [5:0] intersection_delay_21_y_exp;
  reg [12:0] intersection_delay_21_y_mant;
  reg  intersection_delay_21_z_sign;
  reg [5:0] intersection_delay_21_z_exp;
  reg [12:0] intersection_delay_21_z_mant;
  reg  intersection_delayed_x_sign;
  reg [5:0] intersection_delayed_x_exp;
  reg [12:0] intersection_delayed_x_mant;
  reg  intersection_delayed_y_sign;
  reg [5:0] intersection_delayed_y_exp;
  reg [12:0] intersection_delayed_y_mant;
  reg  intersection_delayed_z_sign;
  reg [5:0] intersection_delayed_z_exp;
  reg [12:0] intersection_delayed_z_mant;
  reg  normal_delayed_dir_mirror_delay_1_x_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_1_x_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_1_x_mant;
  reg  normal_delayed_dir_mirror_delay_1_y_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_1_y_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_1_y_mant;
  reg  normal_delayed_dir_mirror_delay_1_z_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_1_z_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_1_z_mant;
  reg  normal_delayed_dir_mirror_delay_2_x_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_2_x_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_2_x_mant;
  reg  normal_delayed_dir_mirror_delay_2_y_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_2_y_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_2_y_mant;
  reg  normal_delayed_dir_mirror_delay_2_z_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_2_z_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_2_z_mant;
  reg  normal_delayed_dir_mirror_delay_3_x_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_3_x_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_3_x_mant;
  reg  normal_delayed_dir_mirror_delay_3_y_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_3_y_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_3_y_mant;
  reg  normal_delayed_dir_mirror_delay_3_z_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_3_z_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_3_z_mant;
  reg  normal_delayed_result_x_sign;
  reg [5:0] normal_delayed_result_x_exp;
  reg [12:0] normal_delayed_result_x_mant;
  reg  normal_delayed_result_y_sign;
  reg [5:0] normal_delayed_result_y_exp;
  reg [12:0] normal_delayed_result_y_mant;
  reg  normal_delayed_result_z_sign;
  reg [5:0] normal_delayed_result_z_exp;
  reg [12:0] normal_delayed_result_z_mant;
  reg  origin_delayed_intersect_delay_1_x_sign;
  reg [5:0] origin_delayed_intersect_delay_1_x_exp;
  reg [12:0] origin_delayed_intersect_delay_1_x_mant;
  reg  origin_delayed_intersect_delay_1_y_sign;
  reg [5:0] origin_delayed_intersect_delay_1_y_exp;
  reg [12:0] origin_delayed_intersect_delay_1_y_mant;
  reg  origin_delayed_intersect_delay_1_z_sign;
  reg [5:0] origin_delayed_intersect_delay_1_z_exp;
  reg [12:0] origin_delayed_intersect_delay_1_z_mant;
  reg  origin_delayed_intersect_delay_2_x_sign;
  reg [5:0] origin_delayed_intersect_delay_2_x_exp;
  reg [12:0] origin_delayed_intersect_delay_2_x_mant;
  reg  origin_delayed_intersect_delay_2_y_sign;
  reg [5:0] origin_delayed_intersect_delay_2_y_exp;
  reg [12:0] origin_delayed_intersect_delay_2_y_mant;
  reg  origin_delayed_intersect_delay_2_z_sign;
  reg [5:0] origin_delayed_intersect_delay_2_z_exp;
  reg [12:0] origin_delayed_intersect_delay_2_z_mant;
  reg  origin_delayed_intersect_delay_3_x_sign;
  reg [5:0] origin_delayed_intersect_delay_3_x_exp;
  reg [12:0] origin_delayed_intersect_delay_3_x_mant;
  reg  origin_delayed_intersect_delay_3_y_sign;
  reg [5:0] origin_delayed_intersect_delay_3_y_exp;
  reg [12:0] origin_delayed_intersect_delay_3_y_mant;
  reg  origin_delayed_intersect_delay_3_z_sign;
  reg [5:0] origin_delayed_intersect_delay_3_z_exp;
  reg [12:0] origin_delayed_intersect_delay_3_z_mant;
  reg  origin_delayed_intersect_delay_4_x_sign;
  reg [5:0] origin_delayed_intersect_delay_4_x_exp;
  reg [12:0] origin_delayed_intersect_delay_4_x_mant;
  reg  origin_delayed_intersect_delay_4_y_sign;
  reg [5:0] origin_delayed_intersect_delay_4_y_exp;
  reg [12:0] origin_delayed_intersect_delay_4_y_mant;
  reg  origin_delayed_intersect_delay_4_z_sign;
  reg [5:0] origin_delayed_intersect_delay_4_z_exp;
  reg [12:0] origin_delayed_intersect_delay_4_z_mant;
  reg  origin_delayed_intersect_delay_5_x_sign;
  reg [5:0] origin_delayed_intersect_delay_5_x_exp;
  reg [12:0] origin_delayed_intersect_delay_5_x_mant;
  reg  origin_delayed_intersect_delay_5_y_sign;
  reg [5:0] origin_delayed_intersect_delay_5_y_exp;
  reg [12:0] origin_delayed_intersect_delay_5_y_mant;
  reg  origin_delayed_intersect_delay_5_z_sign;
  reg [5:0] origin_delayed_intersect_delay_5_z_exp;
  reg [12:0] origin_delayed_intersect_delay_5_z_mant;
  reg  origin_delayed_intersect_delay_6_x_sign;
  reg [5:0] origin_delayed_intersect_delay_6_x_exp;
  reg [12:0] origin_delayed_intersect_delay_6_x_mant;
  reg  origin_delayed_intersect_delay_6_y_sign;
  reg [5:0] origin_delayed_intersect_delay_6_y_exp;
  reg [12:0] origin_delayed_intersect_delay_6_y_mant;
  reg  origin_delayed_intersect_delay_6_z_sign;
  reg [5:0] origin_delayed_intersect_delay_6_z_exp;
  reg [12:0] origin_delayed_intersect_delay_6_z_mant;
  reg  origin_delayed_intersect_delay_7_x_sign;
  reg [5:0] origin_delayed_intersect_delay_7_x_exp;
  reg [12:0] origin_delayed_intersect_delay_7_x_mant;
  reg  origin_delayed_intersect_delay_7_y_sign;
  reg [5:0] origin_delayed_intersect_delay_7_y_exp;
  reg [12:0] origin_delayed_intersect_delay_7_y_mant;
  reg  origin_delayed_intersect_delay_7_z_sign;
  reg [5:0] origin_delayed_intersect_delay_7_z_exp;
  reg [12:0] origin_delayed_intersect_delay_7_z_mant;
  reg  origin_delayed_intersect_delay_8_x_sign;
  reg [5:0] origin_delayed_intersect_delay_8_x_exp;
  reg [12:0] origin_delayed_intersect_delay_8_x_mant;
  reg  origin_delayed_intersect_delay_8_y_sign;
  reg [5:0] origin_delayed_intersect_delay_8_y_exp;
  reg [12:0] origin_delayed_intersect_delay_8_y_mant;
  reg  origin_delayed_intersect_delay_8_z_sign;
  reg [5:0] origin_delayed_intersect_delay_8_z_exp;
  reg [12:0] origin_delayed_intersect_delay_8_z_mant;
  reg  origin_delayed_intersect_delay_9_x_sign;
  reg [5:0] origin_delayed_intersect_delay_9_x_exp;
  reg [12:0] origin_delayed_intersect_delay_9_x_mant;
  reg  origin_delayed_intersect_delay_9_y_sign;
  reg [5:0] origin_delayed_intersect_delay_9_y_exp;
  reg [12:0] origin_delayed_intersect_delay_9_y_mant;
  reg  origin_delayed_intersect_delay_9_z_sign;
  reg [5:0] origin_delayed_intersect_delay_9_z_exp;
  reg [12:0] origin_delayed_intersect_delay_9_z_mant;
  reg  origin_delayed_intersect_delay_10_x_sign;
  reg [5:0] origin_delayed_intersect_delay_10_x_exp;
  reg [12:0] origin_delayed_intersect_delay_10_x_mant;
  reg  origin_delayed_intersect_delay_10_y_sign;
  reg [5:0] origin_delayed_intersect_delay_10_y_exp;
  reg [12:0] origin_delayed_intersect_delay_10_y_mant;
  reg  origin_delayed_intersect_delay_10_z_sign;
  reg [5:0] origin_delayed_intersect_delay_10_z_exp;
  reg [12:0] origin_delayed_intersect_delay_10_z_mant;
  reg  origin_delayed_intersect_delay_11_x_sign;
  reg [5:0] origin_delayed_intersect_delay_11_x_exp;
  reg [12:0] origin_delayed_intersect_delay_11_x_mant;
  reg  origin_delayed_intersect_delay_11_y_sign;
  reg [5:0] origin_delayed_intersect_delay_11_y_exp;
  reg [12:0] origin_delayed_intersect_delay_11_y_mant;
  reg  origin_delayed_intersect_delay_11_z_sign;
  reg [5:0] origin_delayed_intersect_delay_11_z_exp;
  reg [12:0] origin_delayed_intersect_delay_11_z_mant;
  reg  origin_delayed_intersect_delay_12_x_sign;
  reg [5:0] origin_delayed_intersect_delay_12_x_exp;
  reg [12:0] origin_delayed_intersect_delay_12_x_mant;
  reg  origin_delayed_intersect_delay_12_y_sign;
  reg [5:0] origin_delayed_intersect_delay_12_y_exp;
  reg [12:0] origin_delayed_intersect_delay_12_y_mant;
  reg  origin_delayed_intersect_delay_12_z_sign;
  reg [5:0] origin_delayed_intersect_delay_12_z_exp;
  reg [12:0] origin_delayed_intersect_delay_12_z_mant;
  reg  origin_delayed_intersect_delay_13_x_sign;
  reg [5:0] origin_delayed_intersect_delay_13_x_exp;
  reg [12:0] origin_delayed_intersect_delay_13_x_mant;
  reg  origin_delayed_intersect_delay_13_y_sign;
  reg [5:0] origin_delayed_intersect_delay_13_y_exp;
  reg [12:0] origin_delayed_intersect_delay_13_y_mant;
  reg  origin_delayed_intersect_delay_13_z_sign;
  reg [5:0] origin_delayed_intersect_delay_13_z_exp;
  reg [12:0] origin_delayed_intersect_delay_13_z_mant;
  reg  origin_delayed_intersect_delay_14_x_sign;
  reg [5:0] origin_delayed_intersect_delay_14_x_exp;
  reg [12:0] origin_delayed_intersect_delay_14_x_mant;
  reg  origin_delayed_intersect_delay_14_y_sign;
  reg [5:0] origin_delayed_intersect_delay_14_y_exp;
  reg [12:0] origin_delayed_intersect_delay_14_y_mant;
  reg  origin_delayed_intersect_delay_14_z_sign;
  reg [5:0] origin_delayed_intersect_delay_14_z_exp;
  reg [12:0] origin_delayed_intersect_delay_14_z_mant;
  reg  origin_delayed_intersect_delay_15_x_sign;
  reg [5:0] origin_delayed_intersect_delay_15_x_exp;
  reg [12:0] origin_delayed_intersect_delay_15_x_mant;
  reg  origin_delayed_intersect_delay_15_y_sign;
  reg [5:0] origin_delayed_intersect_delay_15_y_exp;
  reg [12:0] origin_delayed_intersect_delay_15_y_mant;
  reg  origin_delayed_intersect_delay_15_z_sign;
  reg [5:0] origin_delayed_intersect_delay_15_z_exp;
  reg [12:0] origin_delayed_intersect_delay_15_z_mant;
  reg  origin_delayed_intersect_delay_16_x_sign;
  reg [5:0] origin_delayed_intersect_delay_16_x_exp;
  reg [12:0] origin_delayed_intersect_delay_16_x_mant;
  reg  origin_delayed_intersect_delay_16_y_sign;
  reg [5:0] origin_delayed_intersect_delay_16_y_exp;
  reg [12:0] origin_delayed_intersect_delay_16_y_mant;
  reg  origin_delayed_intersect_delay_16_z_sign;
  reg [5:0] origin_delayed_intersect_delay_16_z_exp;
  reg [12:0] origin_delayed_intersect_delay_16_z_mant;
  reg  origin_delayed_intersect_delay_17_x_sign;
  reg [5:0] origin_delayed_intersect_delay_17_x_exp;
  reg [12:0] origin_delayed_intersect_delay_17_x_mant;
  reg  origin_delayed_intersect_delay_17_y_sign;
  reg [5:0] origin_delayed_intersect_delay_17_y_exp;
  reg [12:0] origin_delayed_intersect_delay_17_y_mant;
  reg  origin_delayed_intersect_delay_17_z_sign;
  reg [5:0] origin_delayed_intersect_delay_17_z_exp;
  reg [12:0] origin_delayed_intersect_delay_17_z_mant;
  reg  origin_delayed_intersect_delay_18_x_sign;
  reg [5:0] origin_delayed_intersect_delay_18_x_exp;
  reg [12:0] origin_delayed_intersect_delay_18_x_mant;
  reg  origin_delayed_intersect_delay_18_y_sign;
  reg [5:0] origin_delayed_intersect_delay_18_y_exp;
  reg [12:0] origin_delayed_intersect_delay_18_y_mant;
  reg  origin_delayed_intersect_delay_18_z_sign;
  reg [5:0] origin_delayed_intersect_delay_18_z_exp;
  reg [12:0] origin_delayed_intersect_delay_18_z_mant;
  reg  origin_delayed_intersect_delay_19_x_sign;
  reg [5:0] origin_delayed_intersect_delay_19_x_exp;
  reg [12:0] origin_delayed_intersect_delay_19_x_mant;
  reg  origin_delayed_intersect_delay_19_y_sign;
  reg [5:0] origin_delayed_intersect_delay_19_y_exp;
  reg [12:0] origin_delayed_intersect_delay_19_y_mant;
  reg  origin_delayed_intersect_delay_19_z_sign;
  reg [5:0] origin_delayed_intersect_delay_19_z_exp;
  reg [12:0] origin_delayed_intersect_delay_19_z_mant;
  reg  origin_delayed_intersect_delay_20_x_sign;
  reg [5:0] origin_delayed_intersect_delay_20_x_exp;
  reg [12:0] origin_delayed_intersect_delay_20_x_mant;
  reg  origin_delayed_intersect_delay_20_y_sign;
  reg [5:0] origin_delayed_intersect_delay_20_y_exp;
  reg [12:0] origin_delayed_intersect_delay_20_y_mant;
  reg  origin_delayed_intersect_delay_20_z_sign;
  reg [5:0] origin_delayed_intersect_delay_20_z_exp;
  reg [12:0] origin_delayed_intersect_delay_20_z_mant;
  reg  origin_delayed_intersect_delay_21_x_sign;
  reg [5:0] origin_delayed_intersect_delay_21_x_exp;
  reg [12:0] origin_delayed_intersect_delay_21_x_mant;
  reg  origin_delayed_intersect_delay_21_y_sign;
  reg [5:0] origin_delayed_intersect_delay_21_y_exp;
  reg [12:0] origin_delayed_intersect_delay_21_y_mant;
  reg  origin_delayed_intersect_delay_21_z_sign;
  reg [5:0] origin_delayed_intersect_delay_21_z_exp;
  reg [12:0] origin_delayed_intersect_delay_21_z_mant;
  reg  origin_delayed_intersect_delay_22_x_sign;
  reg [5:0] origin_delayed_intersect_delay_22_x_exp;
  reg [12:0] origin_delayed_intersect_delay_22_x_mant;
  reg  origin_delayed_intersect_delay_22_y_sign;
  reg [5:0] origin_delayed_intersect_delay_22_y_exp;
  reg [12:0] origin_delayed_intersect_delay_22_y_mant;
  reg  origin_delayed_intersect_delay_22_z_sign;
  reg [5:0] origin_delayed_intersect_delay_22_z_exp;
  reg [12:0] origin_delayed_intersect_delay_22_z_mant;
  reg  origin_delayed_intersect_delay_23_x_sign;
  reg [5:0] origin_delayed_intersect_delay_23_x_exp;
  reg [12:0] origin_delayed_intersect_delay_23_x_mant;
  reg  origin_delayed_intersect_delay_23_y_sign;
  reg [5:0] origin_delayed_intersect_delay_23_y_exp;
  reg [12:0] origin_delayed_intersect_delay_23_y_mant;
  reg  origin_delayed_intersect_delay_23_z_sign;
  reg [5:0] origin_delayed_intersect_delay_23_z_exp;
  reg [12:0] origin_delayed_intersect_delay_23_z_mant;
  reg  origin_delayed_intersect_delay_24_x_sign;
  reg [5:0] origin_delayed_intersect_delay_24_x_exp;
  reg [12:0] origin_delayed_intersect_delay_24_x_mant;
  reg  origin_delayed_intersect_delay_24_y_sign;
  reg [5:0] origin_delayed_intersect_delay_24_y_exp;
  reg [12:0] origin_delayed_intersect_delay_24_y_mant;
  reg  origin_delayed_intersect_delay_24_z_sign;
  reg [5:0] origin_delayed_intersect_delay_24_z_exp;
  reg [12:0] origin_delayed_intersect_delay_24_z_mant;
  reg  origin_delayed_intersect_delay_25_x_sign;
  reg [5:0] origin_delayed_intersect_delay_25_x_exp;
  reg [12:0] origin_delayed_intersect_delay_25_x_mant;
  reg  origin_delayed_intersect_delay_25_y_sign;
  reg [5:0] origin_delayed_intersect_delay_25_y_exp;
  reg [12:0] origin_delayed_intersect_delay_25_y_mant;
  reg  origin_delayed_intersect_delay_25_z_sign;
  reg [5:0] origin_delayed_intersect_delay_25_z_exp;
  reg [12:0] origin_delayed_intersect_delay_25_z_mant;
  reg  origin_delayed_result_x_sign;
  reg [5:0] origin_delayed_result_x_exp;
  reg [12:0] origin_delayed_result_x_mant;
  reg  origin_delayed_result_y_sign;
  reg [5:0] origin_delayed_result_y_exp;
  reg [12:0] origin_delayed_result_y_mant;
  reg  origin_delayed_result_z_sign;
  reg [5:0] origin_delayed_result_z_exp;
  reg [12:0] origin_delayed_result_z_mant;
  reg  dir_delayed_reflect_dir_delay_1_x_sign;
  reg [5:0] dir_delayed_reflect_dir_delay_1_x_exp;
  reg [12:0] dir_delayed_reflect_dir_delay_1_x_mant;
  reg  dir_delayed_reflect_dir_delay_1_y_sign;
  reg [5:0] dir_delayed_reflect_dir_delay_1_y_exp;
  reg [12:0] dir_delayed_reflect_dir_delay_1_y_mant;
  reg  dir_delayed_reflect_dir_delay_1_z_sign;
  reg [5:0] dir_delayed_reflect_dir_delay_1_z_exp;
  reg [12:0] dir_delayed_reflect_dir_delay_1_z_mant;
  reg  dir_delayed_result_x_sign;
  reg [5:0] dir_delayed_result_x_exp;
  reg [12:0] dir_delayed_result_x_mant;
  reg  dir_delayed_result_y_sign;
  reg [5:0] dir_delayed_result_y_exp;
  reg [12:0] dir_delayed_result_y_mant;
  reg  dir_delayed_result_z_sign;
  reg [5:0] dir_delayed_result_z_exp;
  reg [12:0] dir_delayed_result_z_mant;
  wire  intersects_delayed;
  wire  reflect_ray_origin_x_sign;
  wire [5:0] reflect_ray_origin_x_exp;
  wire [12:0] reflect_ray_origin_x_mant;
  wire  reflect_ray_origin_y_sign;
  wire [5:0] reflect_ray_origin_y_exp;
  wire [12:0] reflect_ray_origin_y_mant;
  wire  reflect_ray_origin_z_sign;
  wire [5:0] reflect_ray_origin_z_exp;
  wire [12:0] reflect_ray_origin_z_mant;
  wire  reflect_ray_direction_x_sign;
  wire [5:0] reflect_ray_direction_x_exp;
  wire [12:0] reflect_ray_direction_x_mant;
  wire  reflect_ray_direction_y_sign;
  wire [5:0] reflect_ray_direction_y_exp;
  wire [12:0] reflect_ray_direction_y_mant;
  wire  reflect_ray_direction_z_sign;
  wire [5:0] reflect_ray_direction_z_exp;
  wire [12:0] reflect_ray_direction_z_mant;
  wire  ray_delayed_origin_x_sign;
  wire [5:0] ray_delayed_origin_x_exp;
  wire [12:0] ray_delayed_origin_x_mant;
  wire  ray_delayed_origin_y_sign;
  wire [5:0] ray_delayed_origin_y_exp;
  wire [12:0] ray_delayed_origin_y_mant;
  wire  ray_delayed_origin_z_sign;
  wire [5:0] ray_delayed_origin_z_exp;
  wire [12:0] ray_delayed_origin_z_mant;
  wire  ray_delayed_direction_x_sign;
  wire [5:0] ray_delayed_direction_x_exp;
  wire [12:0] ray_delayed_direction_x_mant;
  wire  ray_delayed_direction_y_sign;
  wire [5:0] ray_delayed_direction_y_exp;
  wire [12:0] ray_delayed_direction_y_mant;
  wire  ray_delayed_direction_z_sign;
  wire [5:0] ray_delayed_direction_z_exp;
  wire [12:0] ray_delayed_direction_z_mant;
  assign _zz_6_ = {{d2_sign,d2_exp},d2_mant};
  assign _zz_7_ = {{io_sphere_radius2_sign,io_sphere_radius2_exp},io_sphere_radius2_mant};
  assign _zz_8_ = {{t1_sign,t1_exp},t1_mant};
  assign _zz_9_ = {{t0_sign,t0_exp},t0_mant};
  SubVecVec u_c0r0 ( 
    .io_op_vld(io_op_vld),
    .io_op_a_x_sign(io_sphere_center_x_sign),
    .io_op_a_x_exp(io_sphere_center_x_exp),
    .io_op_a_x_mant(io_sphere_center_x_mant),
    .io_op_a_y_sign(io_sphere_center_y_sign),
    .io_op_a_y_exp(io_sphere_center_y_exp),
    .io_op_a_y_mant(io_sphere_center_y_mant),
    .io_op_a_z_sign(io_sphere_center_z_sign),
    .io_op_a_z_exp(io_sphere_center_z_exp),
    .io_op_a_z_mant(io_sphere_center_z_mant),
    .io_op_b_x_sign(io_ray_origin_x_sign),
    .io_op_b_x_exp(io_ray_origin_x_exp),
    .io_op_b_x_mant(io_ray_origin_x_mant),
    .io_op_b_y_sign(io_ray_origin_y_sign),
    .io_op_b_y_exp(io_ray_origin_y_exp),
    .io_op_b_y_mant(io_ray_origin_y_mant),
    .io_op_b_z_sign(io_ray_origin_z_sign),
    .io_op_b_z_exp(io_ray_origin_z_exp),
    .io_op_b_z_mant(io_ray_origin_z_mant),
    .io_result_vld(u_c0r0_io_result_vld),
    .io_result_x_sign(u_c0r0_io_result_x_sign),
    .io_result_x_exp(u_c0r0_io_result_x_exp),
    .io_result_x_mant(u_c0r0_io_result_x_mant),
    .io_result_y_sign(u_c0r0_io_result_y_sign),
    .io_result_y_exp(u_c0r0_io_result_y_exp),
    .io_result_y_mant(u_c0r0_io_result_y_mant),
    .io_result_z_sign(u_c0r0_io_result_z_sign),
    .io_result_z_exp(u_c0r0_io_result_z_exp),
    .io_result_z_mant(u_c0r0_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct u_dot_tca ( 
    .io_op_vld(c0r0_vld),
    .io_op_a_x_sign(c0r0_x_sign),
    .io_op_a_x_exp(c0r0_x_exp),
    .io_op_a_x_mant(c0r0_x_mant),
    .io_op_a_y_sign(c0r0_y_sign),
    .io_op_a_y_exp(c0r0_y_exp),
    .io_op_a_y_mant(c0r0_y_mant),
    .io_op_a_z_sign(c0r0_z_sign),
    .io_op_a_z_exp(c0r0_z_exp),
    .io_op_a_z_mant(c0r0_z_mant),
    .io_op_b_x_sign(dir_delayed_c0r0_x_sign),
    .io_op_b_x_exp(dir_delayed_c0r0_x_exp),
    .io_op_b_x_mant(dir_delayed_c0r0_x_mant),
    .io_op_b_y_sign(dir_delayed_c0r0_y_sign),
    .io_op_b_y_exp(dir_delayed_c0r0_y_exp),
    .io_op_b_y_mant(dir_delayed_c0r0_y_mant),
    .io_op_b_z_sign(dir_delayed_c0r0_z_sign),
    .io_op_b_z_exp(dir_delayed_c0r0_z_exp),
    .io_op_b_z_mant(dir_delayed_c0r0_z_mant),
    .io_result_vld(u_dot_tca_io_result_vld),
    .io_result_sign(u_dot_tca_io_result_sign),
    .io_result_exp(u_dot_tca_io_result_exp),
    .io_result_mant(u_dot_tca_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct u_dot_c0r0_c0r0 ( 
    .io_op_vld(c0r0_vld),
    .io_op_a_x_sign(c0r0_x_sign),
    .io_op_a_x_exp(c0r0_x_exp),
    .io_op_a_x_mant(c0r0_x_mant),
    .io_op_a_y_sign(c0r0_y_sign),
    .io_op_a_y_exp(c0r0_y_exp),
    .io_op_a_y_mant(c0r0_y_mant),
    .io_op_a_z_sign(c0r0_z_sign),
    .io_op_a_z_exp(c0r0_z_exp),
    .io_op_a_z_mant(c0r0_z_mant),
    .io_op_b_x_sign(c0r0_x_sign),
    .io_op_b_x_exp(c0r0_x_exp),
    .io_op_b_x_mant(c0r0_x_mant),
    .io_op_b_y_sign(c0r0_y_sign),
    .io_op_b_y_exp(c0r0_y_exp),
    .io_op_b_y_mant(c0r0_y_mant),
    .io_op_b_z_sign(c0r0_z_sign),
    .io_op_b_z_exp(c0r0_z_exp),
    .io_op_b_z_mant(c0r0_z_mant),
    .io_result_vld(u_dot_c0r0_c0r0_io_result_vld),
    .io_result_sign(u_dot_c0r0_c0r0_io_result_sign),
    .io_result_exp(u_dot_c0r0_c0r0_io_result_exp),
    .io_result_mant(u_dot_c0r0_c0r0_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_tca_tca ( 
    .p0_vld(tca_vld),
    .op_a_p0_sign(tca_sign),
    .exp_a_p0(tca_exp),
    .op_a_p0_mant(tca_mant),
    .op_b_p0_sign(tca_sign),
    .exp_b_p0(tca_exp),
    .op_b_p0_mant(tca_mant),
    .io_result_vld(u_tca_tca_io_result_vld),
    .io_result_sign(u_tca_tca_io_result_sign),
    .io_result_exp(u_tca_tca_io_result_exp),
    .io_result_mant(u_tca_tca_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_d2 ( 
    .io_op_vld(tca_tca_vld),
    .io_op_a_sign(c0r0_c0r0_delayed_sign),
    .io_op_a_exp(c0r0_c0r0_delayed_exp),
    .io_op_a_mant(c0r0_c0r0_delayed_mant),
    .io_op_b_sign(tca_tca_sign),
    .io_op_b_exp(tca_tca_exp),
    .io_op_b_mant(tca_tca_mant),
    .io_result_vld(u_d2_io_result_vld),
    .io_result_sign(u_d2_io_result_sign),
    .io_result_exp(u_d2_io_result_exp),
    .io_result_mant(u_d2_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_radius2_m_d2 ( 
    .io_op_vld(d2_vld),
    .io_op_a_sign(io_sphere_radius2_sign),
    .io_op_a_exp(io_sphere_radius2_exp),
    .io_op_a_mant(io_sphere_radius2_mant),
    .io_op_b_sign(d2_sign),
    .io_op_b_exp(d2_exp),
    .io_op_b_mant(d2_mant),
    .io_result_vld(u_radius2_m_d2_io_result_vld),
    .io_result_sign(u_radius2_m_d2_io_result_sign),
    .io_result_exp(u_radius2_m_d2_io_result_exp),
    .io_result_mant(u_radius2_m_d2_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSqrt u_thc ( 
    .p0_vld(radius2_m_d2_vld),
    .op_p0_sign(radius2_m_d2_sign),
    .op_p0_exp(radius2_m_d2_exp),
    .op_p0_mant(radius2_m_d2_mant),
    .io_result_vld(u_thc_io_result_vld),
    .io_result_sign(u_thc_io_result_sign),
    .io_result_exp(u_thc_io_result_exp),
    .io_result_mant(u_thc_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_t0 ( 
    .io_op_vld(thc_vld),
    .io_op_a_sign(tca_delayed_sign),
    .io_op_a_exp(tca_delayed_exp),
    .io_op_a_mant(tca_delayed_mant),
    .io_op_b_sign(thc_sign),
    .io_op_b_exp(thc_exp),
    .io_op_b_mant(thc_mant),
    .io_result_vld(u_t0_io_result_vld),
    .io_result_sign(u_t0_io_result_sign),
    .io_result_exp(u_t0_io_result_exp),
    .io_result_mant(u_t0_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_t1 ( 
    .p0_vld(thc_vld),
    .op_a_p0_sign(tca_delayed_sign),
    .op_a_p0_exp(tca_delayed_exp),
    .op_a_p0_mant(tca_delayed_mant),
    .op_b_p0_sign(thc_sign),
    .op_b_p0_exp(thc_exp),
    .op_b_p0_mant(thc_mant),
    .io_result_vld(u_t1_io_result_vld),
    .io_result_sign(u_t1_io_result_sign),
    .io_result_exp(u_t1_io_result_exp),
    .io_result_mant(u_t1_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  Intersection u_intersection ( 
    .io_op_vld(t_vld),
    .io_ray_origin_x_sign(origin_delayed_intersect_x_sign),
    .io_ray_origin_x_exp(origin_delayed_intersect_x_exp),
    .io_ray_origin_x_mant(origin_delayed_intersect_x_mant),
    .io_ray_origin_y_sign(origin_delayed_intersect_y_sign),
    .io_ray_origin_y_exp(origin_delayed_intersect_y_exp),
    .io_ray_origin_y_mant(origin_delayed_intersect_y_mant),
    .io_ray_origin_z_sign(origin_delayed_intersect_z_sign),
    .io_ray_origin_z_exp(origin_delayed_intersect_z_exp),
    .io_ray_origin_z_mant(origin_delayed_intersect_z_mant),
    .io_ray_dir_x_sign(dir_delayed_intersect_x_sign),
    .io_ray_dir_x_exp(dir_delayed_intersect_x_exp),
    .io_ray_dir_x_mant(dir_delayed_intersect_x_mant),
    .io_ray_dir_y_sign(dir_delayed_intersect_y_sign),
    .io_ray_dir_y_exp(dir_delayed_intersect_y_exp),
    .io_ray_dir_y_mant(dir_delayed_intersect_y_mant),
    .io_ray_dir_z_sign(dir_delayed_intersect_z_sign),
    .io_ray_dir_z_exp(dir_delayed_intersect_z_exp),
    .io_ray_dir_z_mant(dir_delayed_intersect_z_mant),
    .io_t_sign(t_sign),
    .io_t_exp(t_exp),
    .io_t_mant(t_mant),
    .io_result_vld(u_intersection_io_result_vld),
    .io_result_x_sign(u_intersection_io_result_x_sign),
    .io_result_x_exp(u_intersection_io_result_x_exp),
    .io_result_x_mant(u_intersection_io_result_x_mant),
    .io_result_y_sign(u_intersection_io_result_y_sign),
    .io_result_y_exp(u_intersection_io_result_y_exp),
    .io_result_y_mant(u_intersection_io_result_y_mant),
    .io_result_z_sign(u_intersection_io_result_z_sign),
    .io_result_z_exp(u_intersection_io_result_z_exp),
    .io_result_z_mant(u_intersection_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  SubVecVec u_normal_raw ( 
    .io_op_vld(intersection_vld),
    .io_op_a_x_sign(center_delayed_x_sign),
    .io_op_a_x_exp(center_delayed_x_exp),
    .io_op_a_x_mant(center_delayed_x_mant),
    .io_op_a_y_sign(center_delayed_y_sign),
    .io_op_a_y_exp(center_delayed_y_exp),
    .io_op_a_y_mant(center_delayed_y_mant),
    .io_op_a_z_sign(center_delayed_z_sign),
    .io_op_a_z_exp(center_delayed_z_exp),
    .io_op_a_z_mant(center_delayed_z_mant),
    .io_op_b_x_sign(intersection_x_sign),
    .io_op_b_x_exp(intersection_x_exp),
    .io_op_b_x_mant(intersection_x_mant),
    .io_op_b_y_sign(intersection_y_sign),
    .io_op_b_y_exp(intersection_y_exp),
    .io_op_b_y_mant(intersection_y_mant),
    .io_op_b_z_sign(intersection_z_sign),
    .io_op_b_z_exp(intersection_z_exp),
    .io_op_b_z_mant(intersection_z_mant),
    .io_result_vld(u_normal_raw_io_result_vld),
    .io_result_x_sign(u_normal_raw_io_result_x_sign),
    .io_result_x_exp(u_normal_raw_io_result_x_exp),
    .io_result_x_mant(u_normal_raw_io_result_x_mant),
    .io_result_y_sign(u_normal_raw_io_result_y_sign),
    .io_result_y_exp(u_normal_raw_io_result_y_exp),
    .io_result_y_mant(u_normal_raw_io_result_y_mant),
    .io_result_z_sign(u_normal_raw_io_result_z_sign),
    .io_result_z_exp(u_normal_raw_io_result_z_exp),
    .io_result_z_mant(u_normal_raw_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  Normalize u_normalize ( 
    .io_op_vld(normal_raw_vld),
    .io_op_x_sign(normal_raw_x_sign),
    .io_op_x_exp(normal_raw_x_exp),
    .io_op_x_mant(normal_raw_x_mant),
    .io_op_y_sign(normal_raw_y_sign),
    .io_op_y_exp(normal_raw_y_exp),
    .io_op_y_mant(normal_raw_y_mant),
    .io_op_z_sign(normal_raw_z_sign),
    .io_op_z_exp(normal_raw_z_exp),
    .io_op_z_mant(normal_raw_z_mant),
    .io_result_vld(u_normalize_io_result_vld),
    .io_result_x_sign(u_normalize_io_result_x_sign),
    .io_result_x_exp(u_normalize_io_result_x_exp),
    .io_result_x_mant(u_normalize_io_result_x_mant),
    .io_result_y_sign(u_normalize_io_result_y_sign),
    .io_result_y_exp(u_normalize_io_result_y_exp),
    .io_result_y_mant(u_normalize_io_result_y_mant),
    .io_result_z_sign(u_normalize_io_result_z_sign),
    .io_result_z_exp(u_normalize_io_result_z_exp),
    .io_result_z_mant(u_normalize_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct u_dir_dot_normal ( 
    .io_op_vld(normal_vld),
    .io_op_a_x_sign(normal_x_sign),
    .io_op_a_x_exp(normal_x_exp),
    .io_op_a_x_mant(normal_x_mant),
    .io_op_a_y_sign(normal_y_sign),
    .io_op_a_y_exp(normal_y_exp),
    .io_op_a_y_mant(normal_y_mant),
    .io_op_a_z_sign(normal_z_sign),
    .io_op_a_z_exp(normal_z_exp),
    .io_op_a_z_mant(normal_z_mant),
    .io_op_b_x_sign(dir_delayed_dot_normal_x_sign),
    .io_op_b_x_exp(dir_delayed_dot_normal_x_exp),
    .io_op_b_x_mant(dir_delayed_dot_normal_x_mant),
    .io_op_b_y_sign(dir_delayed_dot_normal_y_sign),
    .io_op_b_y_exp(dir_delayed_dot_normal_y_exp),
    .io_op_b_y_mant(dir_delayed_dot_normal_y_mant),
    .io_op_b_z_sign(dir_delayed_dot_normal_z_sign),
    .io_op_b_z_exp(dir_delayed_dot_normal_z_exp),
    .io_op_b_z_mant(dir_delayed_dot_normal_z_mant),
    .io_result_vld(u_dir_dot_normal_io_result_vld),
    .io_result_sign(u_dir_dot_normal_io_result_sign),
    .io_result_exp(u_dir_dot_normal_io_result_exp),
    .io_result_mant(u_dir_dot_normal_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  MulVecScalar u_dir_mirror ( 
    .io_op_vld(dir_dot_normal_x2_vld),
    .io_op_vec_x_sign(normal_delayed_dir_mirror_x_sign),
    .io_op_vec_x_exp(normal_delayed_dir_mirror_x_exp),
    .io_op_vec_x_mant(normal_delayed_dir_mirror_x_mant),
    .io_op_vec_y_sign(normal_delayed_dir_mirror_y_sign),
    .io_op_vec_y_exp(normal_delayed_dir_mirror_y_exp),
    .io_op_vec_y_mant(normal_delayed_dir_mirror_y_mant),
    .io_op_vec_z_sign(normal_delayed_dir_mirror_z_sign),
    .io_op_vec_z_exp(normal_delayed_dir_mirror_z_exp),
    .io_op_vec_z_mant(normal_delayed_dir_mirror_z_mant),
    .io_op_scalar_sign(dir_dot_normal_x2_sign),
    .io_op_scalar_exp(dir_dot_normal_x2_exp),
    .io_op_scalar_mant(dir_dot_normal_x2_mant),
    .io_result_vld(u_dir_mirror_io_result_vld),
    .io_result_x_sign(u_dir_mirror_io_result_x_sign),
    .io_result_x_exp(u_dir_mirror_io_result_x_exp),
    .io_result_x_mant(u_dir_mirror_io_result_x_mant),
    .io_result_y_sign(u_dir_mirror_io_result_y_sign),
    .io_result_y_exp(u_dir_mirror_io_result_y_exp),
    .io_result_y_mant(u_dir_mirror_io_result_y_mant),
    .io_result_z_sign(u_dir_mirror_io_result_z_sign),
    .io_result_z_exp(u_dir_mirror_io_result_z_exp),
    .io_result_z_mant(u_dir_mirror_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  SubVecVec u_reflect_dir ( 
    .io_op_vld(dir_mirror_vld),
    .io_op_a_x_sign(dir_delayed_reflect_dir_x_sign),
    .io_op_a_x_exp(dir_delayed_reflect_dir_x_exp),
    .io_op_a_x_mant(dir_delayed_reflect_dir_x_mant),
    .io_op_a_y_sign(dir_delayed_reflect_dir_y_sign),
    .io_op_a_y_exp(dir_delayed_reflect_dir_y_exp),
    .io_op_a_y_mant(dir_delayed_reflect_dir_y_mant),
    .io_op_a_z_sign(dir_delayed_reflect_dir_z_sign),
    .io_op_a_z_exp(dir_delayed_reflect_dir_z_exp),
    .io_op_a_z_mant(dir_delayed_reflect_dir_z_mant),
    .io_op_b_x_sign(dir_mirror_x_sign),
    .io_op_b_x_exp(dir_mirror_x_exp),
    .io_op_b_x_mant(dir_mirror_x_mant),
    .io_op_b_y_sign(dir_mirror_y_sign),
    .io_op_b_y_exp(dir_mirror_y_exp),
    .io_op_b_y_mant(dir_mirror_y_mant),
    .io_op_b_z_sign(dir_mirror_z_sign),
    .io_op_b_z_exp(dir_mirror_z_exp),
    .io_op_b_z_mant(dir_mirror_z_mant),
    .io_result_vld(u_reflect_dir_io_result_vld),
    .io_result_x_sign(u_reflect_dir_io_result_x_sign),
    .io_result_x_exp(u_reflect_dir_io_result_x_exp),
    .io_result_x_mant(u_reflect_dir_io_result_x_mant),
    .io_result_y_sign(u_reflect_dir_io_result_y_sign),
    .io_result_y_exp(u_reflect_dir_io_result_y_exp),
    .io_result_y_mant(u_reflect_dir_io_result_y_mant),
    .io_result_z_sign(u_reflect_dir_io_result_z_sign),
    .io_result_z_exp(u_reflect_dir_io_result_z_exp),
    .io_result_z_mant(u_reflect_dir_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign c0r0_vld = u_c0r0_io_result_vld;
  assign c0r0_x_sign = u_c0r0_io_result_x_sign;
  assign c0r0_x_exp = u_c0r0_io_result_x_exp;
  assign c0r0_x_mant = u_c0r0_io_result_x_mant;
  assign c0r0_y_sign = u_c0r0_io_result_y_sign;
  assign c0r0_y_exp = u_c0r0_io_result_y_exp;
  assign c0r0_y_mant = u_c0r0_io_result_y_mant;
  assign c0r0_z_sign = u_c0r0_io_result_z_sign;
  assign c0r0_z_exp = u_c0r0_io_result_z_exp;
  assign c0r0_z_mant = u_c0r0_io_result_z_mant;
  assign tca_vld = u_dot_tca_io_result_vld;
  assign tca_sign = u_dot_tca_io_result_sign;
  assign tca_exp = u_dot_tca_io_result_exp;
  assign tca_mant = u_dot_tca_io_result_mant;
  assign intersects_tca = (((! tca_sign) && (! ((tca_exp == (6'b111111)) && (tca_mant != (13'b0000000000000))))) && (! ((tca_exp == (6'b111111)) && (! (tca_mant != (13'b0000000000000))))));
  assign c0r0_c0r0_vld = u_dot_c0r0_c0r0_io_result_vld;
  assign c0r0_c0r0_sign = u_dot_c0r0_c0r0_io_result_sign;
  assign c0r0_c0r0_exp = u_dot_c0r0_c0r0_io_result_exp;
  assign c0r0_c0r0_mant = u_dot_c0r0_c0r0_io_result_mant;
  assign tca_tca_vld = u_tca_tca_io_result_vld;
  assign tca_tca_sign = u_tca_tca_io_result_sign;
  assign tca_tca_exp = u_tca_tca_io_result_exp;
  assign tca_tca_mant = u_tca_tca_io_result_mant;
  assign d2_vld = u_d2_io_result_vld;
  assign d2_sign = u_d2_io_result_sign;
  assign d2_exp = u_d2_io_result_exp;
  assign d2_mant = u_d2_io_result_mant;
  assign radius2_ge_d2 = ($signed(_zz_6_) <= $signed(_zz_7_));
  assign io_early_intersects_vld = d2_vld_regNext;
  assign io_early_intersects = _zz_1_;
  assign radius2_m_d2_vld = u_radius2_m_d2_io_result_vld;
  assign radius2_m_d2_sign = u_radius2_m_d2_io_result_sign;
  assign radius2_m_d2_exp = u_radius2_m_d2_io_result_exp;
  assign radius2_m_d2_mant = u_radius2_m_d2_io_result_mant;
  assign intersects_d2 = (((! radius2_m_d2_sign) && (! ((radius2_m_d2_exp == (6'b111111)) && (radius2_m_d2_mant != (13'b0000000000000))))) && (! ((radius2_m_d2_exp == (6'b111111)) && (! (radius2_m_d2_mant != (13'b0000000000000))))));
  assign thc_vld = u_thc_io_result_vld;
  assign thc_sign = u_thc_io_result_sign;
  assign thc_exp = u_thc_io_result_exp;
  assign thc_mant = u_thc_io_result_mant;
  assign t0_vld = u_t0_io_result_vld;
  assign t0_sign = u_t0_io_result_sign;
  assign t0_exp = u_t0_io_result_exp;
  assign t0_mant = u_t0_io_result_mant;
  assign t1_vld = u_t1_io_result_vld;
  assign t1_sign = u_t1_io_result_sign;
  assign t1_exp = u_t1_io_result_exp;
  assign t1_mant = u_t1_io_result_mant;
  assign t_vld = t0_vld_regNext;
  assign _zz_2_ = ($signed(_zz_8_) < $signed(_zz_9_));
  assign t_sign = _zz_3_;
  assign t_exp = _zz_4_;
  assign t_mant = _zz_5_;
  assign intersection_vld = u_intersection_io_result_vld;
  assign intersection_x_sign = u_intersection_io_result_x_sign;
  assign intersection_x_exp = u_intersection_io_result_x_exp;
  assign intersection_x_mant = u_intersection_io_result_x_mant;
  assign intersection_y_sign = u_intersection_io_result_y_sign;
  assign intersection_y_exp = u_intersection_io_result_y_exp;
  assign intersection_y_mant = u_intersection_io_result_y_mant;
  assign intersection_z_sign = u_intersection_io_result_z_sign;
  assign intersection_z_exp = u_intersection_io_result_z_exp;
  assign intersection_z_mant = u_intersection_io_result_z_mant;
  assign normal_raw_vld = u_normal_raw_io_result_vld;
  assign normal_raw_x_sign = u_normal_raw_io_result_x_sign;
  assign normal_raw_x_exp = u_normal_raw_io_result_x_exp;
  assign normal_raw_x_mant = u_normal_raw_io_result_x_mant;
  assign normal_raw_y_sign = u_normal_raw_io_result_y_sign;
  assign normal_raw_y_exp = u_normal_raw_io_result_y_exp;
  assign normal_raw_y_mant = u_normal_raw_io_result_y_mant;
  assign normal_raw_z_sign = u_normal_raw_io_result_z_sign;
  assign normal_raw_z_exp = u_normal_raw_io_result_z_exp;
  assign normal_raw_z_mant = u_normal_raw_io_result_z_mant;
  assign normal_vld = u_normalize_io_result_vld;
  assign normal_x_sign = u_normalize_io_result_x_sign;
  assign normal_x_exp = u_normalize_io_result_x_exp;
  assign normal_x_mant = u_normalize_io_result_x_mant;
  assign normal_y_sign = u_normalize_io_result_y_sign;
  assign normal_y_exp = u_normalize_io_result_y_exp;
  assign normal_y_mant = u_normalize_io_result_y_mant;
  assign normal_z_sign = u_normalize_io_result_z_sign;
  assign normal_z_exp = u_normalize_io_result_z_exp;
  assign normal_z_mant = u_normalize_io_result_z_mant;
  assign io_early_normal_vld = normal_vld;
  assign io_early_normal_x_sign = normal_x_sign;
  assign io_early_normal_x_exp = normal_x_exp;
  assign io_early_normal_x_mant = normal_x_mant;
  assign io_early_normal_y_sign = normal_y_sign;
  assign io_early_normal_y_exp = normal_y_exp;
  assign io_early_normal_y_mant = normal_y_mant;
  assign io_early_normal_z_sign = normal_z_sign;
  assign io_early_normal_z_exp = normal_z_exp;
  assign io_early_normal_z_mant = normal_z_mant;
  assign dir_dot_normal_vld = u_dir_dot_normal_io_result_vld;
  assign dir_dot_normal_sign = u_dir_dot_normal_io_result_sign;
  assign dir_dot_normal_exp = u_dir_dot_normal_io_result_exp;
  assign dir_dot_normal_mant = u_dir_dot_normal_io_result_mant;
  assign dir_dot_normal_x2_vld = dir_dot_normal_vld_regNext;
  assign dir_dot_normal_x2_sign = dir_dot_normal_sign_regNext;
  assign dir_dot_normal_x2_exp = (dir_dot_normal_exp_regNext + (6'b000001));
  assign dir_dot_normal_x2_mant = dir_dot_normal_mant_regNext;
  assign dir_mirror_vld = u_dir_mirror_io_result_vld;
  assign dir_mirror_x_sign = u_dir_mirror_io_result_x_sign;
  assign dir_mirror_x_exp = u_dir_mirror_io_result_x_exp;
  assign dir_mirror_x_mant = u_dir_mirror_io_result_x_mant;
  assign dir_mirror_y_sign = u_dir_mirror_io_result_y_sign;
  assign dir_mirror_y_exp = u_dir_mirror_io_result_y_exp;
  assign dir_mirror_y_mant = u_dir_mirror_io_result_y_mant;
  assign dir_mirror_z_sign = u_dir_mirror_io_result_z_sign;
  assign dir_mirror_z_exp = u_dir_mirror_io_result_z_exp;
  assign dir_mirror_z_mant = u_dir_mirror_io_result_z_mant;
  assign reflect_dir_vld = u_reflect_dir_io_result_vld;
  assign reflect_dir_x_sign = u_reflect_dir_io_result_x_sign;
  assign reflect_dir_x_exp = u_reflect_dir_io_result_x_exp;
  assign reflect_dir_x_mant = u_reflect_dir_io_result_x_mant;
  assign reflect_dir_y_sign = u_reflect_dir_io_result_y_sign;
  assign reflect_dir_y_exp = u_reflect_dir_io_result_y_exp;
  assign reflect_dir_y_mant = u_reflect_dir_io_result_y_mant;
  assign reflect_dir_z_sign = u_reflect_dir_io_result_z_sign;
  assign reflect_dir_z_exp = u_reflect_dir_io_result_z_exp;
  assign reflect_dir_z_mant = u_reflect_dir_io_result_z_mant;
  assign intersects_delayed = (intersects_tca_delayed && intersects_d2_delayed);
  assign reflect_ray_origin_x_sign = intersection_delayed_x_sign;
  assign reflect_ray_origin_x_exp = intersection_delayed_x_exp;
  assign reflect_ray_origin_x_mant = intersection_delayed_x_mant;
  assign reflect_ray_origin_y_sign = intersection_delayed_y_sign;
  assign reflect_ray_origin_y_exp = intersection_delayed_y_exp;
  assign reflect_ray_origin_y_mant = intersection_delayed_y_mant;
  assign reflect_ray_origin_z_sign = intersection_delayed_z_sign;
  assign reflect_ray_origin_z_exp = intersection_delayed_z_exp;
  assign reflect_ray_origin_z_mant = intersection_delayed_z_mant;
  assign reflect_ray_direction_x_sign = reflect_dir_x_sign;
  assign reflect_ray_direction_x_exp = reflect_dir_x_exp;
  assign reflect_ray_direction_x_mant = reflect_dir_x_mant;
  assign reflect_ray_direction_y_sign = reflect_dir_y_sign;
  assign reflect_ray_direction_y_exp = reflect_dir_y_exp;
  assign reflect_ray_direction_y_mant = reflect_dir_y_mant;
  assign reflect_ray_direction_z_sign = reflect_dir_z_sign;
  assign reflect_ray_direction_z_exp = reflect_dir_z_exp;
  assign reflect_ray_direction_z_mant = reflect_dir_z_mant;
  assign ray_delayed_origin_x_sign = origin_delayed_result_x_sign;
  assign ray_delayed_origin_x_exp = origin_delayed_result_x_exp;
  assign ray_delayed_origin_x_mant = origin_delayed_result_x_mant;
  assign ray_delayed_origin_y_sign = origin_delayed_result_y_sign;
  assign ray_delayed_origin_y_exp = origin_delayed_result_y_exp;
  assign ray_delayed_origin_y_mant = origin_delayed_result_y_mant;
  assign ray_delayed_origin_z_sign = origin_delayed_result_z_sign;
  assign ray_delayed_origin_z_exp = origin_delayed_result_z_exp;
  assign ray_delayed_origin_z_mant = origin_delayed_result_z_mant;
  assign ray_delayed_direction_x_sign = dir_delayed_result_x_sign;
  assign ray_delayed_direction_x_exp = dir_delayed_result_x_exp;
  assign ray_delayed_direction_x_mant = dir_delayed_result_x_mant;
  assign ray_delayed_direction_y_sign = dir_delayed_result_y_sign;
  assign ray_delayed_direction_y_exp = dir_delayed_result_y_exp;
  assign ray_delayed_direction_y_mant = dir_delayed_result_y_mant;
  assign ray_delayed_direction_z_sign = dir_delayed_result_z_sign;
  assign ray_delayed_direction_z_exp = dir_delayed_result_z_exp;
  assign ray_delayed_direction_z_mant = dir_delayed_result_z_mant;
  assign io_result_vld = reflect_dir_vld;
  assign io_result_intersects = intersects_delayed;
  assign io_result_t_sign = t_delayed_sign;
  assign io_result_t_exp = t_delayed_exp;
  assign io_result_t_mant = t_delayed_mant;
  assign io_result_intersection_x_sign = intersection_delayed_x_sign;
  assign io_result_intersection_x_exp = intersection_delayed_x_exp;
  assign io_result_intersection_x_mant = intersection_delayed_x_mant;
  assign io_result_intersection_y_sign = intersection_delayed_y_sign;
  assign io_result_intersection_y_exp = intersection_delayed_y_exp;
  assign io_result_intersection_y_mant = intersection_delayed_y_mant;
  assign io_result_intersection_z_sign = intersection_delayed_z_sign;
  assign io_result_intersection_z_exp = intersection_delayed_z_exp;
  assign io_result_intersection_z_mant = intersection_delayed_z_mant;
  assign io_result_normal_x_sign = normal_delayed_result_x_sign;
  assign io_result_normal_x_exp = normal_delayed_result_x_exp;
  assign io_result_normal_x_mant = normal_delayed_result_x_mant;
  assign io_result_normal_y_sign = normal_delayed_result_y_sign;
  assign io_result_normal_y_exp = normal_delayed_result_y_exp;
  assign io_result_normal_y_mant = normal_delayed_result_y_mant;
  assign io_result_normal_z_sign = normal_delayed_result_z_sign;
  assign io_result_normal_z_exp = normal_delayed_result_z_exp;
  assign io_result_normal_z_mant = normal_delayed_result_z_mant;
  assign io_result_reflect_ray_origin_x_sign = reflect_ray_origin_x_sign;
  assign io_result_reflect_ray_origin_x_exp = reflect_ray_origin_x_exp;
  assign io_result_reflect_ray_origin_x_mant = reflect_ray_origin_x_mant;
  assign io_result_reflect_ray_origin_y_sign = reflect_ray_origin_y_sign;
  assign io_result_reflect_ray_origin_y_exp = reflect_ray_origin_y_exp;
  assign io_result_reflect_ray_origin_y_mant = reflect_ray_origin_y_mant;
  assign io_result_reflect_ray_origin_z_sign = reflect_ray_origin_z_sign;
  assign io_result_reflect_ray_origin_z_exp = reflect_ray_origin_z_exp;
  assign io_result_reflect_ray_origin_z_mant = reflect_ray_origin_z_mant;
  assign io_result_reflect_ray_direction_x_sign = reflect_ray_direction_x_sign;
  assign io_result_reflect_ray_direction_x_exp = reflect_ray_direction_x_exp;
  assign io_result_reflect_ray_direction_x_mant = reflect_ray_direction_x_mant;
  assign io_result_reflect_ray_direction_y_sign = reflect_ray_direction_y_sign;
  assign io_result_reflect_ray_direction_y_exp = reflect_ray_direction_y_exp;
  assign io_result_reflect_ray_direction_y_mant = reflect_ray_direction_y_mant;
  assign io_result_reflect_ray_direction_z_sign = reflect_ray_direction_z_sign;
  assign io_result_reflect_ray_direction_z_exp = reflect_ray_direction_z_exp;
  assign io_result_reflect_ray_direction_z_mant = reflect_ray_direction_z_mant;
  assign io_result_ray_origin_x_sign = ray_delayed_origin_x_sign;
  assign io_result_ray_origin_x_exp = ray_delayed_origin_x_exp;
  assign io_result_ray_origin_x_mant = ray_delayed_origin_x_mant;
  assign io_result_ray_origin_y_sign = ray_delayed_origin_y_sign;
  assign io_result_ray_origin_y_exp = ray_delayed_origin_y_exp;
  assign io_result_ray_origin_y_mant = ray_delayed_origin_y_mant;
  assign io_result_ray_origin_z_sign = ray_delayed_origin_z_sign;
  assign io_result_ray_origin_z_exp = ray_delayed_origin_z_exp;
  assign io_result_ray_origin_z_mant = ray_delayed_origin_z_mant;
  assign io_result_ray_direction_x_sign = ray_delayed_direction_x_sign;
  assign io_result_ray_direction_x_exp = ray_delayed_direction_x_exp;
  assign io_result_ray_direction_x_mant = ray_delayed_direction_x_mant;
  assign io_result_ray_direction_y_sign = ray_delayed_direction_y_sign;
  assign io_result_ray_direction_y_exp = ray_delayed_direction_y_exp;
  assign io_result_ray_direction_y_mant = ray_delayed_direction_y_mant;
  assign io_result_ray_direction_z_sign = ray_delayed_direction_z_sign;
  assign io_result_ray_direction_z_exp = ray_delayed_direction_z_exp;
  assign io_result_ray_direction_z_mant = ray_delayed_direction_z_mant;
  always @ (posedge clk) begin
    io_ray_direction_delay_1_x_sign <= io_ray_direction_x_sign;
    io_ray_direction_delay_1_x_exp <= io_ray_direction_x_exp;
    io_ray_direction_delay_1_x_mant <= io_ray_direction_x_mant;
    io_ray_direction_delay_1_y_sign <= io_ray_direction_y_sign;
    io_ray_direction_delay_1_y_exp <= io_ray_direction_y_exp;
    io_ray_direction_delay_1_y_mant <= io_ray_direction_y_mant;
    io_ray_direction_delay_1_z_sign <= io_ray_direction_z_sign;
    io_ray_direction_delay_1_z_exp <= io_ray_direction_z_exp;
    io_ray_direction_delay_1_z_mant <= io_ray_direction_z_mant;
    dir_delayed_c0r0_x_sign <= io_ray_direction_delay_1_x_sign;
    dir_delayed_c0r0_x_exp <= io_ray_direction_delay_1_x_exp;
    dir_delayed_c0r0_x_mant <= io_ray_direction_delay_1_x_mant;
    dir_delayed_c0r0_y_sign <= io_ray_direction_delay_1_y_sign;
    dir_delayed_c0r0_y_exp <= io_ray_direction_delay_1_y_exp;
    dir_delayed_c0r0_y_mant <= io_ray_direction_delay_1_y_mant;
    dir_delayed_c0r0_z_sign <= io_ray_direction_delay_1_z_sign;
    dir_delayed_c0r0_z_exp <= io_ray_direction_delay_1_z_exp;
    dir_delayed_c0r0_z_mant <= io_ray_direction_delay_1_z_mant;
    c0r0_c0r0_delay_1_sign <= c0r0_c0r0_sign;
    c0r0_c0r0_delay_1_exp <= c0r0_c0r0_exp;
    c0r0_c0r0_delay_1_mant <= c0r0_c0r0_mant;
    c0r0_c0r0_delayed_sign <= c0r0_c0r0_delay_1_sign;
    c0r0_c0r0_delayed_exp <= c0r0_c0r0_delay_1_exp;
    c0r0_c0r0_delayed_mant <= c0r0_c0r0_delay_1_mant;
    intersects_tca_delay_1 <= intersects_tca;
    intersects_tca_delay_2 <= intersects_tca_delay_1;
    intersects_tca_delay_3 <= intersects_tca_delay_2;
    intersects_tca_delayed_early <= intersects_tca_delay_3;
    d2_vld_regNext <= d2_vld;
    _zz_1_ <= (radius2_ge_d2 && intersects_tca_delayed_early);
    tca_delay_1_sign <= tca_sign;
    tca_delay_1_exp <= tca_exp;
    tca_delay_1_mant <= tca_mant;
    tca_delay_2_sign <= tca_delay_1_sign;
    tca_delay_2_exp <= tca_delay_1_exp;
    tca_delay_2_mant <= tca_delay_1_mant;
    tca_delay_3_sign <= tca_delay_2_sign;
    tca_delay_3_exp <= tca_delay_2_exp;
    tca_delay_3_mant <= tca_delay_2_mant;
    tca_delay_4_sign <= tca_delay_3_sign;
    tca_delay_4_exp <= tca_delay_3_exp;
    tca_delay_4_mant <= tca_delay_3_mant;
    tca_delay_5_sign <= tca_delay_4_sign;
    tca_delay_5_exp <= tca_delay_4_exp;
    tca_delay_5_mant <= tca_delay_4_mant;
    tca_delay_6_sign <= tca_delay_5_sign;
    tca_delay_6_exp <= tca_delay_5_exp;
    tca_delay_6_mant <= tca_delay_5_mant;
    tca_delayed_sign <= tca_delay_6_sign;
    tca_delayed_exp <= tca_delay_6_exp;
    tca_delayed_mant <= tca_delay_6_mant;
    t0_vld_regNext <= t0_vld;
    _zz_3_ <= (_zz_2_ ? t1_sign : t0_sign);
    _zz_4_ <= (_zz_2_ ? t1_exp : t0_exp);
    _zz_5_ <= (_zz_2_ ? t1_mant : t0_mant);
    dir_delayed_c0r0_delay_1_x_sign <= dir_delayed_c0r0_x_sign;
    dir_delayed_c0r0_delay_1_x_exp <= dir_delayed_c0r0_x_exp;
    dir_delayed_c0r0_delay_1_x_mant <= dir_delayed_c0r0_x_mant;
    dir_delayed_c0r0_delay_1_y_sign <= dir_delayed_c0r0_y_sign;
    dir_delayed_c0r0_delay_1_y_exp <= dir_delayed_c0r0_y_exp;
    dir_delayed_c0r0_delay_1_y_mant <= dir_delayed_c0r0_y_mant;
    dir_delayed_c0r0_delay_1_z_sign <= dir_delayed_c0r0_z_sign;
    dir_delayed_c0r0_delay_1_z_exp <= dir_delayed_c0r0_z_exp;
    dir_delayed_c0r0_delay_1_z_mant <= dir_delayed_c0r0_z_mant;
    dir_delayed_c0r0_delay_2_x_sign <= dir_delayed_c0r0_delay_1_x_sign;
    dir_delayed_c0r0_delay_2_x_exp <= dir_delayed_c0r0_delay_1_x_exp;
    dir_delayed_c0r0_delay_2_x_mant <= dir_delayed_c0r0_delay_1_x_mant;
    dir_delayed_c0r0_delay_2_y_sign <= dir_delayed_c0r0_delay_1_y_sign;
    dir_delayed_c0r0_delay_2_y_exp <= dir_delayed_c0r0_delay_1_y_exp;
    dir_delayed_c0r0_delay_2_y_mant <= dir_delayed_c0r0_delay_1_y_mant;
    dir_delayed_c0r0_delay_2_z_sign <= dir_delayed_c0r0_delay_1_z_sign;
    dir_delayed_c0r0_delay_2_z_exp <= dir_delayed_c0r0_delay_1_z_exp;
    dir_delayed_c0r0_delay_2_z_mant <= dir_delayed_c0r0_delay_1_z_mant;
    dir_delayed_c0r0_delay_3_x_sign <= dir_delayed_c0r0_delay_2_x_sign;
    dir_delayed_c0r0_delay_3_x_exp <= dir_delayed_c0r0_delay_2_x_exp;
    dir_delayed_c0r0_delay_3_x_mant <= dir_delayed_c0r0_delay_2_x_mant;
    dir_delayed_c0r0_delay_3_y_sign <= dir_delayed_c0r0_delay_2_y_sign;
    dir_delayed_c0r0_delay_3_y_exp <= dir_delayed_c0r0_delay_2_y_exp;
    dir_delayed_c0r0_delay_3_y_mant <= dir_delayed_c0r0_delay_2_y_mant;
    dir_delayed_c0r0_delay_3_z_sign <= dir_delayed_c0r0_delay_2_z_sign;
    dir_delayed_c0r0_delay_3_z_exp <= dir_delayed_c0r0_delay_2_z_exp;
    dir_delayed_c0r0_delay_3_z_mant <= dir_delayed_c0r0_delay_2_z_mant;
    dir_delayed_c0r0_delay_4_x_sign <= dir_delayed_c0r0_delay_3_x_sign;
    dir_delayed_c0r0_delay_4_x_exp <= dir_delayed_c0r0_delay_3_x_exp;
    dir_delayed_c0r0_delay_4_x_mant <= dir_delayed_c0r0_delay_3_x_mant;
    dir_delayed_c0r0_delay_4_y_sign <= dir_delayed_c0r0_delay_3_y_sign;
    dir_delayed_c0r0_delay_4_y_exp <= dir_delayed_c0r0_delay_3_y_exp;
    dir_delayed_c0r0_delay_4_y_mant <= dir_delayed_c0r0_delay_3_y_mant;
    dir_delayed_c0r0_delay_4_z_sign <= dir_delayed_c0r0_delay_3_z_sign;
    dir_delayed_c0r0_delay_4_z_exp <= dir_delayed_c0r0_delay_3_z_exp;
    dir_delayed_c0r0_delay_4_z_mant <= dir_delayed_c0r0_delay_3_z_mant;
    dir_delayed_c0r0_delay_5_x_sign <= dir_delayed_c0r0_delay_4_x_sign;
    dir_delayed_c0r0_delay_5_x_exp <= dir_delayed_c0r0_delay_4_x_exp;
    dir_delayed_c0r0_delay_5_x_mant <= dir_delayed_c0r0_delay_4_x_mant;
    dir_delayed_c0r0_delay_5_y_sign <= dir_delayed_c0r0_delay_4_y_sign;
    dir_delayed_c0r0_delay_5_y_exp <= dir_delayed_c0r0_delay_4_y_exp;
    dir_delayed_c0r0_delay_5_y_mant <= dir_delayed_c0r0_delay_4_y_mant;
    dir_delayed_c0r0_delay_5_z_sign <= dir_delayed_c0r0_delay_4_z_sign;
    dir_delayed_c0r0_delay_5_z_exp <= dir_delayed_c0r0_delay_4_z_exp;
    dir_delayed_c0r0_delay_5_z_mant <= dir_delayed_c0r0_delay_4_z_mant;
    dir_delayed_c0r0_delay_6_x_sign <= dir_delayed_c0r0_delay_5_x_sign;
    dir_delayed_c0r0_delay_6_x_exp <= dir_delayed_c0r0_delay_5_x_exp;
    dir_delayed_c0r0_delay_6_x_mant <= dir_delayed_c0r0_delay_5_x_mant;
    dir_delayed_c0r0_delay_6_y_sign <= dir_delayed_c0r0_delay_5_y_sign;
    dir_delayed_c0r0_delay_6_y_exp <= dir_delayed_c0r0_delay_5_y_exp;
    dir_delayed_c0r0_delay_6_y_mant <= dir_delayed_c0r0_delay_5_y_mant;
    dir_delayed_c0r0_delay_6_z_sign <= dir_delayed_c0r0_delay_5_z_sign;
    dir_delayed_c0r0_delay_6_z_exp <= dir_delayed_c0r0_delay_5_z_exp;
    dir_delayed_c0r0_delay_6_z_mant <= dir_delayed_c0r0_delay_5_z_mant;
    dir_delayed_c0r0_delay_7_x_sign <= dir_delayed_c0r0_delay_6_x_sign;
    dir_delayed_c0r0_delay_7_x_exp <= dir_delayed_c0r0_delay_6_x_exp;
    dir_delayed_c0r0_delay_7_x_mant <= dir_delayed_c0r0_delay_6_x_mant;
    dir_delayed_c0r0_delay_7_y_sign <= dir_delayed_c0r0_delay_6_y_sign;
    dir_delayed_c0r0_delay_7_y_exp <= dir_delayed_c0r0_delay_6_y_exp;
    dir_delayed_c0r0_delay_7_y_mant <= dir_delayed_c0r0_delay_6_y_mant;
    dir_delayed_c0r0_delay_7_z_sign <= dir_delayed_c0r0_delay_6_z_sign;
    dir_delayed_c0r0_delay_7_z_exp <= dir_delayed_c0r0_delay_6_z_exp;
    dir_delayed_c0r0_delay_7_z_mant <= dir_delayed_c0r0_delay_6_z_mant;
    dir_delayed_c0r0_delay_8_x_sign <= dir_delayed_c0r0_delay_7_x_sign;
    dir_delayed_c0r0_delay_8_x_exp <= dir_delayed_c0r0_delay_7_x_exp;
    dir_delayed_c0r0_delay_8_x_mant <= dir_delayed_c0r0_delay_7_x_mant;
    dir_delayed_c0r0_delay_8_y_sign <= dir_delayed_c0r0_delay_7_y_sign;
    dir_delayed_c0r0_delay_8_y_exp <= dir_delayed_c0r0_delay_7_y_exp;
    dir_delayed_c0r0_delay_8_y_mant <= dir_delayed_c0r0_delay_7_y_mant;
    dir_delayed_c0r0_delay_8_z_sign <= dir_delayed_c0r0_delay_7_z_sign;
    dir_delayed_c0r0_delay_8_z_exp <= dir_delayed_c0r0_delay_7_z_exp;
    dir_delayed_c0r0_delay_8_z_mant <= dir_delayed_c0r0_delay_7_z_mant;
    dir_delayed_c0r0_delay_9_x_sign <= dir_delayed_c0r0_delay_8_x_sign;
    dir_delayed_c0r0_delay_9_x_exp <= dir_delayed_c0r0_delay_8_x_exp;
    dir_delayed_c0r0_delay_9_x_mant <= dir_delayed_c0r0_delay_8_x_mant;
    dir_delayed_c0r0_delay_9_y_sign <= dir_delayed_c0r0_delay_8_y_sign;
    dir_delayed_c0r0_delay_9_y_exp <= dir_delayed_c0r0_delay_8_y_exp;
    dir_delayed_c0r0_delay_9_y_mant <= dir_delayed_c0r0_delay_8_y_mant;
    dir_delayed_c0r0_delay_9_z_sign <= dir_delayed_c0r0_delay_8_z_sign;
    dir_delayed_c0r0_delay_9_z_exp <= dir_delayed_c0r0_delay_8_z_exp;
    dir_delayed_c0r0_delay_9_z_mant <= dir_delayed_c0r0_delay_8_z_mant;
    dir_delayed_c0r0_delay_10_x_sign <= dir_delayed_c0r0_delay_9_x_sign;
    dir_delayed_c0r0_delay_10_x_exp <= dir_delayed_c0r0_delay_9_x_exp;
    dir_delayed_c0r0_delay_10_x_mant <= dir_delayed_c0r0_delay_9_x_mant;
    dir_delayed_c0r0_delay_10_y_sign <= dir_delayed_c0r0_delay_9_y_sign;
    dir_delayed_c0r0_delay_10_y_exp <= dir_delayed_c0r0_delay_9_y_exp;
    dir_delayed_c0r0_delay_10_y_mant <= dir_delayed_c0r0_delay_9_y_mant;
    dir_delayed_c0r0_delay_10_z_sign <= dir_delayed_c0r0_delay_9_z_sign;
    dir_delayed_c0r0_delay_10_z_exp <= dir_delayed_c0r0_delay_9_z_exp;
    dir_delayed_c0r0_delay_10_z_mant <= dir_delayed_c0r0_delay_9_z_mant;
    dir_delayed_c0r0_delay_11_x_sign <= dir_delayed_c0r0_delay_10_x_sign;
    dir_delayed_c0r0_delay_11_x_exp <= dir_delayed_c0r0_delay_10_x_exp;
    dir_delayed_c0r0_delay_11_x_mant <= dir_delayed_c0r0_delay_10_x_mant;
    dir_delayed_c0r0_delay_11_y_sign <= dir_delayed_c0r0_delay_10_y_sign;
    dir_delayed_c0r0_delay_11_y_exp <= dir_delayed_c0r0_delay_10_y_exp;
    dir_delayed_c0r0_delay_11_y_mant <= dir_delayed_c0r0_delay_10_y_mant;
    dir_delayed_c0r0_delay_11_z_sign <= dir_delayed_c0r0_delay_10_z_sign;
    dir_delayed_c0r0_delay_11_z_exp <= dir_delayed_c0r0_delay_10_z_exp;
    dir_delayed_c0r0_delay_11_z_mant <= dir_delayed_c0r0_delay_10_z_mant;
    dir_delayed_c0r0_delay_12_x_sign <= dir_delayed_c0r0_delay_11_x_sign;
    dir_delayed_c0r0_delay_12_x_exp <= dir_delayed_c0r0_delay_11_x_exp;
    dir_delayed_c0r0_delay_12_x_mant <= dir_delayed_c0r0_delay_11_x_mant;
    dir_delayed_c0r0_delay_12_y_sign <= dir_delayed_c0r0_delay_11_y_sign;
    dir_delayed_c0r0_delay_12_y_exp <= dir_delayed_c0r0_delay_11_y_exp;
    dir_delayed_c0r0_delay_12_y_mant <= dir_delayed_c0r0_delay_11_y_mant;
    dir_delayed_c0r0_delay_12_z_sign <= dir_delayed_c0r0_delay_11_z_sign;
    dir_delayed_c0r0_delay_12_z_exp <= dir_delayed_c0r0_delay_11_z_exp;
    dir_delayed_c0r0_delay_12_z_mant <= dir_delayed_c0r0_delay_11_z_mant;
    dir_delayed_c0r0_delay_13_x_sign <= dir_delayed_c0r0_delay_12_x_sign;
    dir_delayed_c0r0_delay_13_x_exp <= dir_delayed_c0r0_delay_12_x_exp;
    dir_delayed_c0r0_delay_13_x_mant <= dir_delayed_c0r0_delay_12_x_mant;
    dir_delayed_c0r0_delay_13_y_sign <= dir_delayed_c0r0_delay_12_y_sign;
    dir_delayed_c0r0_delay_13_y_exp <= dir_delayed_c0r0_delay_12_y_exp;
    dir_delayed_c0r0_delay_13_y_mant <= dir_delayed_c0r0_delay_12_y_mant;
    dir_delayed_c0r0_delay_13_z_sign <= dir_delayed_c0r0_delay_12_z_sign;
    dir_delayed_c0r0_delay_13_z_exp <= dir_delayed_c0r0_delay_12_z_exp;
    dir_delayed_c0r0_delay_13_z_mant <= dir_delayed_c0r0_delay_12_z_mant;
    dir_delayed_c0r0_delay_14_x_sign <= dir_delayed_c0r0_delay_13_x_sign;
    dir_delayed_c0r0_delay_14_x_exp <= dir_delayed_c0r0_delay_13_x_exp;
    dir_delayed_c0r0_delay_14_x_mant <= dir_delayed_c0r0_delay_13_x_mant;
    dir_delayed_c0r0_delay_14_y_sign <= dir_delayed_c0r0_delay_13_y_sign;
    dir_delayed_c0r0_delay_14_y_exp <= dir_delayed_c0r0_delay_13_y_exp;
    dir_delayed_c0r0_delay_14_y_mant <= dir_delayed_c0r0_delay_13_y_mant;
    dir_delayed_c0r0_delay_14_z_sign <= dir_delayed_c0r0_delay_13_z_sign;
    dir_delayed_c0r0_delay_14_z_exp <= dir_delayed_c0r0_delay_13_z_exp;
    dir_delayed_c0r0_delay_14_z_mant <= dir_delayed_c0r0_delay_13_z_mant;
    dir_delayed_c0r0_delay_15_x_sign <= dir_delayed_c0r0_delay_14_x_sign;
    dir_delayed_c0r0_delay_15_x_exp <= dir_delayed_c0r0_delay_14_x_exp;
    dir_delayed_c0r0_delay_15_x_mant <= dir_delayed_c0r0_delay_14_x_mant;
    dir_delayed_c0r0_delay_15_y_sign <= dir_delayed_c0r0_delay_14_y_sign;
    dir_delayed_c0r0_delay_15_y_exp <= dir_delayed_c0r0_delay_14_y_exp;
    dir_delayed_c0r0_delay_15_y_mant <= dir_delayed_c0r0_delay_14_y_mant;
    dir_delayed_c0r0_delay_15_z_sign <= dir_delayed_c0r0_delay_14_z_sign;
    dir_delayed_c0r0_delay_15_z_exp <= dir_delayed_c0r0_delay_14_z_exp;
    dir_delayed_c0r0_delay_15_z_mant <= dir_delayed_c0r0_delay_14_z_mant;
    dir_delayed_intersect_x_sign <= dir_delayed_c0r0_delay_15_x_sign;
    dir_delayed_intersect_x_exp <= dir_delayed_c0r0_delay_15_x_exp;
    dir_delayed_intersect_x_mant <= dir_delayed_c0r0_delay_15_x_mant;
    dir_delayed_intersect_y_sign <= dir_delayed_c0r0_delay_15_y_sign;
    dir_delayed_intersect_y_exp <= dir_delayed_c0r0_delay_15_y_exp;
    dir_delayed_intersect_y_mant <= dir_delayed_c0r0_delay_15_y_mant;
    dir_delayed_intersect_z_sign <= dir_delayed_c0r0_delay_15_z_sign;
    dir_delayed_intersect_z_exp <= dir_delayed_c0r0_delay_15_z_exp;
    dir_delayed_intersect_z_mant <= dir_delayed_c0r0_delay_15_z_mant;
    io_ray_origin_delay_1_x_sign <= io_ray_origin_x_sign;
    io_ray_origin_delay_1_x_exp <= io_ray_origin_x_exp;
    io_ray_origin_delay_1_x_mant <= io_ray_origin_x_mant;
    io_ray_origin_delay_1_y_sign <= io_ray_origin_y_sign;
    io_ray_origin_delay_1_y_exp <= io_ray_origin_y_exp;
    io_ray_origin_delay_1_y_mant <= io_ray_origin_y_mant;
    io_ray_origin_delay_1_z_sign <= io_ray_origin_z_sign;
    io_ray_origin_delay_1_z_exp <= io_ray_origin_z_exp;
    io_ray_origin_delay_1_z_mant <= io_ray_origin_z_mant;
    io_ray_origin_delay_2_x_sign <= io_ray_origin_delay_1_x_sign;
    io_ray_origin_delay_2_x_exp <= io_ray_origin_delay_1_x_exp;
    io_ray_origin_delay_2_x_mant <= io_ray_origin_delay_1_x_mant;
    io_ray_origin_delay_2_y_sign <= io_ray_origin_delay_1_y_sign;
    io_ray_origin_delay_2_y_exp <= io_ray_origin_delay_1_y_exp;
    io_ray_origin_delay_2_y_mant <= io_ray_origin_delay_1_y_mant;
    io_ray_origin_delay_2_z_sign <= io_ray_origin_delay_1_z_sign;
    io_ray_origin_delay_2_z_exp <= io_ray_origin_delay_1_z_exp;
    io_ray_origin_delay_2_z_mant <= io_ray_origin_delay_1_z_mant;
    io_ray_origin_delay_3_x_sign <= io_ray_origin_delay_2_x_sign;
    io_ray_origin_delay_3_x_exp <= io_ray_origin_delay_2_x_exp;
    io_ray_origin_delay_3_x_mant <= io_ray_origin_delay_2_x_mant;
    io_ray_origin_delay_3_y_sign <= io_ray_origin_delay_2_y_sign;
    io_ray_origin_delay_3_y_exp <= io_ray_origin_delay_2_y_exp;
    io_ray_origin_delay_3_y_mant <= io_ray_origin_delay_2_y_mant;
    io_ray_origin_delay_3_z_sign <= io_ray_origin_delay_2_z_sign;
    io_ray_origin_delay_3_z_exp <= io_ray_origin_delay_2_z_exp;
    io_ray_origin_delay_3_z_mant <= io_ray_origin_delay_2_z_mant;
    io_ray_origin_delay_4_x_sign <= io_ray_origin_delay_3_x_sign;
    io_ray_origin_delay_4_x_exp <= io_ray_origin_delay_3_x_exp;
    io_ray_origin_delay_4_x_mant <= io_ray_origin_delay_3_x_mant;
    io_ray_origin_delay_4_y_sign <= io_ray_origin_delay_3_y_sign;
    io_ray_origin_delay_4_y_exp <= io_ray_origin_delay_3_y_exp;
    io_ray_origin_delay_4_y_mant <= io_ray_origin_delay_3_y_mant;
    io_ray_origin_delay_4_z_sign <= io_ray_origin_delay_3_z_sign;
    io_ray_origin_delay_4_z_exp <= io_ray_origin_delay_3_z_exp;
    io_ray_origin_delay_4_z_mant <= io_ray_origin_delay_3_z_mant;
    io_ray_origin_delay_5_x_sign <= io_ray_origin_delay_4_x_sign;
    io_ray_origin_delay_5_x_exp <= io_ray_origin_delay_4_x_exp;
    io_ray_origin_delay_5_x_mant <= io_ray_origin_delay_4_x_mant;
    io_ray_origin_delay_5_y_sign <= io_ray_origin_delay_4_y_sign;
    io_ray_origin_delay_5_y_exp <= io_ray_origin_delay_4_y_exp;
    io_ray_origin_delay_5_y_mant <= io_ray_origin_delay_4_y_mant;
    io_ray_origin_delay_5_z_sign <= io_ray_origin_delay_4_z_sign;
    io_ray_origin_delay_5_z_exp <= io_ray_origin_delay_4_z_exp;
    io_ray_origin_delay_5_z_mant <= io_ray_origin_delay_4_z_mant;
    io_ray_origin_delay_6_x_sign <= io_ray_origin_delay_5_x_sign;
    io_ray_origin_delay_6_x_exp <= io_ray_origin_delay_5_x_exp;
    io_ray_origin_delay_6_x_mant <= io_ray_origin_delay_5_x_mant;
    io_ray_origin_delay_6_y_sign <= io_ray_origin_delay_5_y_sign;
    io_ray_origin_delay_6_y_exp <= io_ray_origin_delay_5_y_exp;
    io_ray_origin_delay_6_y_mant <= io_ray_origin_delay_5_y_mant;
    io_ray_origin_delay_6_z_sign <= io_ray_origin_delay_5_z_sign;
    io_ray_origin_delay_6_z_exp <= io_ray_origin_delay_5_z_exp;
    io_ray_origin_delay_6_z_mant <= io_ray_origin_delay_5_z_mant;
    io_ray_origin_delay_7_x_sign <= io_ray_origin_delay_6_x_sign;
    io_ray_origin_delay_7_x_exp <= io_ray_origin_delay_6_x_exp;
    io_ray_origin_delay_7_x_mant <= io_ray_origin_delay_6_x_mant;
    io_ray_origin_delay_7_y_sign <= io_ray_origin_delay_6_y_sign;
    io_ray_origin_delay_7_y_exp <= io_ray_origin_delay_6_y_exp;
    io_ray_origin_delay_7_y_mant <= io_ray_origin_delay_6_y_mant;
    io_ray_origin_delay_7_z_sign <= io_ray_origin_delay_6_z_sign;
    io_ray_origin_delay_7_z_exp <= io_ray_origin_delay_6_z_exp;
    io_ray_origin_delay_7_z_mant <= io_ray_origin_delay_6_z_mant;
    io_ray_origin_delay_8_x_sign <= io_ray_origin_delay_7_x_sign;
    io_ray_origin_delay_8_x_exp <= io_ray_origin_delay_7_x_exp;
    io_ray_origin_delay_8_x_mant <= io_ray_origin_delay_7_x_mant;
    io_ray_origin_delay_8_y_sign <= io_ray_origin_delay_7_y_sign;
    io_ray_origin_delay_8_y_exp <= io_ray_origin_delay_7_y_exp;
    io_ray_origin_delay_8_y_mant <= io_ray_origin_delay_7_y_mant;
    io_ray_origin_delay_8_z_sign <= io_ray_origin_delay_7_z_sign;
    io_ray_origin_delay_8_z_exp <= io_ray_origin_delay_7_z_exp;
    io_ray_origin_delay_8_z_mant <= io_ray_origin_delay_7_z_mant;
    io_ray_origin_delay_9_x_sign <= io_ray_origin_delay_8_x_sign;
    io_ray_origin_delay_9_x_exp <= io_ray_origin_delay_8_x_exp;
    io_ray_origin_delay_9_x_mant <= io_ray_origin_delay_8_x_mant;
    io_ray_origin_delay_9_y_sign <= io_ray_origin_delay_8_y_sign;
    io_ray_origin_delay_9_y_exp <= io_ray_origin_delay_8_y_exp;
    io_ray_origin_delay_9_y_mant <= io_ray_origin_delay_8_y_mant;
    io_ray_origin_delay_9_z_sign <= io_ray_origin_delay_8_z_sign;
    io_ray_origin_delay_9_z_exp <= io_ray_origin_delay_8_z_exp;
    io_ray_origin_delay_9_z_mant <= io_ray_origin_delay_8_z_mant;
    io_ray_origin_delay_10_x_sign <= io_ray_origin_delay_9_x_sign;
    io_ray_origin_delay_10_x_exp <= io_ray_origin_delay_9_x_exp;
    io_ray_origin_delay_10_x_mant <= io_ray_origin_delay_9_x_mant;
    io_ray_origin_delay_10_y_sign <= io_ray_origin_delay_9_y_sign;
    io_ray_origin_delay_10_y_exp <= io_ray_origin_delay_9_y_exp;
    io_ray_origin_delay_10_y_mant <= io_ray_origin_delay_9_y_mant;
    io_ray_origin_delay_10_z_sign <= io_ray_origin_delay_9_z_sign;
    io_ray_origin_delay_10_z_exp <= io_ray_origin_delay_9_z_exp;
    io_ray_origin_delay_10_z_mant <= io_ray_origin_delay_9_z_mant;
    io_ray_origin_delay_11_x_sign <= io_ray_origin_delay_10_x_sign;
    io_ray_origin_delay_11_x_exp <= io_ray_origin_delay_10_x_exp;
    io_ray_origin_delay_11_x_mant <= io_ray_origin_delay_10_x_mant;
    io_ray_origin_delay_11_y_sign <= io_ray_origin_delay_10_y_sign;
    io_ray_origin_delay_11_y_exp <= io_ray_origin_delay_10_y_exp;
    io_ray_origin_delay_11_y_mant <= io_ray_origin_delay_10_y_mant;
    io_ray_origin_delay_11_z_sign <= io_ray_origin_delay_10_z_sign;
    io_ray_origin_delay_11_z_exp <= io_ray_origin_delay_10_z_exp;
    io_ray_origin_delay_11_z_mant <= io_ray_origin_delay_10_z_mant;
    io_ray_origin_delay_12_x_sign <= io_ray_origin_delay_11_x_sign;
    io_ray_origin_delay_12_x_exp <= io_ray_origin_delay_11_x_exp;
    io_ray_origin_delay_12_x_mant <= io_ray_origin_delay_11_x_mant;
    io_ray_origin_delay_12_y_sign <= io_ray_origin_delay_11_y_sign;
    io_ray_origin_delay_12_y_exp <= io_ray_origin_delay_11_y_exp;
    io_ray_origin_delay_12_y_mant <= io_ray_origin_delay_11_y_mant;
    io_ray_origin_delay_12_z_sign <= io_ray_origin_delay_11_z_sign;
    io_ray_origin_delay_12_z_exp <= io_ray_origin_delay_11_z_exp;
    io_ray_origin_delay_12_z_mant <= io_ray_origin_delay_11_z_mant;
    io_ray_origin_delay_13_x_sign <= io_ray_origin_delay_12_x_sign;
    io_ray_origin_delay_13_x_exp <= io_ray_origin_delay_12_x_exp;
    io_ray_origin_delay_13_x_mant <= io_ray_origin_delay_12_x_mant;
    io_ray_origin_delay_13_y_sign <= io_ray_origin_delay_12_y_sign;
    io_ray_origin_delay_13_y_exp <= io_ray_origin_delay_12_y_exp;
    io_ray_origin_delay_13_y_mant <= io_ray_origin_delay_12_y_mant;
    io_ray_origin_delay_13_z_sign <= io_ray_origin_delay_12_z_sign;
    io_ray_origin_delay_13_z_exp <= io_ray_origin_delay_12_z_exp;
    io_ray_origin_delay_13_z_mant <= io_ray_origin_delay_12_z_mant;
    io_ray_origin_delay_14_x_sign <= io_ray_origin_delay_13_x_sign;
    io_ray_origin_delay_14_x_exp <= io_ray_origin_delay_13_x_exp;
    io_ray_origin_delay_14_x_mant <= io_ray_origin_delay_13_x_mant;
    io_ray_origin_delay_14_y_sign <= io_ray_origin_delay_13_y_sign;
    io_ray_origin_delay_14_y_exp <= io_ray_origin_delay_13_y_exp;
    io_ray_origin_delay_14_y_mant <= io_ray_origin_delay_13_y_mant;
    io_ray_origin_delay_14_z_sign <= io_ray_origin_delay_13_z_sign;
    io_ray_origin_delay_14_z_exp <= io_ray_origin_delay_13_z_exp;
    io_ray_origin_delay_14_z_mant <= io_ray_origin_delay_13_z_mant;
    io_ray_origin_delay_15_x_sign <= io_ray_origin_delay_14_x_sign;
    io_ray_origin_delay_15_x_exp <= io_ray_origin_delay_14_x_exp;
    io_ray_origin_delay_15_x_mant <= io_ray_origin_delay_14_x_mant;
    io_ray_origin_delay_15_y_sign <= io_ray_origin_delay_14_y_sign;
    io_ray_origin_delay_15_y_exp <= io_ray_origin_delay_14_y_exp;
    io_ray_origin_delay_15_y_mant <= io_ray_origin_delay_14_y_mant;
    io_ray_origin_delay_15_z_sign <= io_ray_origin_delay_14_z_sign;
    io_ray_origin_delay_15_z_exp <= io_ray_origin_delay_14_z_exp;
    io_ray_origin_delay_15_z_mant <= io_ray_origin_delay_14_z_mant;
    io_ray_origin_delay_16_x_sign <= io_ray_origin_delay_15_x_sign;
    io_ray_origin_delay_16_x_exp <= io_ray_origin_delay_15_x_exp;
    io_ray_origin_delay_16_x_mant <= io_ray_origin_delay_15_x_mant;
    io_ray_origin_delay_16_y_sign <= io_ray_origin_delay_15_y_sign;
    io_ray_origin_delay_16_y_exp <= io_ray_origin_delay_15_y_exp;
    io_ray_origin_delay_16_y_mant <= io_ray_origin_delay_15_y_mant;
    io_ray_origin_delay_16_z_sign <= io_ray_origin_delay_15_z_sign;
    io_ray_origin_delay_16_z_exp <= io_ray_origin_delay_15_z_exp;
    io_ray_origin_delay_16_z_mant <= io_ray_origin_delay_15_z_mant;
    io_ray_origin_delay_17_x_sign <= io_ray_origin_delay_16_x_sign;
    io_ray_origin_delay_17_x_exp <= io_ray_origin_delay_16_x_exp;
    io_ray_origin_delay_17_x_mant <= io_ray_origin_delay_16_x_mant;
    io_ray_origin_delay_17_y_sign <= io_ray_origin_delay_16_y_sign;
    io_ray_origin_delay_17_y_exp <= io_ray_origin_delay_16_y_exp;
    io_ray_origin_delay_17_y_mant <= io_ray_origin_delay_16_y_mant;
    io_ray_origin_delay_17_z_sign <= io_ray_origin_delay_16_z_sign;
    io_ray_origin_delay_17_z_exp <= io_ray_origin_delay_16_z_exp;
    io_ray_origin_delay_17_z_mant <= io_ray_origin_delay_16_z_mant;
    origin_delayed_intersect_x_sign <= io_ray_origin_delay_17_x_sign;
    origin_delayed_intersect_x_exp <= io_ray_origin_delay_17_x_exp;
    origin_delayed_intersect_x_mant <= io_ray_origin_delay_17_x_mant;
    origin_delayed_intersect_y_sign <= io_ray_origin_delay_17_y_sign;
    origin_delayed_intersect_y_exp <= io_ray_origin_delay_17_y_exp;
    origin_delayed_intersect_y_mant <= io_ray_origin_delay_17_y_mant;
    origin_delayed_intersect_z_sign <= io_ray_origin_delay_17_z_sign;
    origin_delayed_intersect_z_exp <= io_ray_origin_delay_17_z_exp;
    origin_delayed_intersect_z_mant <= io_ray_origin_delay_17_z_mant;
    io_sphere_center_delay_1_x_sign <= io_sphere_center_x_sign;
    io_sphere_center_delay_1_x_exp <= io_sphere_center_x_exp;
    io_sphere_center_delay_1_x_mant <= io_sphere_center_x_mant;
    io_sphere_center_delay_1_y_sign <= io_sphere_center_y_sign;
    io_sphere_center_delay_1_y_exp <= io_sphere_center_y_exp;
    io_sphere_center_delay_1_y_mant <= io_sphere_center_y_mant;
    io_sphere_center_delay_1_z_sign <= io_sphere_center_z_sign;
    io_sphere_center_delay_1_z_exp <= io_sphere_center_z_exp;
    io_sphere_center_delay_1_z_mant <= io_sphere_center_z_mant;
    io_sphere_center_delay_2_x_sign <= io_sphere_center_delay_1_x_sign;
    io_sphere_center_delay_2_x_exp <= io_sphere_center_delay_1_x_exp;
    io_sphere_center_delay_2_x_mant <= io_sphere_center_delay_1_x_mant;
    io_sphere_center_delay_2_y_sign <= io_sphere_center_delay_1_y_sign;
    io_sphere_center_delay_2_y_exp <= io_sphere_center_delay_1_y_exp;
    io_sphere_center_delay_2_y_mant <= io_sphere_center_delay_1_y_mant;
    io_sphere_center_delay_2_z_sign <= io_sphere_center_delay_1_z_sign;
    io_sphere_center_delay_2_z_exp <= io_sphere_center_delay_1_z_exp;
    io_sphere_center_delay_2_z_mant <= io_sphere_center_delay_1_z_mant;
    io_sphere_center_delay_3_x_sign <= io_sphere_center_delay_2_x_sign;
    io_sphere_center_delay_3_x_exp <= io_sphere_center_delay_2_x_exp;
    io_sphere_center_delay_3_x_mant <= io_sphere_center_delay_2_x_mant;
    io_sphere_center_delay_3_y_sign <= io_sphere_center_delay_2_y_sign;
    io_sphere_center_delay_3_y_exp <= io_sphere_center_delay_2_y_exp;
    io_sphere_center_delay_3_y_mant <= io_sphere_center_delay_2_y_mant;
    io_sphere_center_delay_3_z_sign <= io_sphere_center_delay_2_z_sign;
    io_sphere_center_delay_3_z_exp <= io_sphere_center_delay_2_z_exp;
    io_sphere_center_delay_3_z_mant <= io_sphere_center_delay_2_z_mant;
    io_sphere_center_delay_4_x_sign <= io_sphere_center_delay_3_x_sign;
    io_sphere_center_delay_4_x_exp <= io_sphere_center_delay_3_x_exp;
    io_sphere_center_delay_4_x_mant <= io_sphere_center_delay_3_x_mant;
    io_sphere_center_delay_4_y_sign <= io_sphere_center_delay_3_y_sign;
    io_sphere_center_delay_4_y_exp <= io_sphere_center_delay_3_y_exp;
    io_sphere_center_delay_4_y_mant <= io_sphere_center_delay_3_y_mant;
    io_sphere_center_delay_4_z_sign <= io_sphere_center_delay_3_z_sign;
    io_sphere_center_delay_4_z_exp <= io_sphere_center_delay_3_z_exp;
    io_sphere_center_delay_4_z_mant <= io_sphere_center_delay_3_z_mant;
    io_sphere_center_delay_5_x_sign <= io_sphere_center_delay_4_x_sign;
    io_sphere_center_delay_5_x_exp <= io_sphere_center_delay_4_x_exp;
    io_sphere_center_delay_5_x_mant <= io_sphere_center_delay_4_x_mant;
    io_sphere_center_delay_5_y_sign <= io_sphere_center_delay_4_y_sign;
    io_sphere_center_delay_5_y_exp <= io_sphere_center_delay_4_y_exp;
    io_sphere_center_delay_5_y_mant <= io_sphere_center_delay_4_y_mant;
    io_sphere_center_delay_5_z_sign <= io_sphere_center_delay_4_z_sign;
    io_sphere_center_delay_5_z_exp <= io_sphere_center_delay_4_z_exp;
    io_sphere_center_delay_5_z_mant <= io_sphere_center_delay_4_z_mant;
    io_sphere_center_delay_6_x_sign <= io_sphere_center_delay_5_x_sign;
    io_sphere_center_delay_6_x_exp <= io_sphere_center_delay_5_x_exp;
    io_sphere_center_delay_6_x_mant <= io_sphere_center_delay_5_x_mant;
    io_sphere_center_delay_6_y_sign <= io_sphere_center_delay_5_y_sign;
    io_sphere_center_delay_6_y_exp <= io_sphere_center_delay_5_y_exp;
    io_sphere_center_delay_6_y_mant <= io_sphere_center_delay_5_y_mant;
    io_sphere_center_delay_6_z_sign <= io_sphere_center_delay_5_z_sign;
    io_sphere_center_delay_6_z_exp <= io_sphere_center_delay_5_z_exp;
    io_sphere_center_delay_6_z_mant <= io_sphere_center_delay_5_z_mant;
    io_sphere_center_delay_7_x_sign <= io_sphere_center_delay_6_x_sign;
    io_sphere_center_delay_7_x_exp <= io_sphere_center_delay_6_x_exp;
    io_sphere_center_delay_7_x_mant <= io_sphere_center_delay_6_x_mant;
    io_sphere_center_delay_7_y_sign <= io_sphere_center_delay_6_y_sign;
    io_sphere_center_delay_7_y_exp <= io_sphere_center_delay_6_y_exp;
    io_sphere_center_delay_7_y_mant <= io_sphere_center_delay_6_y_mant;
    io_sphere_center_delay_7_z_sign <= io_sphere_center_delay_6_z_sign;
    io_sphere_center_delay_7_z_exp <= io_sphere_center_delay_6_z_exp;
    io_sphere_center_delay_7_z_mant <= io_sphere_center_delay_6_z_mant;
    io_sphere_center_delay_8_x_sign <= io_sphere_center_delay_7_x_sign;
    io_sphere_center_delay_8_x_exp <= io_sphere_center_delay_7_x_exp;
    io_sphere_center_delay_8_x_mant <= io_sphere_center_delay_7_x_mant;
    io_sphere_center_delay_8_y_sign <= io_sphere_center_delay_7_y_sign;
    io_sphere_center_delay_8_y_exp <= io_sphere_center_delay_7_y_exp;
    io_sphere_center_delay_8_y_mant <= io_sphere_center_delay_7_y_mant;
    io_sphere_center_delay_8_z_sign <= io_sphere_center_delay_7_z_sign;
    io_sphere_center_delay_8_z_exp <= io_sphere_center_delay_7_z_exp;
    io_sphere_center_delay_8_z_mant <= io_sphere_center_delay_7_z_mant;
    io_sphere_center_delay_9_x_sign <= io_sphere_center_delay_8_x_sign;
    io_sphere_center_delay_9_x_exp <= io_sphere_center_delay_8_x_exp;
    io_sphere_center_delay_9_x_mant <= io_sphere_center_delay_8_x_mant;
    io_sphere_center_delay_9_y_sign <= io_sphere_center_delay_8_y_sign;
    io_sphere_center_delay_9_y_exp <= io_sphere_center_delay_8_y_exp;
    io_sphere_center_delay_9_y_mant <= io_sphere_center_delay_8_y_mant;
    io_sphere_center_delay_9_z_sign <= io_sphere_center_delay_8_z_sign;
    io_sphere_center_delay_9_z_exp <= io_sphere_center_delay_8_z_exp;
    io_sphere_center_delay_9_z_mant <= io_sphere_center_delay_8_z_mant;
    io_sphere_center_delay_10_x_sign <= io_sphere_center_delay_9_x_sign;
    io_sphere_center_delay_10_x_exp <= io_sphere_center_delay_9_x_exp;
    io_sphere_center_delay_10_x_mant <= io_sphere_center_delay_9_x_mant;
    io_sphere_center_delay_10_y_sign <= io_sphere_center_delay_9_y_sign;
    io_sphere_center_delay_10_y_exp <= io_sphere_center_delay_9_y_exp;
    io_sphere_center_delay_10_y_mant <= io_sphere_center_delay_9_y_mant;
    io_sphere_center_delay_10_z_sign <= io_sphere_center_delay_9_z_sign;
    io_sphere_center_delay_10_z_exp <= io_sphere_center_delay_9_z_exp;
    io_sphere_center_delay_10_z_mant <= io_sphere_center_delay_9_z_mant;
    io_sphere_center_delay_11_x_sign <= io_sphere_center_delay_10_x_sign;
    io_sphere_center_delay_11_x_exp <= io_sphere_center_delay_10_x_exp;
    io_sphere_center_delay_11_x_mant <= io_sphere_center_delay_10_x_mant;
    io_sphere_center_delay_11_y_sign <= io_sphere_center_delay_10_y_sign;
    io_sphere_center_delay_11_y_exp <= io_sphere_center_delay_10_y_exp;
    io_sphere_center_delay_11_y_mant <= io_sphere_center_delay_10_y_mant;
    io_sphere_center_delay_11_z_sign <= io_sphere_center_delay_10_z_sign;
    io_sphere_center_delay_11_z_exp <= io_sphere_center_delay_10_z_exp;
    io_sphere_center_delay_11_z_mant <= io_sphere_center_delay_10_z_mant;
    io_sphere_center_delay_12_x_sign <= io_sphere_center_delay_11_x_sign;
    io_sphere_center_delay_12_x_exp <= io_sphere_center_delay_11_x_exp;
    io_sphere_center_delay_12_x_mant <= io_sphere_center_delay_11_x_mant;
    io_sphere_center_delay_12_y_sign <= io_sphere_center_delay_11_y_sign;
    io_sphere_center_delay_12_y_exp <= io_sphere_center_delay_11_y_exp;
    io_sphere_center_delay_12_y_mant <= io_sphere_center_delay_11_y_mant;
    io_sphere_center_delay_12_z_sign <= io_sphere_center_delay_11_z_sign;
    io_sphere_center_delay_12_z_exp <= io_sphere_center_delay_11_z_exp;
    io_sphere_center_delay_12_z_mant <= io_sphere_center_delay_11_z_mant;
    io_sphere_center_delay_13_x_sign <= io_sphere_center_delay_12_x_sign;
    io_sphere_center_delay_13_x_exp <= io_sphere_center_delay_12_x_exp;
    io_sphere_center_delay_13_x_mant <= io_sphere_center_delay_12_x_mant;
    io_sphere_center_delay_13_y_sign <= io_sphere_center_delay_12_y_sign;
    io_sphere_center_delay_13_y_exp <= io_sphere_center_delay_12_y_exp;
    io_sphere_center_delay_13_y_mant <= io_sphere_center_delay_12_y_mant;
    io_sphere_center_delay_13_z_sign <= io_sphere_center_delay_12_z_sign;
    io_sphere_center_delay_13_z_exp <= io_sphere_center_delay_12_z_exp;
    io_sphere_center_delay_13_z_mant <= io_sphere_center_delay_12_z_mant;
    io_sphere_center_delay_14_x_sign <= io_sphere_center_delay_13_x_sign;
    io_sphere_center_delay_14_x_exp <= io_sphere_center_delay_13_x_exp;
    io_sphere_center_delay_14_x_mant <= io_sphere_center_delay_13_x_mant;
    io_sphere_center_delay_14_y_sign <= io_sphere_center_delay_13_y_sign;
    io_sphere_center_delay_14_y_exp <= io_sphere_center_delay_13_y_exp;
    io_sphere_center_delay_14_y_mant <= io_sphere_center_delay_13_y_mant;
    io_sphere_center_delay_14_z_sign <= io_sphere_center_delay_13_z_sign;
    io_sphere_center_delay_14_z_exp <= io_sphere_center_delay_13_z_exp;
    io_sphere_center_delay_14_z_mant <= io_sphere_center_delay_13_z_mant;
    io_sphere_center_delay_15_x_sign <= io_sphere_center_delay_14_x_sign;
    io_sphere_center_delay_15_x_exp <= io_sphere_center_delay_14_x_exp;
    io_sphere_center_delay_15_x_mant <= io_sphere_center_delay_14_x_mant;
    io_sphere_center_delay_15_y_sign <= io_sphere_center_delay_14_y_sign;
    io_sphere_center_delay_15_y_exp <= io_sphere_center_delay_14_y_exp;
    io_sphere_center_delay_15_y_mant <= io_sphere_center_delay_14_y_mant;
    io_sphere_center_delay_15_z_sign <= io_sphere_center_delay_14_z_sign;
    io_sphere_center_delay_15_z_exp <= io_sphere_center_delay_14_z_exp;
    io_sphere_center_delay_15_z_mant <= io_sphere_center_delay_14_z_mant;
    io_sphere_center_delay_16_x_sign <= io_sphere_center_delay_15_x_sign;
    io_sphere_center_delay_16_x_exp <= io_sphere_center_delay_15_x_exp;
    io_sphere_center_delay_16_x_mant <= io_sphere_center_delay_15_x_mant;
    io_sphere_center_delay_16_y_sign <= io_sphere_center_delay_15_y_sign;
    io_sphere_center_delay_16_y_exp <= io_sphere_center_delay_15_y_exp;
    io_sphere_center_delay_16_y_mant <= io_sphere_center_delay_15_y_mant;
    io_sphere_center_delay_16_z_sign <= io_sphere_center_delay_15_z_sign;
    io_sphere_center_delay_16_z_exp <= io_sphere_center_delay_15_z_exp;
    io_sphere_center_delay_16_z_mant <= io_sphere_center_delay_15_z_mant;
    io_sphere_center_delay_17_x_sign <= io_sphere_center_delay_16_x_sign;
    io_sphere_center_delay_17_x_exp <= io_sphere_center_delay_16_x_exp;
    io_sphere_center_delay_17_x_mant <= io_sphere_center_delay_16_x_mant;
    io_sphere_center_delay_17_y_sign <= io_sphere_center_delay_16_y_sign;
    io_sphere_center_delay_17_y_exp <= io_sphere_center_delay_16_y_exp;
    io_sphere_center_delay_17_y_mant <= io_sphere_center_delay_16_y_mant;
    io_sphere_center_delay_17_z_sign <= io_sphere_center_delay_16_z_sign;
    io_sphere_center_delay_17_z_exp <= io_sphere_center_delay_16_z_exp;
    io_sphere_center_delay_17_z_mant <= io_sphere_center_delay_16_z_mant;
    io_sphere_center_delay_18_x_sign <= io_sphere_center_delay_17_x_sign;
    io_sphere_center_delay_18_x_exp <= io_sphere_center_delay_17_x_exp;
    io_sphere_center_delay_18_x_mant <= io_sphere_center_delay_17_x_mant;
    io_sphere_center_delay_18_y_sign <= io_sphere_center_delay_17_y_sign;
    io_sphere_center_delay_18_y_exp <= io_sphere_center_delay_17_y_exp;
    io_sphere_center_delay_18_y_mant <= io_sphere_center_delay_17_y_mant;
    io_sphere_center_delay_18_z_sign <= io_sphere_center_delay_17_z_sign;
    io_sphere_center_delay_18_z_exp <= io_sphere_center_delay_17_z_exp;
    io_sphere_center_delay_18_z_mant <= io_sphere_center_delay_17_z_mant;
    io_sphere_center_delay_19_x_sign <= io_sphere_center_delay_18_x_sign;
    io_sphere_center_delay_19_x_exp <= io_sphere_center_delay_18_x_exp;
    io_sphere_center_delay_19_x_mant <= io_sphere_center_delay_18_x_mant;
    io_sphere_center_delay_19_y_sign <= io_sphere_center_delay_18_y_sign;
    io_sphere_center_delay_19_y_exp <= io_sphere_center_delay_18_y_exp;
    io_sphere_center_delay_19_y_mant <= io_sphere_center_delay_18_y_mant;
    io_sphere_center_delay_19_z_sign <= io_sphere_center_delay_18_z_sign;
    io_sphere_center_delay_19_z_exp <= io_sphere_center_delay_18_z_exp;
    io_sphere_center_delay_19_z_mant <= io_sphere_center_delay_18_z_mant;
    io_sphere_center_delay_20_x_sign <= io_sphere_center_delay_19_x_sign;
    io_sphere_center_delay_20_x_exp <= io_sphere_center_delay_19_x_exp;
    io_sphere_center_delay_20_x_mant <= io_sphere_center_delay_19_x_mant;
    io_sphere_center_delay_20_y_sign <= io_sphere_center_delay_19_y_sign;
    io_sphere_center_delay_20_y_exp <= io_sphere_center_delay_19_y_exp;
    io_sphere_center_delay_20_y_mant <= io_sphere_center_delay_19_y_mant;
    io_sphere_center_delay_20_z_sign <= io_sphere_center_delay_19_z_sign;
    io_sphere_center_delay_20_z_exp <= io_sphere_center_delay_19_z_exp;
    io_sphere_center_delay_20_z_mant <= io_sphere_center_delay_19_z_mant;
    io_sphere_center_delay_21_x_sign <= io_sphere_center_delay_20_x_sign;
    io_sphere_center_delay_21_x_exp <= io_sphere_center_delay_20_x_exp;
    io_sphere_center_delay_21_x_mant <= io_sphere_center_delay_20_x_mant;
    io_sphere_center_delay_21_y_sign <= io_sphere_center_delay_20_y_sign;
    io_sphere_center_delay_21_y_exp <= io_sphere_center_delay_20_y_exp;
    io_sphere_center_delay_21_y_mant <= io_sphere_center_delay_20_y_mant;
    io_sphere_center_delay_21_z_sign <= io_sphere_center_delay_20_z_sign;
    io_sphere_center_delay_21_z_exp <= io_sphere_center_delay_20_z_exp;
    io_sphere_center_delay_21_z_mant <= io_sphere_center_delay_20_z_mant;
    center_delayed_x_sign <= io_sphere_center_delay_21_x_sign;
    center_delayed_x_exp <= io_sphere_center_delay_21_x_exp;
    center_delayed_x_mant <= io_sphere_center_delay_21_x_mant;
    center_delayed_y_sign <= io_sphere_center_delay_21_y_sign;
    center_delayed_y_exp <= io_sphere_center_delay_21_y_exp;
    center_delayed_y_mant <= io_sphere_center_delay_21_y_mant;
    center_delayed_z_sign <= io_sphere_center_delay_21_z_sign;
    center_delayed_z_exp <= io_sphere_center_delay_21_z_exp;
    center_delayed_z_mant <= io_sphere_center_delay_21_z_mant;
    dir_delayed_intersect_delay_1_x_sign <= dir_delayed_intersect_x_sign;
    dir_delayed_intersect_delay_1_x_exp <= dir_delayed_intersect_x_exp;
    dir_delayed_intersect_delay_1_x_mant <= dir_delayed_intersect_x_mant;
    dir_delayed_intersect_delay_1_y_sign <= dir_delayed_intersect_y_sign;
    dir_delayed_intersect_delay_1_y_exp <= dir_delayed_intersect_y_exp;
    dir_delayed_intersect_delay_1_y_mant <= dir_delayed_intersect_y_mant;
    dir_delayed_intersect_delay_1_z_sign <= dir_delayed_intersect_z_sign;
    dir_delayed_intersect_delay_1_z_exp <= dir_delayed_intersect_z_exp;
    dir_delayed_intersect_delay_1_z_mant <= dir_delayed_intersect_z_mant;
    dir_delayed_intersect_delay_2_x_sign <= dir_delayed_intersect_delay_1_x_sign;
    dir_delayed_intersect_delay_2_x_exp <= dir_delayed_intersect_delay_1_x_exp;
    dir_delayed_intersect_delay_2_x_mant <= dir_delayed_intersect_delay_1_x_mant;
    dir_delayed_intersect_delay_2_y_sign <= dir_delayed_intersect_delay_1_y_sign;
    dir_delayed_intersect_delay_2_y_exp <= dir_delayed_intersect_delay_1_y_exp;
    dir_delayed_intersect_delay_2_y_mant <= dir_delayed_intersect_delay_1_y_mant;
    dir_delayed_intersect_delay_2_z_sign <= dir_delayed_intersect_delay_1_z_sign;
    dir_delayed_intersect_delay_2_z_exp <= dir_delayed_intersect_delay_1_z_exp;
    dir_delayed_intersect_delay_2_z_mant <= dir_delayed_intersect_delay_1_z_mant;
    dir_delayed_intersect_delay_3_x_sign <= dir_delayed_intersect_delay_2_x_sign;
    dir_delayed_intersect_delay_3_x_exp <= dir_delayed_intersect_delay_2_x_exp;
    dir_delayed_intersect_delay_3_x_mant <= dir_delayed_intersect_delay_2_x_mant;
    dir_delayed_intersect_delay_3_y_sign <= dir_delayed_intersect_delay_2_y_sign;
    dir_delayed_intersect_delay_3_y_exp <= dir_delayed_intersect_delay_2_y_exp;
    dir_delayed_intersect_delay_3_y_mant <= dir_delayed_intersect_delay_2_y_mant;
    dir_delayed_intersect_delay_3_z_sign <= dir_delayed_intersect_delay_2_z_sign;
    dir_delayed_intersect_delay_3_z_exp <= dir_delayed_intersect_delay_2_z_exp;
    dir_delayed_intersect_delay_3_z_mant <= dir_delayed_intersect_delay_2_z_mant;
    dir_delayed_intersect_delay_4_x_sign <= dir_delayed_intersect_delay_3_x_sign;
    dir_delayed_intersect_delay_4_x_exp <= dir_delayed_intersect_delay_3_x_exp;
    dir_delayed_intersect_delay_4_x_mant <= dir_delayed_intersect_delay_3_x_mant;
    dir_delayed_intersect_delay_4_y_sign <= dir_delayed_intersect_delay_3_y_sign;
    dir_delayed_intersect_delay_4_y_exp <= dir_delayed_intersect_delay_3_y_exp;
    dir_delayed_intersect_delay_4_y_mant <= dir_delayed_intersect_delay_3_y_mant;
    dir_delayed_intersect_delay_4_z_sign <= dir_delayed_intersect_delay_3_z_sign;
    dir_delayed_intersect_delay_4_z_exp <= dir_delayed_intersect_delay_3_z_exp;
    dir_delayed_intersect_delay_4_z_mant <= dir_delayed_intersect_delay_3_z_mant;
    dir_delayed_intersect_delay_5_x_sign <= dir_delayed_intersect_delay_4_x_sign;
    dir_delayed_intersect_delay_5_x_exp <= dir_delayed_intersect_delay_4_x_exp;
    dir_delayed_intersect_delay_5_x_mant <= dir_delayed_intersect_delay_4_x_mant;
    dir_delayed_intersect_delay_5_y_sign <= dir_delayed_intersect_delay_4_y_sign;
    dir_delayed_intersect_delay_5_y_exp <= dir_delayed_intersect_delay_4_y_exp;
    dir_delayed_intersect_delay_5_y_mant <= dir_delayed_intersect_delay_4_y_mant;
    dir_delayed_intersect_delay_5_z_sign <= dir_delayed_intersect_delay_4_z_sign;
    dir_delayed_intersect_delay_5_z_exp <= dir_delayed_intersect_delay_4_z_exp;
    dir_delayed_intersect_delay_5_z_mant <= dir_delayed_intersect_delay_4_z_mant;
    dir_delayed_intersect_delay_6_x_sign <= dir_delayed_intersect_delay_5_x_sign;
    dir_delayed_intersect_delay_6_x_exp <= dir_delayed_intersect_delay_5_x_exp;
    dir_delayed_intersect_delay_6_x_mant <= dir_delayed_intersect_delay_5_x_mant;
    dir_delayed_intersect_delay_6_y_sign <= dir_delayed_intersect_delay_5_y_sign;
    dir_delayed_intersect_delay_6_y_exp <= dir_delayed_intersect_delay_5_y_exp;
    dir_delayed_intersect_delay_6_y_mant <= dir_delayed_intersect_delay_5_y_mant;
    dir_delayed_intersect_delay_6_z_sign <= dir_delayed_intersect_delay_5_z_sign;
    dir_delayed_intersect_delay_6_z_exp <= dir_delayed_intersect_delay_5_z_exp;
    dir_delayed_intersect_delay_6_z_mant <= dir_delayed_intersect_delay_5_z_mant;
    dir_delayed_intersect_delay_7_x_sign <= dir_delayed_intersect_delay_6_x_sign;
    dir_delayed_intersect_delay_7_x_exp <= dir_delayed_intersect_delay_6_x_exp;
    dir_delayed_intersect_delay_7_x_mant <= dir_delayed_intersect_delay_6_x_mant;
    dir_delayed_intersect_delay_7_y_sign <= dir_delayed_intersect_delay_6_y_sign;
    dir_delayed_intersect_delay_7_y_exp <= dir_delayed_intersect_delay_6_y_exp;
    dir_delayed_intersect_delay_7_y_mant <= dir_delayed_intersect_delay_6_y_mant;
    dir_delayed_intersect_delay_7_z_sign <= dir_delayed_intersect_delay_6_z_sign;
    dir_delayed_intersect_delay_7_z_exp <= dir_delayed_intersect_delay_6_z_exp;
    dir_delayed_intersect_delay_7_z_mant <= dir_delayed_intersect_delay_6_z_mant;
    dir_delayed_intersect_delay_8_x_sign <= dir_delayed_intersect_delay_7_x_sign;
    dir_delayed_intersect_delay_8_x_exp <= dir_delayed_intersect_delay_7_x_exp;
    dir_delayed_intersect_delay_8_x_mant <= dir_delayed_intersect_delay_7_x_mant;
    dir_delayed_intersect_delay_8_y_sign <= dir_delayed_intersect_delay_7_y_sign;
    dir_delayed_intersect_delay_8_y_exp <= dir_delayed_intersect_delay_7_y_exp;
    dir_delayed_intersect_delay_8_y_mant <= dir_delayed_intersect_delay_7_y_mant;
    dir_delayed_intersect_delay_8_z_sign <= dir_delayed_intersect_delay_7_z_sign;
    dir_delayed_intersect_delay_8_z_exp <= dir_delayed_intersect_delay_7_z_exp;
    dir_delayed_intersect_delay_8_z_mant <= dir_delayed_intersect_delay_7_z_mant;
    dir_delayed_intersect_delay_9_x_sign <= dir_delayed_intersect_delay_8_x_sign;
    dir_delayed_intersect_delay_9_x_exp <= dir_delayed_intersect_delay_8_x_exp;
    dir_delayed_intersect_delay_9_x_mant <= dir_delayed_intersect_delay_8_x_mant;
    dir_delayed_intersect_delay_9_y_sign <= dir_delayed_intersect_delay_8_y_sign;
    dir_delayed_intersect_delay_9_y_exp <= dir_delayed_intersect_delay_8_y_exp;
    dir_delayed_intersect_delay_9_y_mant <= dir_delayed_intersect_delay_8_y_mant;
    dir_delayed_intersect_delay_9_z_sign <= dir_delayed_intersect_delay_8_z_sign;
    dir_delayed_intersect_delay_9_z_exp <= dir_delayed_intersect_delay_8_z_exp;
    dir_delayed_intersect_delay_9_z_mant <= dir_delayed_intersect_delay_8_z_mant;
    dir_delayed_intersect_delay_10_x_sign <= dir_delayed_intersect_delay_9_x_sign;
    dir_delayed_intersect_delay_10_x_exp <= dir_delayed_intersect_delay_9_x_exp;
    dir_delayed_intersect_delay_10_x_mant <= dir_delayed_intersect_delay_9_x_mant;
    dir_delayed_intersect_delay_10_y_sign <= dir_delayed_intersect_delay_9_y_sign;
    dir_delayed_intersect_delay_10_y_exp <= dir_delayed_intersect_delay_9_y_exp;
    dir_delayed_intersect_delay_10_y_mant <= dir_delayed_intersect_delay_9_y_mant;
    dir_delayed_intersect_delay_10_z_sign <= dir_delayed_intersect_delay_9_z_sign;
    dir_delayed_intersect_delay_10_z_exp <= dir_delayed_intersect_delay_9_z_exp;
    dir_delayed_intersect_delay_10_z_mant <= dir_delayed_intersect_delay_9_z_mant;
    dir_delayed_intersect_delay_11_x_sign <= dir_delayed_intersect_delay_10_x_sign;
    dir_delayed_intersect_delay_11_x_exp <= dir_delayed_intersect_delay_10_x_exp;
    dir_delayed_intersect_delay_11_x_mant <= dir_delayed_intersect_delay_10_x_mant;
    dir_delayed_intersect_delay_11_y_sign <= dir_delayed_intersect_delay_10_y_sign;
    dir_delayed_intersect_delay_11_y_exp <= dir_delayed_intersect_delay_10_y_exp;
    dir_delayed_intersect_delay_11_y_mant <= dir_delayed_intersect_delay_10_y_mant;
    dir_delayed_intersect_delay_11_z_sign <= dir_delayed_intersect_delay_10_z_sign;
    dir_delayed_intersect_delay_11_z_exp <= dir_delayed_intersect_delay_10_z_exp;
    dir_delayed_intersect_delay_11_z_mant <= dir_delayed_intersect_delay_10_z_mant;
    dir_delayed_intersect_delay_12_x_sign <= dir_delayed_intersect_delay_11_x_sign;
    dir_delayed_intersect_delay_12_x_exp <= dir_delayed_intersect_delay_11_x_exp;
    dir_delayed_intersect_delay_12_x_mant <= dir_delayed_intersect_delay_11_x_mant;
    dir_delayed_intersect_delay_12_y_sign <= dir_delayed_intersect_delay_11_y_sign;
    dir_delayed_intersect_delay_12_y_exp <= dir_delayed_intersect_delay_11_y_exp;
    dir_delayed_intersect_delay_12_y_mant <= dir_delayed_intersect_delay_11_y_mant;
    dir_delayed_intersect_delay_12_z_sign <= dir_delayed_intersect_delay_11_z_sign;
    dir_delayed_intersect_delay_12_z_exp <= dir_delayed_intersect_delay_11_z_exp;
    dir_delayed_intersect_delay_12_z_mant <= dir_delayed_intersect_delay_11_z_mant;
    dir_delayed_intersect_delay_13_x_sign <= dir_delayed_intersect_delay_12_x_sign;
    dir_delayed_intersect_delay_13_x_exp <= dir_delayed_intersect_delay_12_x_exp;
    dir_delayed_intersect_delay_13_x_mant <= dir_delayed_intersect_delay_12_x_mant;
    dir_delayed_intersect_delay_13_y_sign <= dir_delayed_intersect_delay_12_y_sign;
    dir_delayed_intersect_delay_13_y_exp <= dir_delayed_intersect_delay_12_y_exp;
    dir_delayed_intersect_delay_13_y_mant <= dir_delayed_intersect_delay_12_y_mant;
    dir_delayed_intersect_delay_13_z_sign <= dir_delayed_intersect_delay_12_z_sign;
    dir_delayed_intersect_delay_13_z_exp <= dir_delayed_intersect_delay_12_z_exp;
    dir_delayed_intersect_delay_13_z_mant <= dir_delayed_intersect_delay_12_z_mant;
    dir_delayed_intersect_delay_14_x_sign <= dir_delayed_intersect_delay_13_x_sign;
    dir_delayed_intersect_delay_14_x_exp <= dir_delayed_intersect_delay_13_x_exp;
    dir_delayed_intersect_delay_14_x_mant <= dir_delayed_intersect_delay_13_x_mant;
    dir_delayed_intersect_delay_14_y_sign <= dir_delayed_intersect_delay_13_y_sign;
    dir_delayed_intersect_delay_14_y_exp <= dir_delayed_intersect_delay_13_y_exp;
    dir_delayed_intersect_delay_14_y_mant <= dir_delayed_intersect_delay_13_y_mant;
    dir_delayed_intersect_delay_14_z_sign <= dir_delayed_intersect_delay_13_z_sign;
    dir_delayed_intersect_delay_14_z_exp <= dir_delayed_intersect_delay_13_z_exp;
    dir_delayed_intersect_delay_14_z_mant <= dir_delayed_intersect_delay_13_z_mant;
    dir_delayed_dot_normal_x_sign <= dir_delayed_intersect_delay_14_x_sign;
    dir_delayed_dot_normal_x_exp <= dir_delayed_intersect_delay_14_x_exp;
    dir_delayed_dot_normal_x_mant <= dir_delayed_intersect_delay_14_x_mant;
    dir_delayed_dot_normal_y_sign <= dir_delayed_intersect_delay_14_y_sign;
    dir_delayed_dot_normal_y_exp <= dir_delayed_intersect_delay_14_y_exp;
    dir_delayed_dot_normal_y_mant <= dir_delayed_intersect_delay_14_y_mant;
    dir_delayed_dot_normal_z_sign <= dir_delayed_intersect_delay_14_z_sign;
    dir_delayed_dot_normal_z_exp <= dir_delayed_intersect_delay_14_z_exp;
    dir_delayed_dot_normal_z_mant <= dir_delayed_intersect_delay_14_z_mant;
    dir_dot_normal_vld_regNext <= dir_dot_normal_vld;
    dir_dot_normal_sign_regNext <= dir_dot_normal_sign;
    dir_dot_normal_exp_regNext <= dir_dot_normal_exp;
    dir_dot_normal_mant_regNext <= dir_dot_normal_mant;
    normal_delay_1_x_sign <= normal_x_sign;
    normal_delay_1_x_exp <= normal_x_exp;
    normal_delay_1_x_mant <= normal_x_mant;
    normal_delay_1_y_sign <= normal_y_sign;
    normal_delay_1_y_exp <= normal_y_exp;
    normal_delay_1_y_mant <= normal_y_mant;
    normal_delay_1_z_sign <= normal_z_sign;
    normal_delay_1_z_exp <= normal_z_exp;
    normal_delay_1_z_mant <= normal_z_mant;
    normal_delay_2_x_sign <= normal_delay_1_x_sign;
    normal_delay_2_x_exp <= normal_delay_1_x_exp;
    normal_delay_2_x_mant <= normal_delay_1_x_mant;
    normal_delay_2_y_sign <= normal_delay_1_y_sign;
    normal_delay_2_y_exp <= normal_delay_1_y_exp;
    normal_delay_2_y_mant <= normal_delay_1_y_mant;
    normal_delay_2_z_sign <= normal_delay_1_z_sign;
    normal_delay_2_z_exp <= normal_delay_1_z_exp;
    normal_delay_2_z_mant <= normal_delay_1_z_mant;
    normal_delay_3_x_sign <= normal_delay_2_x_sign;
    normal_delay_3_x_exp <= normal_delay_2_x_exp;
    normal_delay_3_x_mant <= normal_delay_2_x_mant;
    normal_delay_3_y_sign <= normal_delay_2_y_sign;
    normal_delay_3_y_exp <= normal_delay_2_y_exp;
    normal_delay_3_y_mant <= normal_delay_2_y_mant;
    normal_delay_3_z_sign <= normal_delay_2_z_sign;
    normal_delay_3_z_exp <= normal_delay_2_z_exp;
    normal_delay_3_z_mant <= normal_delay_2_z_mant;
    normal_delay_4_x_sign <= normal_delay_3_x_sign;
    normal_delay_4_x_exp <= normal_delay_3_x_exp;
    normal_delay_4_x_mant <= normal_delay_3_x_mant;
    normal_delay_4_y_sign <= normal_delay_3_y_sign;
    normal_delay_4_y_exp <= normal_delay_3_y_exp;
    normal_delay_4_y_mant <= normal_delay_3_y_mant;
    normal_delay_4_z_sign <= normal_delay_3_z_sign;
    normal_delay_4_z_exp <= normal_delay_3_z_exp;
    normal_delay_4_z_mant <= normal_delay_3_z_mant;
    normal_delay_5_x_sign <= normal_delay_4_x_sign;
    normal_delay_5_x_exp <= normal_delay_4_x_exp;
    normal_delay_5_x_mant <= normal_delay_4_x_mant;
    normal_delay_5_y_sign <= normal_delay_4_y_sign;
    normal_delay_5_y_exp <= normal_delay_4_y_exp;
    normal_delay_5_y_mant <= normal_delay_4_y_mant;
    normal_delay_5_z_sign <= normal_delay_4_z_sign;
    normal_delay_5_z_exp <= normal_delay_4_z_exp;
    normal_delay_5_z_mant <= normal_delay_4_z_mant;
    normal_delay_6_x_sign <= normal_delay_5_x_sign;
    normal_delay_6_x_exp <= normal_delay_5_x_exp;
    normal_delay_6_x_mant <= normal_delay_5_x_mant;
    normal_delay_6_y_sign <= normal_delay_5_y_sign;
    normal_delay_6_y_exp <= normal_delay_5_y_exp;
    normal_delay_6_y_mant <= normal_delay_5_y_mant;
    normal_delay_6_z_sign <= normal_delay_5_z_sign;
    normal_delay_6_z_exp <= normal_delay_5_z_exp;
    normal_delay_6_z_mant <= normal_delay_5_z_mant;
    normal_delayed_dir_mirror_x_sign <= normal_delay_6_x_sign;
    normal_delayed_dir_mirror_x_exp <= normal_delay_6_x_exp;
    normal_delayed_dir_mirror_x_mant <= normal_delay_6_x_mant;
    normal_delayed_dir_mirror_y_sign <= normal_delay_6_y_sign;
    normal_delayed_dir_mirror_y_exp <= normal_delay_6_y_exp;
    normal_delayed_dir_mirror_y_mant <= normal_delay_6_y_mant;
    normal_delayed_dir_mirror_z_sign <= normal_delay_6_z_sign;
    normal_delayed_dir_mirror_z_exp <= normal_delay_6_z_exp;
    normal_delayed_dir_mirror_z_mant <= normal_delay_6_z_mant;
    dir_delayed_dot_normal_delay_1_x_sign <= dir_delayed_dot_normal_x_sign;
    dir_delayed_dot_normal_delay_1_x_exp <= dir_delayed_dot_normal_x_exp;
    dir_delayed_dot_normal_delay_1_x_mant <= dir_delayed_dot_normal_x_mant;
    dir_delayed_dot_normal_delay_1_y_sign <= dir_delayed_dot_normal_y_sign;
    dir_delayed_dot_normal_delay_1_y_exp <= dir_delayed_dot_normal_y_exp;
    dir_delayed_dot_normal_delay_1_y_mant <= dir_delayed_dot_normal_y_mant;
    dir_delayed_dot_normal_delay_1_z_sign <= dir_delayed_dot_normal_z_sign;
    dir_delayed_dot_normal_delay_1_z_exp <= dir_delayed_dot_normal_z_exp;
    dir_delayed_dot_normal_delay_1_z_mant <= dir_delayed_dot_normal_z_mant;
    dir_delayed_dot_normal_delay_2_x_sign <= dir_delayed_dot_normal_delay_1_x_sign;
    dir_delayed_dot_normal_delay_2_x_exp <= dir_delayed_dot_normal_delay_1_x_exp;
    dir_delayed_dot_normal_delay_2_x_mant <= dir_delayed_dot_normal_delay_1_x_mant;
    dir_delayed_dot_normal_delay_2_y_sign <= dir_delayed_dot_normal_delay_1_y_sign;
    dir_delayed_dot_normal_delay_2_y_exp <= dir_delayed_dot_normal_delay_1_y_exp;
    dir_delayed_dot_normal_delay_2_y_mant <= dir_delayed_dot_normal_delay_1_y_mant;
    dir_delayed_dot_normal_delay_2_z_sign <= dir_delayed_dot_normal_delay_1_z_sign;
    dir_delayed_dot_normal_delay_2_z_exp <= dir_delayed_dot_normal_delay_1_z_exp;
    dir_delayed_dot_normal_delay_2_z_mant <= dir_delayed_dot_normal_delay_1_z_mant;
    dir_delayed_dot_normal_delay_3_x_sign <= dir_delayed_dot_normal_delay_2_x_sign;
    dir_delayed_dot_normal_delay_3_x_exp <= dir_delayed_dot_normal_delay_2_x_exp;
    dir_delayed_dot_normal_delay_3_x_mant <= dir_delayed_dot_normal_delay_2_x_mant;
    dir_delayed_dot_normal_delay_3_y_sign <= dir_delayed_dot_normal_delay_2_y_sign;
    dir_delayed_dot_normal_delay_3_y_exp <= dir_delayed_dot_normal_delay_2_y_exp;
    dir_delayed_dot_normal_delay_3_y_mant <= dir_delayed_dot_normal_delay_2_y_mant;
    dir_delayed_dot_normal_delay_3_z_sign <= dir_delayed_dot_normal_delay_2_z_sign;
    dir_delayed_dot_normal_delay_3_z_exp <= dir_delayed_dot_normal_delay_2_z_exp;
    dir_delayed_dot_normal_delay_3_z_mant <= dir_delayed_dot_normal_delay_2_z_mant;
    dir_delayed_dot_normal_delay_4_x_sign <= dir_delayed_dot_normal_delay_3_x_sign;
    dir_delayed_dot_normal_delay_4_x_exp <= dir_delayed_dot_normal_delay_3_x_exp;
    dir_delayed_dot_normal_delay_4_x_mant <= dir_delayed_dot_normal_delay_3_x_mant;
    dir_delayed_dot_normal_delay_4_y_sign <= dir_delayed_dot_normal_delay_3_y_sign;
    dir_delayed_dot_normal_delay_4_y_exp <= dir_delayed_dot_normal_delay_3_y_exp;
    dir_delayed_dot_normal_delay_4_y_mant <= dir_delayed_dot_normal_delay_3_y_mant;
    dir_delayed_dot_normal_delay_4_z_sign <= dir_delayed_dot_normal_delay_3_z_sign;
    dir_delayed_dot_normal_delay_4_z_exp <= dir_delayed_dot_normal_delay_3_z_exp;
    dir_delayed_dot_normal_delay_4_z_mant <= dir_delayed_dot_normal_delay_3_z_mant;
    dir_delayed_dot_normal_delay_5_x_sign <= dir_delayed_dot_normal_delay_4_x_sign;
    dir_delayed_dot_normal_delay_5_x_exp <= dir_delayed_dot_normal_delay_4_x_exp;
    dir_delayed_dot_normal_delay_5_x_mant <= dir_delayed_dot_normal_delay_4_x_mant;
    dir_delayed_dot_normal_delay_5_y_sign <= dir_delayed_dot_normal_delay_4_y_sign;
    dir_delayed_dot_normal_delay_5_y_exp <= dir_delayed_dot_normal_delay_4_y_exp;
    dir_delayed_dot_normal_delay_5_y_mant <= dir_delayed_dot_normal_delay_4_y_mant;
    dir_delayed_dot_normal_delay_5_z_sign <= dir_delayed_dot_normal_delay_4_z_sign;
    dir_delayed_dot_normal_delay_5_z_exp <= dir_delayed_dot_normal_delay_4_z_exp;
    dir_delayed_dot_normal_delay_5_z_mant <= dir_delayed_dot_normal_delay_4_z_mant;
    dir_delayed_dot_normal_delay_6_x_sign <= dir_delayed_dot_normal_delay_5_x_sign;
    dir_delayed_dot_normal_delay_6_x_exp <= dir_delayed_dot_normal_delay_5_x_exp;
    dir_delayed_dot_normal_delay_6_x_mant <= dir_delayed_dot_normal_delay_5_x_mant;
    dir_delayed_dot_normal_delay_6_y_sign <= dir_delayed_dot_normal_delay_5_y_sign;
    dir_delayed_dot_normal_delay_6_y_exp <= dir_delayed_dot_normal_delay_5_y_exp;
    dir_delayed_dot_normal_delay_6_y_mant <= dir_delayed_dot_normal_delay_5_y_mant;
    dir_delayed_dot_normal_delay_6_z_sign <= dir_delayed_dot_normal_delay_5_z_sign;
    dir_delayed_dot_normal_delay_6_z_exp <= dir_delayed_dot_normal_delay_5_z_exp;
    dir_delayed_dot_normal_delay_6_z_mant <= dir_delayed_dot_normal_delay_5_z_mant;
    dir_delayed_dot_normal_delay_7_x_sign <= dir_delayed_dot_normal_delay_6_x_sign;
    dir_delayed_dot_normal_delay_7_x_exp <= dir_delayed_dot_normal_delay_6_x_exp;
    dir_delayed_dot_normal_delay_7_x_mant <= dir_delayed_dot_normal_delay_6_x_mant;
    dir_delayed_dot_normal_delay_7_y_sign <= dir_delayed_dot_normal_delay_6_y_sign;
    dir_delayed_dot_normal_delay_7_y_exp <= dir_delayed_dot_normal_delay_6_y_exp;
    dir_delayed_dot_normal_delay_7_y_mant <= dir_delayed_dot_normal_delay_6_y_mant;
    dir_delayed_dot_normal_delay_7_z_sign <= dir_delayed_dot_normal_delay_6_z_sign;
    dir_delayed_dot_normal_delay_7_z_exp <= dir_delayed_dot_normal_delay_6_z_exp;
    dir_delayed_dot_normal_delay_7_z_mant <= dir_delayed_dot_normal_delay_6_z_mant;
    dir_delayed_dot_normal_delay_8_x_sign <= dir_delayed_dot_normal_delay_7_x_sign;
    dir_delayed_dot_normal_delay_8_x_exp <= dir_delayed_dot_normal_delay_7_x_exp;
    dir_delayed_dot_normal_delay_8_x_mant <= dir_delayed_dot_normal_delay_7_x_mant;
    dir_delayed_dot_normal_delay_8_y_sign <= dir_delayed_dot_normal_delay_7_y_sign;
    dir_delayed_dot_normal_delay_8_y_exp <= dir_delayed_dot_normal_delay_7_y_exp;
    dir_delayed_dot_normal_delay_8_y_mant <= dir_delayed_dot_normal_delay_7_y_mant;
    dir_delayed_dot_normal_delay_8_z_sign <= dir_delayed_dot_normal_delay_7_z_sign;
    dir_delayed_dot_normal_delay_8_z_exp <= dir_delayed_dot_normal_delay_7_z_exp;
    dir_delayed_dot_normal_delay_8_z_mant <= dir_delayed_dot_normal_delay_7_z_mant;
    dir_delayed_reflect_dir_x_sign <= dir_delayed_dot_normal_delay_8_x_sign;
    dir_delayed_reflect_dir_x_exp <= dir_delayed_dot_normal_delay_8_x_exp;
    dir_delayed_reflect_dir_x_mant <= dir_delayed_dot_normal_delay_8_x_mant;
    dir_delayed_reflect_dir_y_sign <= dir_delayed_dot_normal_delay_8_y_sign;
    dir_delayed_reflect_dir_y_exp <= dir_delayed_dot_normal_delay_8_y_exp;
    dir_delayed_reflect_dir_y_mant <= dir_delayed_dot_normal_delay_8_y_mant;
    dir_delayed_reflect_dir_z_sign <= dir_delayed_dot_normal_delay_8_z_sign;
    dir_delayed_reflect_dir_z_exp <= dir_delayed_dot_normal_delay_8_z_exp;
    dir_delayed_reflect_dir_z_mant <= dir_delayed_dot_normal_delay_8_z_mant;
    intersects_tca_delay_1_1_ <= intersects_tca;
    intersects_tca_delay_2_1_ <= intersects_tca_delay_1_1_;
    intersects_tca_delay_3_1_ <= intersects_tca_delay_2_1_;
    intersects_tca_delay_4 <= intersects_tca_delay_3_1_;
    intersects_tca_delay_5 <= intersects_tca_delay_4;
    intersects_tca_delay_6 <= intersects_tca_delay_5;
    intersects_tca_delay_7 <= intersects_tca_delay_6;
    intersects_tca_delay_8 <= intersects_tca_delay_7;
    intersects_tca_delay_9 <= intersects_tca_delay_8;
    intersects_tca_delay_10 <= intersects_tca_delay_9;
    intersects_tca_delay_11 <= intersects_tca_delay_10;
    intersects_tca_delay_12 <= intersects_tca_delay_11;
    intersects_tca_delay_13 <= intersects_tca_delay_12;
    intersects_tca_delay_14 <= intersects_tca_delay_13;
    intersects_tca_delay_15 <= intersects_tca_delay_14;
    intersects_tca_delay_16 <= intersects_tca_delay_15;
    intersects_tca_delay_17 <= intersects_tca_delay_16;
    intersects_tca_delay_18 <= intersects_tca_delay_17;
    intersects_tca_delay_19 <= intersects_tca_delay_18;
    intersects_tca_delay_20 <= intersects_tca_delay_19;
    intersects_tca_delay_21 <= intersects_tca_delay_20;
    intersects_tca_delay_22 <= intersects_tca_delay_21;
    intersects_tca_delay_23 <= intersects_tca_delay_22;
    intersects_tca_delay_24 <= intersects_tca_delay_23;
    intersects_tca_delay_25 <= intersects_tca_delay_24;
    intersects_tca_delay_26 <= intersects_tca_delay_25;
    intersects_tca_delay_27 <= intersects_tca_delay_26;
    intersects_tca_delay_28 <= intersects_tca_delay_27;
    intersects_tca_delay_29 <= intersects_tca_delay_28;
    intersects_tca_delay_30 <= intersects_tca_delay_29;
    intersects_tca_delay_31 <= intersects_tca_delay_30;
    intersects_tca_delay_32 <= intersects_tca_delay_31;
    intersects_tca_delay_33 <= intersects_tca_delay_32;
    intersects_tca_delay_34 <= intersects_tca_delay_33;
    intersects_tca_delay_35 <= intersects_tca_delay_34;
    intersects_tca_delayed <= intersects_tca_delay_35;
    intersects_d2_delay_1 <= intersects_d2;
    intersects_d2_delay_2 <= intersects_d2_delay_1;
    intersects_d2_delay_3 <= intersects_d2_delay_2;
    intersects_d2_delay_4 <= intersects_d2_delay_3;
    intersects_d2_delay_5 <= intersects_d2_delay_4;
    intersects_d2_delay_6 <= intersects_d2_delay_5;
    intersects_d2_delay_7 <= intersects_d2_delay_6;
    intersects_d2_delay_8 <= intersects_d2_delay_7;
    intersects_d2_delay_9 <= intersects_d2_delay_8;
    intersects_d2_delay_10 <= intersects_d2_delay_9;
    intersects_d2_delay_11 <= intersects_d2_delay_10;
    intersects_d2_delay_12 <= intersects_d2_delay_11;
    intersects_d2_delay_13 <= intersects_d2_delay_12;
    intersects_d2_delay_14 <= intersects_d2_delay_13;
    intersects_d2_delay_15 <= intersects_d2_delay_14;
    intersects_d2_delay_16 <= intersects_d2_delay_15;
    intersects_d2_delay_17 <= intersects_d2_delay_16;
    intersects_d2_delay_18 <= intersects_d2_delay_17;
    intersects_d2_delay_19 <= intersects_d2_delay_18;
    intersects_d2_delay_20 <= intersects_d2_delay_19;
    intersects_d2_delay_21 <= intersects_d2_delay_20;
    intersects_d2_delay_22 <= intersects_d2_delay_21;
    intersects_d2_delay_23 <= intersects_d2_delay_22;
    intersects_d2_delay_24 <= intersects_d2_delay_23;
    intersects_d2_delay_25 <= intersects_d2_delay_24;
    intersects_d2_delay_26 <= intersects_d2_delay_25;
    intersects_d2_delay_27 <= intersects_d2_delay_26;
    intersects_d2_delay_28 <= intersects_d2_delay_27;
    intersects_d2_delay_29 <= intersects_d2_delay_28;
    intersects_d2_delayed <= intersects_d2_delay_29;
    t_delay_1_sign <= t_sign;
    t_delay_1_exp <= t_exp;
    t_delay_1_mant <= t_mant;
    t_delay_2_sign <= t_delay_1_sign;
    t_delay_2_exp <= t_delay_1_exp;
    t_delay_2_mant <= t_delay_1_mant;
    t_delay_3_sign <= t_delay_2_sign;
    t_delay_3_exp <= t_delay_2_exp;
    t_delay_3_mant <= t_delay_2_mant;
    t_delay_4_sign <= t_delay_3_sign;
    t_delay_4_exp <= t_delay_3_exp;
    t_delay_4_mant <= t_delay_3_mant;
    t_delay_5_sign <= t_delay_4_sign;
    t_delay_5_exp <= t_delay_4_exp;
    t_delay_5_mant <= t_delay_4_mant;
    t_delay_6_sign <= t_delay_5_sign;
    t_delay_6_exp <= t_delay_5_exp;
    t_delay_6_mant <= t_delay_5_mant;
    t_delay_7_sign <= t_delay_6_sign;
    t_delay_7_exp <= t_delay_6_exp;
    t_delay_7_mant <= t_delay_6_mant;
    t_delay_8_sign <= t_delay_7_sign;
    t_delay_8_exp <= t_delay_7_exp;
    t_delay_8_mant <= t_delay_7_mant;
    t_delay_9_sign <= t_delay_8_sign;
    t_delay_9_exp <= t_delay_8_exp;
    t_delay_9_mant <= t_delay_8_mant;
    t_delay_10_sign <= t_delay_9_sign;
    t_delay_10_exp <= t_delay_9_exp;
    t_delay_10_mant <= t_delay_9_mant;
    t_delay_11_sign <= t_delay_10_sign;
    t_delay_11_exp <= t_delay_10_exp;
    t_delay_11_mant <= t_delay_10_mant;
    t_delay_12_sign <= t_delay_11_sign;
    t_delay_12_exp <= t_delay_11_exp;
    t_delay_12_mant <= t_delay_11_mant;
    t_delay_13_sign <= t_delay_12_sign;
    t_delay_13_exp <= t_delay_12_exp;
    t_delay_13_mant <= t_delay_12_mant;
    t_delay_14_sign <= t_delay_13_sign;
    t_delay_14_exp <= t_delay_13_exp;
    t_delay_14_mant <= t_delay_13_mant;
    t_delay_15_sign <= t_delay_14_sign;
    t_delay_15_exp <= t_delay_14_exp;
    t_delay_15_mant <= t_delay_14_mant;
    t_delay_16_sign <= t_delay_15_sign;
    t_delay_16_exp <= t_delay_15_exp;
    t_delay_16_mant <= t_delay_15_mant;
    t_delay_17_sign <= t_delay_16_sign;
    t_delay_17_exp <= t_delay_16_exp;
    t_delay_17_mant <= t_delay_16_mant;
    t_delay_18_sign <= t_delay_17_sign;
    t_delay_18_exp <= t_delay_17_exp;
    t_delay_18_mant <= t_delay_17_mant;
    t_delay_19_sign <= t_delay_18_sign;
    t_delay_19_exp <= t_delay_18_exp;
    t_delay_19_mant <= t_delay_18_mant;
    t_delay_20_sign <= t_delay_19_sign;
    t_delay_20_exp <= t_delay_19_exp;
    t_delay_20_mant <= t_delay_19_mant;
    t_delay_21_sign <= t_delay_20_sign;
    t_delay_21_exp <= t_delay_20_exp;
    t_delay_21_mant <= t_delay_20_mant;
    t_delay_22_sign <= t_delay_21_sign;
    t_delay_22_exp <= t_delay_21_exp;
    t_delay_22_mant <= t_delay_21_mant;
    t_delay_23_sign <= t_delay_22_sign;
    t_delay_23_exp <= t_delay_22_exp;
    t_delay_23_mant <= t_delay_22_mant;
    t_delay_24_sign <= t_delay_23_sign;
    t_delay_24_exp <= t_delay_23_exp;
    t_delay_24_mant <= t_delay_23_mant;
    t_delay_25_sign <= t_delay_24_sign;
    t_delay_25_exp <= t_delay_24_exp;
    t_delay_25_mant <= t_delay_24_mant;
    t_delayed_sign <= t_delay_25_sign;
    t_delayed_exp <= t_delay_25_exp;
    t_delayed_mant <= t_delay_25_mant;
    intersection_delay_1_x_sign <= intersection_x_sign;
    intersection_delay_1_x_exp <= intersection_x_exp;
    intersection_delay_1_x_mant <= intersection_x_mant;
    intersection_delay_1_y_sign <= intersection_y_sign;
    intersection_delay_1_y_exp <= intersection_y_exp;
    intersection_delay_1_y_mant <= intersection_y_mant;
    intersection_delay_1_z_sign <= intersection_z_sign;
    intersection_delay_1_z_exp <= intersection_z_exp;
    intersection_delay_1_z_mant <= intersection_z_mant;
    intersection_delay_2_x_sign <= intersection_delay_1_x_sign;
    intersection_delay_2_x_exp <= intersection_delay_1_x_exp;
    intersection_delay_2_x_mant <= intersection_delay_1_x_mant;
    intersection_delay_2_y_sign <= intersection_delay_1_y_sign;
    intersection_delay_2_y_exp <= intersection_delay_1_y_exp;
    intersection_delay_2_y_mant <= intersection_delay_1_y_mant;
    intersection_delay_2_z_sign <= intersection_delay_1_z_sign;
    intersection_delay_2_z_exp <= intersection_delay_1_z_exp;
    intersection_delay_2_z_mant <= intersection_delay_1_z_mant;
    intersection_delay_3_x_sign <= intersection_delay_2_x_sign;
    intersection_delay_3_x_exp <= intersection_delay_2_x_exp;
    intersection_delay_3_x_mant <= intersection_delay_2_x_mant;
    intersection_delay_3_y_sign <= intersection_delay_2_y_sign;
    intersection_delay_3_y_exp <= intersection_delay_2_y_exp;
    intersection_delay_3_y_mant <= intersection_delay_2_y_mant;
    intersection_delay_3_z_sign <= intersection_delay_2_z_sign;
    intersection_delay_3_z_exp <= intersection_delay_2_z_exp;
    intersection_delay_3_z_mant <= intersection_delay_2_z_mant;
    intersection_delay_4_x_sign <= intersection_delay_3_x_sign;
    intersection_delay_4_x_exp <= intersection_delay_3_x_exp;
    intersection_delay_4_x_mant <= intersection_delay_3_x_mant;
    intersection_delay_4_y_sign <= intersection_delay_3_y_sign;
    intersection_delay_4_y_exp <= intersection_delay_3_y_exp;
    intersection_delay_4_y_mant <= intersection_delay_3_y_mant;
    intersection_delay_4_z_sign <= intersection_delay_3_z_sign;
    intersection_delay_4_z_exp <= intersection_delay_3_z_exp;
    intersection_delay_4_z_mant <= intersection_delay_3_z_mant;
    intersection_delay_5_x_sign <= intersection_delay_4_x_sign;
    intersection_delay_5_x_exp <= intersection_delay_4_x_exp;
    intersection_delay_5_x_mant <= intersection_delay_4_x_mant;
    intersection_delay_5_y_sign <= intersection_delay_4_y_sign;
    intersection_delay_5_y_exp <= intersection_delay_4_y_exp;
    intersection_delay_5_y_mant <= intersection_delay_4_y_mant;
    intersection_delay_5_z_sign <= intersection_delay_4_z_sign;
    intersection_delay_5_z_exp <= intersection_delay_4_z_exp;
    intersection_delay_5_z_mant <= intersection_delay_4_z_mant;
    intersection_delay_6_x_sign <= intersection_delay_5_x_sign;
    intersection_delay_6_x_exp <= intersection_delay_5_x_exp;
    intersection_delay_6_x_mant <= intersection_delay_5_x_mant;
    intersection_delay_6_y_sign <= intersection_delay_5_y_sign;
    intersection_delay_6_y_exp <= intersection_delay_5_y_exp;
    intersection_delay_6_y_mant <= intersection_delay_5_y_mant;
    intersection_delay_6_z_sign <= intersection_delay_5_z_sign;
    intersection_delay_6_z_exp <= intersection_delay_5_z_exp;
    intersection_delay_6_z_mant <= intersection_delay_5_z_mant;
    intersection_delay_7_x_sign <= intersection_delay_6_x_sign;
    intersection_delay_7_x_exp <= intersection_delay_6_x_exp;
    intersection_delay_7_x_mant <= intersection_delay_6_x_mant;
    intersection_delay_7_y_sign <= intersection_delay_6_y_sign;
    intersection_delay_7_y_exp <= intersection_delay_6_y_exp;
    intersection_delay_7_y_mant <= intersection_delay_6_y_mant;
    intersection_delay_7_z_sign <= intersection_delay_6_z_sign;
    intersection_delay_7_z_exp <= intersection_delay_6_z_exp;
    intersection_delay_7_z_mant <= intersection_delay_6_z_mant;
    intersection_delay_8_x_sign <= intersection_delay_7_x_sign;
    intersection_delay_8_x_exp <= intersection_delay_7_x_exp;
    intersection_delay_8_x_mant <= intersection_delay_7_x_mant;
    intersection_delay_8_y_sign <= intersection_delay_7_y_sign;
    intersection_delay_8_y_exp <= intersection_delay_7_y_exp;
    intersection_delay_8_y_mant <= intersection_delay_7_y_mant;
    intersection_delay_8_z_sign <= intersection_delay_7_z_sign;
    intersection_delay_8_z_exp <= intersection_delay_7_z_exp;
    intersection_delay_8_z_mant <= intersection_delay_7_z_mant;
    intersection_delay_9_x_sign <= intersection_delay_8_x_sign;
    intersection_delay_9_x_exp <= intersection_delay_8_x_exp;
    intersection_delay_9_x_mant <= intersection_delay_8_x_mant;
    intersection_delay_9_y_sign <= intersection_delay_8_y_sign;
    intersection_delay_9_y_exp <= intersection_delay_8_y_exp;
    intersection_delay_9_y_mant <= intersection_delay_8_y_mant;
    intersection_delay_9_z_sign <= intersection_delay_8_z_sign;
    intersection_delay_9_z_exp <= intersection_delay_8_z_exp;
    intersection_delay_9_z_mant <= intersection_delay_8_z_mant;
    intersection_delay_10_x_sign <= intersection_delay_9_x_sign;
    intersection_delay_10_x_exp <= intersection_delay_9_x_exp;
    intersection_delay_10_x_mant <= intersection_delay_9_x_mant;
    intersection_delay_10_y_sign <= intersection_delay_9_y_sign;
    intersection_delay_10_y_exp <= intersection_delay_9_y_exp;
    intersection_delay_10_y_mant <= intersection_delay_9_y_mant;
    intersection_delay_10_z_sign <= intersection_delay_9_z_sign;
    intersection_delay_10_z_exp <= intersection_delay_9_z_exp;
    intersection_delay_10_z_mant <= intersection_delay_9_z_mant;
    intersection_delay_11_x_sign <= intersection_delay_10_x_sign;
    intersection_delay_11_x_exp <= intersection_delay_10_x_exp;
    intersection_delay_11_x_mant <= intersection_delay_10_x_mant;
    intersection_delay_11_y_sign <= intersection_delay_10_y_sign;
    intersection_delay_11_y_exp <= intersection_delay_10_y_exp;
    intersection_delay_11_y_mant <= intersection_delay_10_y_mant;
    intersection_delay_11_z_sign <= intersection_delay_10_z_sign;
    intersection_delay_11_z_exp <= intersection_delay_10_z_exp;
    intersection_delay_11_z_mant <= intersection_delay_10_z_mant;
    intersection_delay_12_x_sign <= intersection_delay_11_x_sign;
    intersection_delay_12_x_exp <= intersection_delay_11_x_exp;
    intersection_delay_12_x_mant <= intersection_delay_11_x_mant;
    intersection_delay_12_y_sign <= intersection_delay_11_y_sign;
    intersection_delay_12_y_exp <= intersection_delay_11_y_exp;
    intersection_delay_12_y_mant <= intersection_delay_11_y_mant;
    intersection_delay_12_z_sign <= intersection_delay_11_z_sign;
    intersection_delay_12_z_exp <= intersection_delay_11_z_exp;
    intersection_delay_12_z_mant <= intersection_delay_11_z_mant;
    intersection_delay_13_x_sign <= intersection_delay_12_x_sign;
    intersection_delay_13_x_exp <= intersection_delay_12_x_exp;
    intersection_delay_13_x_mant <= intersection_delay_12_x_mant;
    intersection_delay_13_y_sign <= intersection_delay_12_y_sign;
    intersection_delay_13_y_exp <= intersection_delay_12_y_exp;
    intersection_delay_13_y_mant <= intersection_delay_12_y_mant;
    intersection_delay_13_z_sign <= intersection_delay_12_z_sign;
    intersection_delay_13_z_exp <= intersection_delay_12_z_exp;
    intersection_delay_13_z_mant <= intersection_delay_12_z_mant;
    intersection_delay_14_x_sign <= intersection_delay_13_x_sign;
    intersection_delay_14_x_exp <= intersection_delay_13_x_exp;
    intersection_delay_14_x_mant <= intersection_delay_13_x_mant;
    intersection_delay_14_y_sign <= intersection_delay_13_y_sign;
    intersection_delay_14_y_exp <= intersection_delay_13_y_exp;
    intersection_delay_14_y_mant <= intersection_delay_13_y_mant;
    intersection_delay_14_z_sign <= intersection_delay_13_z_sign;
    intersection_delay_14_z_exp <= intersection_delay_13_z_exp;
    intersection_delay_14_z_mant <= intersection_delay_13_z_mant;
    intersection_delay_15_x_sign <= intersection_delay_14_x_sign;
    intersection_delay_15_x_exp <= intersection_delay_14_x_exp;
    intersection_delay_15_x_mant <= intersection_delay_14_x_mant;
    intersection_delay_15_y_sign <= intersection_delay_14_y_sign;
    intersection_delay_15_y_exp <= intersection_delay_14_y_exp;
    intersection_delay_15_y_mant <= intersection_delay_14_y_mant;
    intersection_delay_15_z_sign <= intersection_delay_14_z_sign;
    intersection_delay_15_z_exp <= intersection_delay_14_z_exp;
    intersection_delay_15_z_mant <= intersection_delay_14_z_mant;
    intersection_delay_16_x_sign <= intersection_delay_15_x_sign;
    intersection_delay_16_x_exp <= intersection_delay_15_x_exp;
    intersection_delay_16_x_mant <= intersection_delay_15_x_mant;
    intersection_delay_16_y_sign <= intersection_delay_15_y_sign;
    intersection_delay_16_y_exp <= intersection_delay_15_y_exp;
    intersection_delay_16_y_mant <= intersection_delay_15_y_mant;
    intersection_delay_16_z_sign <= intersection_delay_15_z_sign;
    intersection_delay_16_z_exp <= intersection_delay_15_z_exp;
    intersection_delay_16_z_mant <= intersection_delay_15_z_mant;
    intersection_delay_17_x_sign <= intersection_delay_16_x_sign;
    intersection_delay_17_x_exp <= intersection_delay_16_x_exp;
    intersection_delay_17_x_mant <= intersection_delay_16_x_mant;
    intersection_delay_17_y_sign <= intersection_delay_16_y_sign;
    intersection_delay_17_y_exp <= intersection_delay_16_y_exp;
    intersection_delay_17_y_mant <= intersection_delay_16_y_mant;
    intersection_delay_17_z_sign <= intersection_delay_16_z_sign;
    intersection_delay_17_z_exp <= intersection_delay_16_z_exp;
    intersection_delay_17_z_mant <= intersection_delay_16_z_mant;
    intersection_delay_18_x_sign <= intersection_delay_17_x_sign;
    intersection_delay_18_x_exp <= intersection_delay_17_x_exp;
    intersection_delay_18_x_mant <= intersection_delay_17_x_mant;
    intersection_delay_18_y_sign <= intersection_delay_17_y_sign;
    intersection_delay_18_y_exp <= intersection_delay_17_y_exp;
    intersection_delay_18_y_mant <= intersection_delay_17_y_mant;
    intersection_delay_18_z_sign <= intersection_delay_17_z_sign;
    intersection_delay_18_z_exp <= intersection_delay_17_z_exp;
    intersection_delay_18_z_mant <= intersection_delay_17_z_mant;
    intersection_delay_19_x_sign <= intersection_delay_18_x_sign;
    intersection_delay_19_x_exp <= intersection_delay_18_x_exp;
    intersection_delay_19_x_mant <= intersection_delay_18_x_mant;
    intersection_delay_19_y_sign <= intersection_delay_18_y_sign;
    intersection_delay_19_y_exp <= intersection_delay_18_y_exp;
    intersection_delay_19_y_mant <= intersection_delay_18_y_mant;
    intersection_delay_19_z_sign <= intersection_delay_18_z_sign;
    intersection_delay_19_z_exp <= intersection_delay_18_z_exp;
    intersection_delay_19_z_mant <= intersection_delay_18_z_mant;
    intersection_delay_20_x_sign <= intersection_delay_19_x_sign;
    intersection_delay_20_x_exp <= intersection_delay_19_x_exp;
    intersection_delay_20_x_mant <= intersection_delay_19_x_mant;
    intersection_delay_20_y_sign <= intersection_delay_19_y_sign;
    intersection_delay_20_y_exp <= intersection_delay_19_y_exp;
    intersection_delay_20_y_mant <= intersection_delay_19_y_mant;
    intersection_delay_20_z_sign <= intersection_delay_19_z_sign;
    intersection_delay_20_z_exp <= intersection_delay_19_z_exp;
    intersection_delay_20_z_mant <= intersection_delay_19_z_mant;
    intersection_delay_21_x_sign <= intersection_delay_20_x_sign;
    intersection_delay_21_x_exp <= intersection_delay_20_x_exp;
    intersection_delay_21_x_mant <= intersection_delay_20_x_mant;
    intersection_delay_21_y_sign <= intersection_delay_20_y_sign;
    intersection_delay_21_y_exp <= intersection_delay_20_y_exp;
    intersection_delay_21_y_mant <= intersection_delay_20_y_mant;
    intersection_delay_21_z_sign <= intersection_delay_20_z_sign;
    intersection_delay_21_z_exp <= intersection_delay_20_z_exp;
    intersection_delay_21_z_mant <= intersection_delay_20_z_mant;
    intersection_delayed_x_sign <= intersection_delay_21_x_sign;
    intersection_delayed_x_exp <= intersection_delay_21_x_exp;
    intersection_delayed_x_mant <= intersection_delay_21_x_mant;
    intersection_delayed_y_sign <= intersection_delay_21_y_sign;
    intersection_delayed_y_exp <= intersection_delay_21_y_exp;
    intersection_delayed_y_mant <= intersection_delay_21_y_mant;
    intersection_delayed_z_sign <= intersection_delay_21_z_sign;
    intersection_delayed_z_exp <= intersection_delay_21_z_exp;
    intersection_delayed_z_mant <= intersection_delay_21_z_mant;
    normal_delayed_dir_mirror_delay_1_x_sign <= normal_delayed_dir_mirror_x_sign;
    normal_delayed_dir_mirror_delay_1_x_exp <= normal_delayed_dir_mirror_x_exp;
    normal_delayed_dir_mirror_delay_1_x_mant <= normal_delayed_dir_mirror_x_mant;
    normal_delayed_dir_mirror_delay_1_y_sign <= normal_delayed_dir_mirror_y_sign;
    normal_delayed_dir_mirror_delay_1_y_exp <= normal_delayed_dir_mirror_y_exp;
    normal_delayed_dir_mirror_delay_1_y_mant <= normal_delayed_dir_mirror_y_mant;
    normal_delayed_dir_mirror_delay_1_z_sign <= normal_delayed_dir_mirror_z_sign;
    normal_delayed_dir_mirror_delay_1_z_exp <= normal_delayed_dir_mirror_z_exp;
    normal_delayed_dir_mirror_delay_1_z_mant <= normal_delayed_dir_mirror_z_mant;
    normal_delayed_dir_mirror_delay_2_x_sign <= normal_delayed_dir_mirror_delay_1_x_sign;
    normal_delayed_dir_mirror_delay_2_x_exp <= normal_delayed_dir_mirror_delay_1_x_exp;
    normal_delayed_dir_mirror_delay_2_x_mant <= normal_delayed_dir_mirror_delay_1_x_mant;
    normal_delayed_dir_mirror_delay_2_y_sign <= normal_delayed_dir_mirror_delay_1_y_sign;
    normal_delayed_dir_mirror_delay_2_y_exp <= normal_delayed_dir_mirror_delay_1_y_exp;
    normal_delayed_dir_mirror_delay_2_y_mant <= normal_delayed_dir_mirror_delay_1_y_mant;
    normal_delayed_dir_mirror_delay_2_z_sign <= normal_delayed_dir_mirror_delay_1_z_sign;
    normal_delayed_dir_mirror_delay_2_z_exp <= normal_delayed_dir_mirror_delay_1_z_exp;
    normal_delayed_dir_mirror_delay_2_z_mant <= normal_delayed_dir_mirror_delay_1_z_mant;
    normal_delayed_dir_mirror_delay_3_x_sign <= normal_delayed_dir_mirror_delay_2_x_sign;
    normal_delayed_dir_mirror_delay_3_x_exp <= normal_delayed_dir_mirror_delay_2_x_exp;
    normal_delayed_dir_mirror_delay_3_x_mant <= normal_delayed_dir_mirror_delay_2_x_mant;
    normal_delayed_dir_mirror_delay_3_y_sign <= normal_delayed_dir_mirror_delay_2_y_sign;
    normal_delayed_dir_mirror_delay_3_y_exp <= normal_delayed_dir_mirror_delay_2_y_exp;
    normal_delayed_dir_mirror_delay_3_y_mant <= normal_delayed_dir_mirror_delay_2_y_mant;
    normal_delayed_dir_mirror_delay_3_z_sign <= normal_delayed_dir_mirror_delay_2_z_sign;
    normal_delayed_dir_mirror_delay_3_z_exp <= normal_delayed_dir_mirror_delay_2_z_exp;
    normal_delayed_dir_mirror_delay_3_z_mant <= normal_delayed_dir_mirror_delay_2_z_mant;
    normal_delayed_result_x_sign <= normal_delayed_dir_mirror_delay_3_x_sign;
    normal_delayed_result_x_exp <= normal_delayed_dir_mirror_delay_3_x_exp;
    normal_delayed_result_x_mant <= normal_delayed_dir_mirror_delay_3_x_mant;
    normal_delayed_result_y_sign <= normal_delayed_dir_mirror_delay_3_y_sign;
    normal_delayed_result_y_exp <= normal_delayed_dir_mirror_delay_3_y_exp;
    normal_delayed_result_y_mant <= normal_delayed_dir_mirror_delay_3_y_mant;
    normal_delayed_result_z_sign <= normal_delayed_dir_mirror_delay_3_z_sign;
    normal_delayed_result_z_exp <= normal_delayed_dir_mirror_delay_3_z_exp;
    normal_delayed_result_z_mant <= normal_delayed_dir_mirror_delay_3_z_mant;
    origin_delayed_intersect_delay_1_x_sign <= origin_delayed_intersect_x_sign;
    origin_delayed_intersect_delay_1_x_exp <= origin_delayed_intersect_x_exp;
    origin_delayed_intersect_delay_1_x_mant <= origin_delayed_intersect_x_mant;
    origin_delayed_intersect_delay_1_y_sign <= origin_delayed_intersect_y_sign;
    origin_delayed_intersect_delay_1_y_exp <= origin_delayed_intersect_y_exp;
    origin_delayed_intersect_delay_1_y_mant <= origin_delayed_intersect_y_mant;
    origin_delayed_intersect_delay_1_z_sign <= origin_delayed_intersect_z_sign;
    origin_delayed_intersect_delay_1_z_exp <= origin_delayed_intersect_z_exp;
    origin_delayed_intersect_delay_1_z_mant <= origin_delayed_intersect_z_mant;
    origin_delayed_intersect_delay_2_x_sign <= origin_delayed_intersect_delay_1_x_sign;
    origin_delayed_intersect_delay_2_x_exp <= origin_delayed_intersect_delay_1_x_exp;
    origin_delayed_intersect_delay_2_x_mant <= origin_delayed_intersect_delay_1_x_mant;
    origin_delayed_intersect_delay_2_y_sign <= origin_delayed_intersect_delay_1_y_sign;
    origin_delayed_intersect_delay_2_y_exp <= origin_delayed_intersect_delay_1_y_exp;
    origin_delayed_intersect_delay_2_y_mant <= origin_delayed_intersect_delay_1_y_mant;
    origin_delayed_intersect_delay_2_z_sign <= origin_delayed_intersect_delay_1_z_sign;
    origin_delayed_intersect_delay_2_z_exp <= origin_delayed_intersect_delay_1_z_exp;
    origin_delayed_intersect_delay_2_z_mant <= origin_delayed_intersect_delay_1_z_mant;
    origin_delayed_intersect_delay_3_x_sign <= origin_delayed_intersect_delay_2_x_sign;
    origin_delayed_intersect_delay_3_x_exp <= origin_delayed_intersect_delay_2_x_exp;
    origin_delayed_intersect_delay_3_x_mant <= origin_delayed_intersect_delay_2_x_mant;
    origin_delayed_intersect_delay_3_y_sign <= origin_delayed_intersect_delay_2_y_sign;
    origin_delayed_intersect_delay_3_y_exp <= origin_delayed_intersect_delay_2_y_exp;
    origin_delayed_intersect_delay_3_y_mant <= origin_delayed_intersect_delay_2_y_mant;
    origin_delayed_intersect_delay_3_z_sign <= origin_delayed_intersect_delay_2_z_sign;
    origin_delayed_intersect_delay_3_z_exp <= origin_delayed_intersect_delay_2_z_exp;
    origin_delayed_intersect_delay_3_z_mant <= origin_delayed_intersect_delay_2_z_mant;
    origin_delayed_intersect_delay_4_x_sign <= origin_delayed_intersect_delay_3_x_sign;
    origin_delayed_intersect_delay_4_x_exp <= origin_delayed_intersect_delay_3_x_exp;
    origin_delayed_intersect_delay_4_x_mant <= origin_delayed_intersect_delay_3_x_mant;
    origin_delayed_intersect_delay_4_y_sign <= origin_delayed_intersect_delay_3_y_sign;
    origin_delayed_intersect_delay_4_y_exp <= origin_delayed_intersect_delay_3_y_exp;
    origin_delayed_intersect_delay_4_y_mant <= origin_delayed_intersect_delay_3_y_mant;
    origin_delayed_intersect_delay_4_z_sign <= origin_delayed_intersect_delay_3_z_sign;
    origin_delayed_intersect_delay_4_z_exp <= origin_delayed_intersect_delay_3_z_exp;
    origin_delayed_intersect_delay_4_z_mant <= origin_delayed_intersect_delay_3_z_mant;
    origin_delayed_intersect_delay_5_x_sign <= origin_delayed_intersect_delay_4_x_sign;
    origin_delayed_intersect_delay_5_x_exp <= origin_delayed_intersect_delay_4_x_exp;
    origin_delayed_intersect_delay_5_x_mant <= origin_delayed_intersect_delay_4_x_mant;
    origin_delayed_intersect_delay_5_y_sign <= origin_delayed_intersect_delay_4_y_sign;
    origin_delayed_intersect_delay_5_y_exp <= origin_delayed_intersect_delay_4_y_exp;
    origin_delayed_intersect_delay_5_y_mant <= origin_delayed_intersect_delay_4_y_mant;
    origin_delayed_intersect_delay_5_z_sign <= origin_delayed_intersect_delay_4_z_sign;
    origin_delayed_intersect_delay_5_z_exp <= origin_delayed_intersect_delay_4_z_exp;
    origin_delayed_intersect_delay_5_z_mant <= origin_delayed_intersect_delay_4_z_mant;
    origin_delayed_intersect_delay_6_x_sign <= origin_delayed_intersect_delay_5_x_sign;
    origin_delayed_intersect_delay_6_x_exp <= origin_delayed_intersect_delay_5_x_exp;
    origin_delayed_intersect_delay_6_x_mant <= origin_delayed_intersect_delay_5_x_mant;
    origin_delayed_intersect_delay_6_y_sign <= origin_delayed_intersect_delay_5_y_sign;
    origin_delayed_intersect_delay_6_y_exp <= origin_delayed_intersect_delay_5_y_exp;
    origin_delayed_intersect_delay_6_y_mant <= origin_delayed_intersect_delay_5_y_mant;
    origin_delayed_intersect_delay_6_z_sign <= origin_delayed_intersect_delay_5_z_sign;
    origin_delayed_intersect_delay_6_z_exp <= origin_delayed_intersect_delay_5_z_exp;
    origin_delayed_intersect_delay_6_z_mant <= origin_delayed_intersect_delay_5_z_mant;
    origin_delayed_intersect_delay_7_x_sign <= origin_delayed_intersect_delay_6_x_sign;
    origin_delayed_intersect_delay_7_x_exp <= origin_delayed_intersect_delay_6_x_exp;
    origin_delayed_intersect_delay_7_x_mant <= origin_delayed_intersect_delay_6_x_mant;
    origin_delayed_intersect_delay_7_y_sign <= origin_delayed_intersect_delay_6_y_sign;
    origin_delayed_intersect_delay_7_y_exp <= origin_delayed_intersect_delay_6_y_exp;
    origin_delayed_intersect_delay_7_y_mant <= origin_delayed_intersect_delay_6_y_mant;
    origin_delayed_intersect_delay_7_z_sign <= origin_delayed_intersect_delay_6_z_sign;
    origin_delayed_intersect_delay_7_z_exp <= origin_delayed_intersect_delay_6_z_exp;
    origin_delayed_intersect_delay_7_z_mant <= origin_delayed_intersect_delay_6_z_mant;
    origin_delayed_intersect_delay_8_x_sign <= origin_delayed_intersect_delay_7_x_sign;
    origin_delayed_intersect_delay_8_x_exp <= origin_delayed_intersect_delay_7_x_exp;
    origin_delayed_intersect_delay_8_x_mant <= origin_delayed_intersect_delay_7_x_mant;
    origin_delayed_intersect_delay_8_y_sign <= origin_delayed_intersect_delay_7_y_sign;
    origin_delayed_intersect_delay_8_y_exp <= origin_delayed_intersect_delay_7_y_exp;
    origin_delayed_intersect_delay_8_y_mant <= origin_delayed_intersect_delay_7_y_mant;
    origin_delayed_intersect_delay_8_z_sign <= origin_delayed_intersect_delay_7_z_sign;
    origin_delayed_intersect_delay_8_z_exp <= origin_delayed_intersect_delay_7_z_exp;
    origin_delayed_intersect_delay_8_z_mant <= origin_delayed_intersect_delay_7_z_mant;
    origin_delayed_intersect_delay_9_x_sign <= origin_delayed_intersect_delay_8_x_sign;
    origin_delayed_intersect_delay_9_x_exp <= origin_delayed_intersect_delay_8_x_exp;
    origin_delayed_intersect_delay_9_x_mant <= origin_delayed_intersect_delay_8_x_mant;
    origin_delayed_intersect_delay_9_y_sign <= origin_delayed_intersect_delay_8_y_sign;
    origin_delayed_intersect_delay_9_y_exp <= origin_delayed_intersect_delay_8_y_exp;
    origin_delayed_intersect_delay_9_y_mant <= origin_delayed_intersect_delay_8_y_mant;
    origin_delayed_intersect_delay_9_z_sign <= origin_delayed_intersect_delay_8_z_sign;
    origin_delayed_intersect_delay_9_z_exp <= origin_delayed_intersect_delay_8_z_exp;
    origin_delayed_intersect_delay_9_z_mant <= origin_delayed_intersect_delay_8_z_mant;
    origin_delayed_intersect_delay_10_x_sign <= origin_delayed_intersect_delay_9_x_sign;
    origin_delayed_intersect_delay_10_x_exp <= origin_delayed_intersect_delay_9_x_exp;
    origin_delayed_intersect_delay_10_x_mant <= origin_delayed_intersect_delay_9_x_mant;
    origin_delayed_intersect_delay_10_y_sign <= origin_delayed_intersect_delay_9_y_sign;
    origin_delayed_intersect_delay_10_y_exp <= origin_delayed_intersect_delay_9_y_exp;
    origin_delayed_intersect_delay_10_y_mant <= origin_delayed_intersect_delay_9_y_mant;
    origin_delayed_intersect_delay_10_z_sign <= origin_delayed_intersect_delay_9_z_sign;
    origin_delayed_intersect_delay_10_z_exp <= origin_delayed_intersect_delay_9_z_exp;
    origin_delayed_intersect_delay_10_z_mant <= origin_delayed_intersect_delay_9_z_mant;
    origin_delayed_intersect_delay_11_x_sign <= origin_delayed_intersect_delay_10_x_sign;
    origin_delayed_intersect_delay_11_x_exp <= origin_delayed_intersect_delay_10_x_exp;
    origin_delayed_intersect_delay_11_x_mant <= origin_delayed_intersect_delay_10_x_mant;
    origin_delayed_intersect_delay_11_y_sign <= origin_delayed_intersect_delay_10_y_sign;
    origin_delayed_intersect_delay_11_y_exp <= origin_delayed_intersect_delay_10_y_exp;
    origin_delayed_intersect_delay_11_y_mant <= origin_delayed_intersect_delay_10_y_mant;
    origin_delayed_intersect_delay_11_z_sign <= origin_delayed_intersect_delay_10_z_sign;
    origin_delayed_intersect_delay_11_z_exp <= origin_delayed_intersect_delay_10_z_exp;
    origin_delayed_intersect_delay_11_z_mant <= origin_delayed_intersect_delay_10_z_mant;
    origin_delayed_intersect_delay_12_x_sign <= origin_delayed_intersect_delay_11_x_sign;
    origin_delayed_intersect_delay_12_x_exp <= origin_delayed_intersect_delay_11_x_exp;
    origin_delayed_intersect_delay_12_x_mant <= origin_delayed_intersect_delay_11_x_mant;
    origin_delayed_intersect_delay_12_y_sign <= origin_delayed_intersect_delay_11_y_sign;
    origin_delayed_intersect_delay_12_y_exp <= origin_delayed_intersect_delay_11_y_exp;
    origin_delayed_intersect_delay_12_y_mant <= origin_delayed_intersect_delay_11_y_mant;
    origin_delayed_intersect_delay_12_z_sign <= origin_delayed_intersect_delay_11_z_sign;
    origin_delayed_intersect_delay_12_z_exp <= origin_delayed_intersect_delay_11_z_exp;
    origin_delayed_intersect_delay_12_z_mant <= origin_delayed_intersect_delay_11_z_mant;
    origin_delayed_intersect_delay_13_x_sign <= origin_delayed_intersect_delay_12_x_sign;
    origin_delayed_intersect_delay_13_x_exp <= origin_delayed_intersect_delay_12_x_exp;
    origin_delayed_intersect_delay_13_x_mant <= origin_delayed_intersect_delay_12_x_mant;
    origin_delayed_intersect_delay_13_y_sign <= origin_delayed_intersect_delay_12_y_sign;
    origin_delayed_intersect_delay_13_y_exp <= origin_delayed_intersect_delay_12_y_exp;
    origin_delayed_intersect_delay_13_y_mant <= origin_delayed_intersect_delay_12_y_mant;
    origin_delayed_intersect_delay_13_z_sign <= origin_delayed_intersect_delay_12_z_sign;
    origin_delayed_intersect_delay_13_z_exp <= origin_delayed_intersect_delay_12_z_exp;
    origin_delayed_intersect_delay_13_z_mant <= origin_delayed_intersect_delay_12_z_mant;
    origin_delayed_intersect_delay_14_x_sign <= origin_delayed_intersect_delay_13_x_sign;
    origin_delayed_intersect_delay_14_x_exp <= origin_delayed_intersect_delay_13_x_exp;
    origin_delayed_intersect_delay_14_x_mant <= origin_delayed_intersect_delay_13_x_mant;
    origin_delayed_intersect_delay_14_y_sign <= origin_delayed_intersect_delay_13_y_sign;
    origin_delayed_intersect_delay_14_y_exp <= origin_delayed_intersect_delay_13_y_exp;
    origin_delayed_intersect_delay_14_y_mant <= origin_delayed_intersect_delay_13_y_mant;
    origin_delayed_intersect_delay_14_z_sign <= origin_delayed_intersect_delay_13_z_sign;
    origin_delayed_intersect_delay_14_z_exp <= origin_delayed_intersect_delay_13_z_exp;
    origin_delayed_intersect_delay_14_z_mant <= origin_delayed_intersect_delay_13_z_mant;
    origin_delayed_intersect_delay_15_x_sign <= origin_delayed_intersect_delay_14_x_sign;
    origin_delayed_intersect_delay_15_x_exp <= origin_delayed_intersect_delay_14_x_exp;
    origin_delayed_intersect_delay_15_x_mant <= origin_delayed_intersect_delay_14_x_mant;
    origin_delayed_intersect_delay_15_y_sign <= origin_delayed_intersect_delay_14_y_sign;
    origin_delayed_intersect_delay_15_y_exp <= origin_delayed_intersect_delay_14_y_exp;
    origin_delayed_intersect_delay_15_y_mant <= origin_delayed_intersect_delay_14_y_mant;
    origin_delayed_intersect_delay_15_z_sign <= origin_delayed_intersect_delay_14_z_sign;
    origin_delayed_intersect_delay_15_z_exp <= origin_delayed_intersect_delay_14_z_exp;
    origin_delayed_intersect_delay_15_z_mant <= origin_delayed_intersect_delay_14_z_mant;
    origin_delayed_intersect_delay_16_x_sign <= origin_delayed_intersect_delay_15_x_sign;
    origin_delayed_intersect_delay_16_x_exp <= origin_delayed_intersect_delay_15_x_exp;
    origin_delayed_intersect_delay_16_x_mant <= origin_delayed_intersect_delay_15_x_mant;
    origin_delayed_intersect_delay_16_y_sign <= origin_delayed_intersect_delay_15_y_sign;
    origin_delayed_intersect_delay_16_y_exp <= origin_delayed_intersect_delay_15_y_exp;
    origin_delayed_intersect_delay_16_y_mant <= origin_delayed_intersect_delay_15_y_mant;
    origin_delayed_intersect_delay_16_z_sign <= origin_delayed_intersect_delay_15_z_sign;
    origin_delayed_intersect_delay_16_z_exp <= origin_delayed_intersect_delay_15_z_exp;
    origin_delayed_intersect_delay_16_z_mant <= origin_delayed_intersect_delay_15_z_mant;
    origin_delayed_intersect_delay_17_x_sign <= origin_delayed_intersect_delay_16_x_sign;
    origin_delayed_intersect_delay_17_x_exp <= origin_delayed_intersect_delay_16_x_exp;
    origin_delayed_intersect_delay_17_x_mant <= origin_delayed_intersect_delay_16_x_mant;
    origin_delayed_intersect_delay_17_y_sign <= origin_delayed_intersect_delay_16_y_sign;
    origin_delayed_intersect_delay_17_y_exp <= origin_delayed_intersect_delay_16_y_exp;
    origin_delayed_intersect_delay_17_y_mant <= origin_delayed_intersect_delay_16_y_mant;
    origin_delayed_intersect_delay_17_z_sign <= origin_delayed_intersect_delay_16_z_sign;
    origin_delayed_intersect_delay_17_z_exp <= origin_delayed_intersect_delay_16_z_exp;
    origin_delayed_intersect_delay_17_z_mant <= origin_delayed_intersect_delay_16_z_mant;
    origin_delayed_intersect_delay_18_x_sign <= origin_delayed_intersect_delay_17_x_sign;
    origin_delayed_intersect_delay_18_x_exp <= origin_delayed_intersect_delay_17_x_exp;
    origin_delayed_intersect_delay_18_x_mant <= origin_delayed_intersect_delay_17_x_mant;
    origin_delayed_intersect_delay_18_y_sign <= origin_delayed_intersect_delay_17_y_sign;
    origin_delayed_intersect_delay_18_y_exp <= origin_delayed_intersect_delay_17_y_exp;
    origin_delayed_intersect_delay_18_y_mant <= origin_delayed_intersect_delay_17_y_mant;
    origin_delayed_intersect_delay_18_z_sign <= origin_delayed_intersect_delay_17_z_sign;
    origin_delayed_intersect_delay_18_z_exp <= origin_delayed_intersect_delay_17_z_exp;
    origin_delayed_intersect_delay_18_z_mant <= origin_delayed_intersect_delay_17_z_mant;
    origin_delayed_intersect_delay_19_x_sign <= origin_delayed_intersect_delay_18_x_sign;
    origin_delayed_intersect_delay_19_x_exp <= origin_delayed_intersect_delay_18_x_exp;
    origin_delayed_intersect_delay_19_x_mant <= origin_delayed_intersect_delay_18_x_mant;
    origin_delayed_intersect_delay_19_y_sign <= origin_delayed_intersect_delay_18_y_sign;
    origin_delayed_intersect_delay_19_y_exp <= origin_delayed_intersect_delay_18_y_exp;
    origin_delayed_intersect_delay_19_y_mant <= origin_delayed_intersect_delay_18_y_mant;
    origin_delayed_intersect_delay_19_z_sign <= origin_delayed_intersect_delay_18_z_sign;
    origin_delayed_intersect_delay_19_z_exp <= origin_delayed_intersect_delay_18_z_exp;
    origin_delayed_intersect_delay_19_z_mant <= origin_delayed_intersect_delay_18_z_mant;
    origin_delayed_intersect_delay_20_x_sign <= origin_delayed_intersect_delay_19_x_sign;
    origin_delayed_intersect_delay_20_x_exp <= origin_delayed_intersect_delay_19_x_exp;
    origin_delayed_intersect_delay_20_x_mant <= origin_delayed_intersect_delay_19_x_mant;
    origin_delayed_intersect_delay_20_y_sign <= origin_delayed_intersect_delay_19_y_sign;
    origin_delayed_intersect_delay_20_y_exp <= origin_delayed_intersect_delay_19_y_exp;
    origin_delayed_intersect_delay_20_y_mant <= origin_delayed_intersect_delay_19_y_mant;
    origin_delayed_intersect_delay_20_z_sign <= origin_delayed_intersect_delay_19_z_sign;
    origin_delayed_intersect_delay_20_z_exp <= origin_delayed_intersect_delay_19_z_exp;
    origin_delayed_intersect_delay_20_z_mant <= origin_delayed_intersect_delay_19_z_mant;
    origin_delayed_intersect_delay_21_x_sign <= origin_delayed_intersect_delay_20_x_sign;
    origin_delayed_intersect_delay_21_x_exp <= origin_delayed_intersect_delay_20_x_exp;
    origin_delayed_intersect_delay_21_x_mant <= origin_delayed_intersect_delay_20_x_mant;
    origin_delayed_intersect_delay_21_y_sign <= origin_delayed_intersect_delay_20_y_sign;
    origin_delayed_intersect_delay_21_y_exp <= origin_delayed_intersect_delay_20_y_exp;
    origin_delayed_intersect_delay_21_y_mant <= origin_delayed_intersect_delay_20_y_mant;
    origin_delayed_intersect_delay_21_z_sign <= origin_delayed_intersect_delay_20_z_sign;
    origin_delayed_intersect_delay_21_z_exp <= origin_delayed_intersect_delay_20_z_exp;
    origin_delayed_intersect_delay_21_z_mant <= origin_delayed_intersect_delay_20_z_mant;
    origin_delayed_intersect_delay_22_x_sign <= origin_delayed_intersect_delay_21_x_sign;
    origin_delayed_intersect_delay_22_x_exp <= origin_delayed_intersect_delay_21_x_exp;
    origin_delayed_intersect_delay_22_x_mant <= origin_delayed_intersect_delay_21_x_mant;
    origin_delayed_intersect_delay_22_y_sign <= origin_delayed_intersect_delay_21_y_sign;
    origin_delayed_intersect_delay_22_y_exp <= origin_delayed_intersect_delay_21_y_exp;
    origin_delayed_intersect_delay_22_y_mant <= origin_delayed_intersect_delay_21_y_mant;
    origin_delayed_intersect_delay_22_z_sign <= origin_delayed_intersect_delay_21_z_sign;
    origin_delayed_intersect_delay_22_z_exp <= origin_delayed_intersect_delay_21_z_exp;
    origin_delayed_intersect_delay_22_z_mant <= origin_delayed_intersect_delay_21_z_mant;
    origin_delayed_intersect_delay_23_x_sign <= origin_delayed_intersect_delay_22_x_sign;
    origin_delayed_intersect_delay_23_x_exp <= origin_delayed_intersect_delay_22_x_exp;
    origin_delayed_intersect_delay_23_x_mant <= origin_delayed_intersect_delay_22_x_mant;
    origin_delayed_intersect_delay_23_y_sign <= origin_delayed_intersect_delay_22_y_sign;
    origin_delayed_intersect_delay_23_y_exp <= origin_delayed_intersect_delay_22_y_exp;
    origin_delayed_intersect_delay_23_y_mant <= origin_delayed_intersect_delay_22_y_mant;
    origin_delayed_intersect_delay_23_z_sign <= origin_delayed_intersect_delay_22_z_sign;
    origin_delayed_intersect_delay_23_z_exp <= origin_delayed_intersect_delay_22_z_exp;
    origin_delayed_intersect_delay_23_z_mant <= origin_delayed_intersect_delay_22_z_mant;
    origin_delayed_intersect_delay_24_x_sign <= origin_delayed_intersect_delay_23_x_sign;
    origin_delayed_intersect_delay_24_x_exp <= origin_delayed_intersect_delay_23_x_exp;
    origin_delayed_intersect_delay_24_x_mant <= origin_delayed_intersect_delay_23_x_mant;
    origin_delayed_intersect_delay_24_y_sign <= origin_delayed_intersect_delay_23_y_sign;
    origin_delayed_intersect_delay_24_y_exp <= origin_delayed_intersect_delay_23_y_exp;
    origin_delayed_intersect_delay_24_y_mant <= origin_delayed_intersect_delay_23_y_mant;
    origin_delayed_intersect_delay_24_z_sign <= origin_delayed_intersect_delay_23_z_sign;
    origin_delayed_intersect_delay_24_z_exp <= origin_delayed_intersect_delay_23_z_exp;
    origin_delayed_intersect_delay_24_z_mant <= origin_delayed_intersect_delay_23_z_mant;
    origin_delayed_intersect_delay_25_x_sign <= origin_delayed_intersect_delay_24_x_sign;
    origin_delayed_intersect_delay_25_x_exp <= origin_delayed_intersect_delay_24_x_exp;
    origin_delayed_intersect_delay_25_x_mant <= origin_delayed_intersect_delay_24_x_mant;
    origin_delayed_intersect_delay_25_y_sign <= origin_delayed_intersect_delay_24_y_sign;
    origin_delayed_intersect_delay_25_y_exp <= origin_delayed_intersect_delay_24_y_exp;
    origin_delayed_intersect_delay_25_y_mant <= origin_delayed_intersect_delay_24_y_mant;
    origin_delayed_intersect_delay_25_z_sign <= origin_delayed_intersect_delay_24_z_sign;
    origin_delayed_intersect_delay_25_z_exp <= origin_delayed_intersect_delay_24_z_exp;
    origin_delayed_intersect_delay_25_z_mant <= origin_delayed_intersect_delay_24_z_mant;
    origin_delayed_result_x_sign <= origin_delayed_intersect_delay_25_x_sign;
    origin_delayed_result_x_exp <= origin_delayed_intersect_delay_25_x_exp;
    origin_delayed_result_x_mant <= origin_delayed_intersect_delay_25_x_mant;
    origin_delayed_result_y_sign <= origin_delayed_intersect_delay_25_y_sign;
    origin_delayed_result_y_exp <= origin_delayed_intersect_delay_25_y_exp;
    origin_delayed_result_y_mant <= origin_delayed_intersect_delay_25_y_mant;
    origin_delayed_result_z_sign <= origin_delayed_intersect_delay_25_z_sign;
    origin_delayed_result_z_exp <= origin_delayed_intersect_delay_25_z_exp;
    origin_delayed_result_z_mant <= origin_delayed_intersect_delay_25_z_mant;
    dir_delayed_reflect_dir_delay_1_x_sign <= dir_delayed_reflect_dir_x_sign;
    dir_delayed_reflect_dir_delay_1_x_exp <= dir_delayed_reflect_dir_x_exp;
    dir_delayed_reflect_dir_delay_1_x_mant <= dir_delayed_reflect_dir_x_mant;
    dir_delayed_reflect_dir_delay_1_y_sign <= dir_delayed_reflect_dir_y_sign;
    dir_delayed_reflect_dir_delay_1_y_exp <= dir_delayed_reflect_dir_y_exp;
    dir_delayed_reflect_dir_delay_1_y_mant <= dir_delayed_reflect_dir_y_mant;
    dir_delayed_reflect_dir_delay_1_z_sign <= dir_delayed_reflect_dir_z_sign;
    dir_delayed_reflect_dir_delay_1_z_exp <= dir_delayed_reflect_dir_z_exp;
    dir_delayed_reflect_dir_delay_1_z_mant <= dir_delayed_reflect_dir_z_mant;
    dir_delayed_result_x_sign <= dir_delayed_reflect_dir_delay_1_x_sign;
    dir_delayed_result_x_exp <= dir_delayed_reflect_dir_delay_1_x_exp;
    dir_delayed_result_x_mant <= dir_delayed_reflect_dir_delay_1_x_mant;
    dir_delayed_result_y_sign <= dir_delayed_reflect_dir_delay_1_y_sign;
    dir_delayed_result_y_exp <= dir_delayed_reflect_dir_delay_1_y_exp;
    dir_delayed_result_y_mant <= dir_delayed_reflect_dir_delay_1_y_mant;
    dir_delayed_result_z_sign <= dir_delayed_reflect_dir_delay_1_z_sign;
    dir_delayed_result_z_exp <= dir_delayed_reflect_dir_delay_1_z_exp;
    dir_delayed_result_z_mant <= dir_delayed_reflect_dir_delay_1_z_mant;
  end

endmodule

module PlaneIntersect (
      input   io_op_vld,
      input   io_plane_origin_x_sign,
      input  [5:0] io_plane_origin_x_exp,
      input  [12:0] io_plane_origin_x_mant,
      input   io_plane_origin_y_sign,
      input  [5:0] io_plane_origin_y_exp,
      input  [12:0] io_plane_origin_y_mant,
      input   io_plane_origin_z_sign,
      input  [5:0] io_plane_origin_z_exp,
      input  [12:0] io_plane_origin_z_mant,
      input   io_plane_normal_x_sign,
      input  [5:0] io_plane_normal_x_exp,
      input  [12:0] io_plane_normal_x_mant,
      input   io_plane_normal_y_sign,
      input  [5:0] io_plane_normal_y_exp,
      input  [12:0] io_plane_normal_y_mant,
      input   io_plane_normal_z_sign,
      input  [5:0] io_plane_normal_z_exp,
      input  [12:0] io_plane_normal_z_mant,
      input   io_ray_origin_x_sign,
      input  [5:0] io_ray_origin_x_exp,
      input  [12:0] io_ray_origin_x_mant,
      input   io_ray_origin_y_sign,
      input  [5:0] io_ray_origin_y_exp,
      input  [12:0] io_ray_origin_y_mant,
      input   io_ray_origin_z_sign,
      input  [5:0] io_ray_origin_z_exp,
      input  [12:0] io_ray_origin_z_mant,
      input   io_ray_direction_x_sign,
      input  [5:0] io_ray_direction_x_exp,
      input  [12:0] io_ray_direction_x_mant,
      input   io_ray_direction_y_sign,
      input  [5:0] io_ray_direction_y_exp,
      input  [12:0] io_ray_direction_y_mant,
      input   io_ray_direction_z_sign,
      input  [5:0] io_ray_direction_z_exp,
      input  [12:0] io_ray_direction_z_mant,
      output  io_result_vld,
      output  io_result_intersects,
      output  io_result_t_sign,
      output [5:0] io_result_t_exp,
      output [12:0] io_result_t_mant,
      output  io_result_intersection_x_sign,
      output [5:0] io_result_intersection_x_exp,
      output [12:0] io_result_intersection_x_mant,
      output  io_result_intersection_y_sign,
      output [5:0] io_result_intersection_y_exp,
      output [12:0] io_result_intersection_y_mant,
      output  io_result_intersection_z_sign,
      output [5:0] io_result_intersection_z_exp,
      output [12:0] io_result_intersection_z_mant,
      input   clk,
      input   reset);
  wire  u_dot_norm_dir_io_result_vld;
  wire  u_dot_norm_dir_io_result_sign;
  wire [5:0] u_dot_norm_dir_io_result_exp;
  wire [12:0] u_dot_norm_dir_io_result_mant;
  wire  u_p0r0_io_result_vld;
  wire  u_p0r0_io_result_x_sign;
  wire [5:0] u_p0r0_io_result_x_exp;
  wire [12:0] u_p0r0_io_result_x_mant;
  wire  u_p0r0_io_result_y_sign;
  wire [5:0] u_p0r0_io_result_y_exp;
  wire [12:0] u_p0r0_io_result_y_mant;
  wire  u_p0r0_io_result_z_sign;
  wire [5:0] u_p0r0_io_result_z_exp;
  wire [12:0] u_p0r0_io_result_z_mant;
  wire  u_dot_p0r0_norm_io_result_vld;
  wire  u_dot_p0r0_norm_io_result_sign;
  wire [5:0] u_dot_p0r0_norm_io_result_exp;
  wire [12:0] u_dot_p0r0_norm_io_result_mant;
  wire  u_div_p0r0_dot_norm_denom_io_result_vld;
  wire  u_div_p0r0_dot_norm_denom_io_result_sign;
  wire [5:0] u_div_p0r0_dot_norm_denom_io_result_exp;
  wire [12:0] u_div_p0r0_dot_norm_denom_io_result_mant;
  wire  u_intersection_io_result_vld;
  wire  u_intersection_io_result_x_sign;
  wire [5:0] u_intersection_io_result_x_exp;
  wire [12:0] u_intersection_io_result_x_mant;
  wire  u_intersection_io_result_y_sign;
  wire [5:0] u_intersection_io_result_y_exp;
  wire [12:0] u_intersection_io_result_y_mant;
  wire  u_intersection_io_result_z_sign;
  wire [5:0] u_intersection_io_result_z_exp;
  wire [12:0] u_intersection_io_result_z_mant;
  wire  denom_vld;
  wire  denom_sign;
  wire [5:0] denom_exp;
  wire [12:0] denom_mant;
  reg  intersects_par_vld;
  reg [5:0] denom_exp_regNext;
  wire  intersects_par;
  wire  p0r0_vld;
  wire  p0r0_x_sign;
  wire [5:0] p0r0_x_exp;
  wire [12:0] p0r0_x_mant;
  wire  p0r0_y_sign;
  wire [5:0] p0r0_y_exp;
  wire [12:0] p0r0_y_mant;
  wire  p0r0_z_sign;
  wire [5:0] p0r0_z_exp;
  wire [12:0] p0r0_z_mant;
  reg  io_plane_normal_delay_1_x_sign;
  reg [5:0] io_plane_normal_delay_1_x_exp;
  reg [12:0] io_plane_normal_delay_1_x_mant;
  reg  io_plane_normal_delay_1_y_sign;
  reg [5:0] io_plane_normal_delay_1_y_exp;
  reg [12:0] io_plane_normal_delay_1_y_mant;
  reg  io_plane_normal_delay_1_z_sign;
  reg [5:0] io_plane_normal_delay_1_z_exp;
  reg [12:0] io_plane_normal_delay_1_z_mant;
  reg  plane_normal_delayed_x_sign;
  reg [5:0] plane_normal_delayed_x_exp;
  reg [12:0] plane_normal_delayed_x_mant;
  reg  plane_normal_delayed_y_sign;
  reg [5:0] plane_normal_delayed_y_exp;
  reg [12:0] plane_normal_delayed_y_mant;
  reg  plane_normal_delayed_z_sign;
  reg [5:0] plane_normal_delayed_z_exp;
  reg [12:0] plane_normal_delayed_z_mant;
  wire  p0r0_dot_norm_vld;
  wire  p0r0_dot_norm_sign;
  wire [5:0] p0r0_dot_norm_exp;
  wire [12:0] p0r0_dot_norm_mant;
  wire  p0r0_dot_norm_delayed_sign;
  wire [5:0] p0r0_dot_norm_delayed_exp;
  wire [12:0] p0r0_dot_norm_delayed_mant;
  wire  denom_delayed_sign;
  wire [5:0] denom_delayed_exp;
  wire [12:0] denom_delayed_mant;
  wire  denom_delayed_vld;
  reg  denom_delay_1_sign;
  reg [5:0] denom_delay_1_exp;
  reg [12:0] denom_delay_1_mant;
  reg  denom_delay_2_sign;
  reg [5:0] denom_delay_2_exp;
  reg [12:0] denom_delay_2_mant;
  wire  t_vld;
  wire  t_sign;
  wire [5:0] t_exp;
  wire [12:0] t_mant;
  reg  t_vld_p1;
  reg  t_p1_sign;
  reg [5:0] t_p1_exp;
  reg [12:0] t_p1_mant;
  reg  intersects_par_delay_1;
  reg  intersects_par_delay_2;
  reg  intersects_par_delay_3;
  reg  intersects_par_delay_4;
  reg  intersects_par_delay_5;
  reg  intersects_par_delay_6;
  reg  intersects_par_delay_7;
  reg  intersects_par_delayed;
  wire  intersects_t_gt0;
  reg  io_ray_direction_delay_1_x_sign;
  reg [5:0] io_ray_direction_delay_1_x_exp;
  reg [12:0] io_ray_direction_delay_1_x_mant;
  reg  io_ray_direction_delay_1_y_sign;
  reg [5:0] io_ray_direction_delay_1_y_exp;
  reg [12:0] io_ray_direction_delay_1_y_mant;
  reg  io_ray_direction_delay_1_z_sign;
  reg [5:0] io_ray_direction_delay_1_z_exp;
  reg [12:0] io_ray_direction_delay_1_z_mant;
  reg  io_ray_direction_delay_2_x_sign;
  reg [5:0] io_ray_direction_delay_2_x_exp;
  reg [12:0] io_ray_direction_delay_2_x_mant;
  reg  io_ray_direction_delay_2_y_sign;
  reg [5:0] io_ray_direction_delay_2_y_exp;
  reg [12:0] io_ray_direction_delay_2_y_mant;
  reg  io_ray_direction_delay_2_z_sign;
  reg [5:0] io_ray_direction_delay_2_z_exp;
  reg [12:0] io_ray_direction_delay_2_z_mant;
  reg  io_ray_direction_delay_3_x_sign;
  reg [5:0] io_ray_direction_delay_3_x_exp;
  reg [12:0] io_ray_direction_delay_3_x_mant;
  reg  io_ray_direction_delay_3_y_sign;
  reg [5:0] io_ray_direction_delay_3_y_exp;
  reg [12:0] io_ray_direction_delay_3_y_mant;
  reg  io_ray_direction_delay_3_z_sign;
  reg [5:0] io_ray_direction_delay_3_z_exp;
  reg [12:0] io_ray_direction_delay_3_z_mant;
  reg  io_ray_direction_delay_4_x_sign;
  reg [5:0] io_ray_direction_delay_4_x_exp;
  reg [12:0] io_ray_direction_delay_4_x_mant;
  reg  io_ray_direction_delay_4_y_sign;
  reg [5:0] io_ray_direction_delay_4_y_exp;
  reg [12:0] io_ray_direction_delay_4_y_mant;
  reg  io_ray_direction_delay_4_z_sign;
  reg [5:0] io_ray_direction_delay_4_z_exp;
  reg [12:0] io_ray_direction_delay_4_z_mant;
  reg  io_ray_direction_delay_5_x_sign;
  reg [5:0] io_ray_direction_delay_5_x_exp;
  reg [12:0] io_ray_direction_delay_5_x_mant;
  reg  io_ray_direction_delay_5_y_sign;
  reg [5:0] io_ray_direction_delay_5_y_exp;
  reg [12:0] io_ray_direction_delay_5_y_mant;
  reg  io_ray_direction_delay_5_z_sign;
  reg [5:0] io_ray_direction_delay_5_z_exp;
  reg [12:0] io_ray_direction_delay_5_z_mant;
  reg  io_ray_direction_delay_6_x_sign;
  reg [5:0] io_ray_direction_delay_6_x_exp;
  reg [12:0] io_ray_direction_delay_6_x_mant;
  reg  io_ray_direction_delay_6_y_sign;
  reg [5:0] io_ray_direction_delay_6_y_exp;
  reg [12:0] io_ray_direction_delay_6_y_mant;
  reg  io_ray_direction_delay_6_z_sign;
  reg [5:0] io_ray_direction_delay_6_z_exp;
  reg [12:0] io_ray_direction_delay_6_z_mant;
  reg  io_ray_direction_delay_7_x_sign;
  reg [5:0] io_ray_direction_delay_7_x_exp;
  reg [12:0] io_ray_direction_delay_7_x_mant;
  reg  io_ray_direction_delay_7_y_sign;
  reg [5:0] io_ray_direction_delay_7_y_exp;
  reg [12:0] io_ray_direction_delay_7_y_mant;
  reg  io_ray_direction_delay_7_z_sign;
  reg [5:0] io_ray_direction_delay_7_z_exp;
  reg [12:0] io_ray_direction_delay_7_z_mant;
  reg  io_ray_direction_delay_8_x_sign;
  reg [5:0] io_ray_direction_delay_8_x_exp;
  reg [12:0] io_ray_direction_delay_8_x_mant;
  reg  io_ray_direction_delay_8_y_sign;
  reg [5:0] io_ray_direction_delay_8_y_exp;
  reg [12:0] io_ray_direction_delay_8_y_mant;
  reg  io_ray_direction_delay_8_z_sign;
  reg [5:0] io_ray_direction_delay_8_z_exp;
  reg [12:0] io_ray_direction_delay_8_z_mant;
  reg  io_ray_direction_delay_9_x_sign;
  reg [5:0] io_ray_direction_delay_9_x_exp;
  reg [12:0] io_ray_direction_delay_9_x_mant;
  reg  io_ray_direction_delay_9_y_sign;
  reg [5:0] io_ray_direction_delay_9_y_exp;
  reg [12:0] io_ray_direction_delay_9_y_mant;
  reg  io_ray_direction_delay_9_z_sign;
  reg [5:0] io_ray_direction_delay_9_z_exp;
  reg [12:0] io_ray_direction_delay_9_z_mant;
  reg  io_ray_direction_delay_10_x_sign;
  reg [5:0] io_ray_direction_delay_10_x_exp;
  reg [12:0] io_ray_direction_delay_10_x_mant;
  reg  io_ray_direction_delay_10_y_sign;
  reg [5:0] io_ray_direction_delay_10_y_exp;
  reg [12:0] io_ray_direction_delay_10_y_mant;
  reg  io_ray_direction_delay_10_z_sign;
  reg [5:0] io_ray_direction_delay_10_z_exp;
  reg [12:0] io_ray_direction_delay_10_z_mant;
  reg  io_ray_direction_delay_11_x_sign;
  reg [5:0] io_ray_direction_delay_11_x_exp;
  reg [12:0] io_ray_direction_delay_11_x_mant;
  reg  io_ray_direction_delay_11_y_sign;
  reg [5:0] io_ray_direction_delay_11_y_exp;
  reg [12:0] io_ray_direction_delay_11_y_mant;
  reg  io_ray_direction_delay_11_z_sign;
  reg [5:0] io_ray_direction_delay_11_z_exp;
  reg [12:0] io_ray_direction_delay_11_z_mant;
  reg  io_ray_direction_delay_12_x_sign;
  reg [5:0] io_ray_direction_delay_12_x_exp;
  reg [12:0] io_ray_direction_delay_12_x_mant;
  reg  io_ray_direction_delay_12_y_sign;
  reg [5:0] io_ray_direction_delay_12_y_exp;
  reg [12:0] io_ray_direction_delay_12_y_mant;
  reg  io_ray_direction_delay_12_z_sign;
  reg [5:0] io_ray_direction_delay_12_z_exp;
  reg [12:0] io_ray_direction_delay_12_z_mant;
  reg  io_ray_direction_delay_13_x_sign;
  reg [5:0] io_ray_direction_delay_13_x_exp;
  reg [12:0] io_ray_direction_delay_13_x_mant;
  reg  io_ray_direction_delay_13_y_sign;
  reg [5:0] io_ray_direction_delay_13_y_exp;
  reg [12:0] io_ray_direction_delay_13_y_mant;
  reg  io_ray_direction_delay_13_z_sign;
  reg [5:0] io_ray_direction_delay_13_z_exp;
  reg [12:0] io_ray_direction_delay_13_z_mant;
  reg  dir_delayed_x_sign;
  reg [5:0] dir_delayed_x_exp;
  reg [12:0] dir_delayed_x_mant;
  reg  dir_delayed_y_sign;
  reg [5:0] dir_delayed_y_exp;
  reg [12:0] dir_delayed_y_mant;
  reg  dir_delayed_z_sign;
  reg [5:0] dir_delayed_z_exp;
  reg [12:0] dir_delayed_z_mant;
  reg  io_ray_origin_delay_1_x_sign;
  reg [5:0] io_ray_origin_delay_1_x_exp;
  reg [12:0] io_ray_origin_delay_1_x_mant;
  reg  io_ray_origin_delay_1_y_sign;
  reg [5:0] io_ray_origin_delay_1_y_exp;
  reg [12:0] io_ray_origin_delay_1_y_mant;
  reg  io_ray_origin_delay_1_z_sign;
  reg [5:0] io_ray_origin_delay_1_z_exp;
  reg [12:0] io_ray_origin_delay_1_z_mant;
  reg  io_ray_origin_delay_2_x_sign;
  reg [5:0] io_ray_origin_delay_2_x_exp;
  reg [12:0] io_ray_origin_delay_2_x_mant;
  reg  io_ray_origin_delay_2_y_sign;
  reg [5:0] io_ray_origin_delay_2_y_exp;
  reg [12:0] io_ray_origin_delay_2_y_mant;
  reg  io_ray_origin_delay_2_z_sign;
  reg [5:0] io_ray_origin_delay_2_z_exp;
  reg [12:0] io_ray_origin_delay_2_z_mant;
  reg  io_ray_origin_delay_3_x_sign;
  reg [5:0] io_ray_origin_delay_3_x_exp;
  reg [12:0] io_ray_origin_delay_3_x_mant;
  reg  io_ray_origin_delay_3_y_sign;
  reg [5:0] io_ray_origin_delay_3_y_exp;
  reg [12:0] io_ray_origin_delay_3_y_mant;
  reg  io_ray_origin_delay_3_z_sign;
  reg [5:0] io_ray_origin_delay_3_z_exp;
  reg [12:0] io_ray_origin_delay_3_z_mant;
  reg  io_ray_origin_delay_4_x_sign;
  reg [5:0] io_ray_origin_delay_4_x_exp;
  reg [12:0] io_ray_origin_delay_4_x_mant;
  reg  io_ray_origin_delay_4_y_sign;
  reg [5:0] io_ray_origin_delay_4_y_exp;
  reg [12:0] io_ray_origin_delay_4_y_mant;
  reg  io_ray_origin_delay_4_z_sign;
  reg [5:0] io_ray_origin_delay_4_z_exp;
  reg [12:0] io_ray_origin_delay_4_z_mant;
  reg  io_ray_origin_delay_5_x_sign;
  reg [5:0] io_ray_origin_delay_5_x_exp;
  reg [12:0] io_ray_origin_delay_5_x_mant;
  reg  io_ray_origin_delay_5_y_sign;
  reg [5:0] io_ray_origin_delay_5_y_exp;
  reg [12:0] io_ray_origin_delay_5_y_mant;
  reg  io_ray_origin_delay_5_z_sign;
  reg [5:0] io_ray_origin_delay_5_z_exp;
  reg [12:0] io_ray_origin_delay_5_z_mant;
  reg  io_ray_origin_delay_6_x_sign;
  reg [5:0] io_ray_origin_delay_6_x_exp;
  reg [12:0] io_ray_origin_delay_6_x_mant;
  reg  io_ray_origin_delay_6_y_sign;
  reg [5:0] io_ray_origin_delay_6_y_exp;
  reg [12:0] io_ray_origin_delay_6_y_mant;
  reg  io_ray_origin_delay_6_z_sign;
  reg [5:0] io_ray_origin_delay_6_z_exp;
  reg [12:0] io_ray_origin_delay_6_z_mant;
  reg  io_ray_origin_delay_7_x_sign;
  reg [5:0] io_ray_origin_delay_7_x_exp;
  reg [12:0] io_ray_origin_delay_7_x_mant;
  reg  io_ray_origin_delay_7_y_sign;
  reg [5:0] io_ray_origin_delay_7_y_exp;
  reg [12:0] io_ray_origin_delay_7_y_mant;
  reg  io_ray_origin_delay_7_z_sign;
  reg [5:0] io_ray_origin_delay_7_z_exp;
  reg [12:0] io_ray_origin_delay_7_z_mant;
  reg  io_ray_origin_delay_8_x_sign;
  reg [5:0] io_ray_origin_delay_8_x_exp;
  reg [12:0] io_ray_origin_delay_8_x_mant;
  reg  io_ray_origin_delay_8_y_sign;
  reg [5:0] io_ray_origin_delay_8_y_exp;
  reg [12:0] io_ray_origin_delay_8_y_mant;
  reg  io_ray_origin_delay_8_z_sign;
  reg [5:0] io_ray_origin_delay_8_z_exp;
  reg [12:0] io_ray_origin_delay_8_z_mant;
  reg  io_ray_origin_delay_9_x_sign;
  reg [5:0] io_ray_origin_delay_9_x_exp;
  reg [12:0] io_ray_origin_delay_9_x_mant;
  reg  io_ray_origin_delay_9_y_sign;
  reg [5:0] io_ray_origin_delay_9_y_exp;
  reg [12:0] io_ray_origin_delay_9_y_mant;
  reg  io_ray_origin_delay_9_z_sign;
  reg [5:0] io_ray_origin_delay_9_z_exp;
  reg [12:0] io_ray_origin_delay_9_z_mant;
  reg  io_ray_origin_delay_10_x_sign;
  reg [5:0] io_ray_origin_delay_10_x_exp;
  reg [12:0] io_ray_origin_delay_10_x_mant;
  reg  io_ray_origin_delay_10_y_sign;
  reg [5:0] io_ray_origin_delay_10_y_exp;
  reg [12:0] io_ray_origin_delay_10_y_mant;
  reg  io_ray_origin_delay_10_z_sign;
  reg [5:0] io_ray_origin_delay_10_z_exp;
  reg [12:0] io_ray_origin_delay_10_z_mant;
  reg  io_ray_origin_delay_11_x_sign;
  reg [5:0] io_ray_origin_delay_11_x_exp;
  reg [12:0] io_ray_origin_delay_11_x_mant;
  reg  io_ray_origin_delay_11_y_sign;
  reg [5:0] io_ray_origin_delay_11_y_exp;
  reg [12:0] io_ray_origin_delay_11_y_mant;
  reg  io_ray_origin_delay_11_z_sign;
  reg [5:0] io_ray_origin_delay_11_z_exp;
  reg [12:0] io_ray_origin_delay_11_z_mant;
  reg  io_ray_origin_delay_12_x_sign;
  reg [5:0] io_ray_origin_delay_12_x_exp;
  reg [12:0] io_ray_origin_delay_12_x_mant;
  reg  io_ray_origin_delay_12_y_sign;
  reg [5:0] io_ray_origin_delay_12_y_exp;
  reg [12:0] io_ray_origin_delay_12_y_mant;
  reg  io_ray_origin_delay_12_z_sign;
  reg [5:0] io_ray_origin_delay_12_z_exp;
  reg [12:0] io_ray_origin_delay_12_z_mant;
  reg  io_ray_origin_delay_13_x_sign;
  reg [5:0] io_ray_origin_delay_13_x_exp;
  reg [12:0] io_ray_origin_delay_13_x_mant;
  reg  io_ray_origin_delay_13_y_sign;
  reg [5:0] io_ray_origin_delay_13_y_exp;
  reg [12:0] io_ray_origin_delay_13_y_mant;
  reg  io_ray_origin_delay_13_z_sign;
  reg [5:0] io_ray_origin_delay_13_z_exp;
  reg [12:0] io_ray_origin_delay_13_z_mant;
  reg  origin_delayed_x_sign;
  reg [5:0] origin_delayed_x_exp;
  reg [12:0] origin_delayed_x_mant;
  reg  origin_delayed_y_sign;
  reg [5:0] origin_delayed_y_exp;
  reg [12:0] origin_delayed_y_mant;
  reg  origin_delayed_z_sign;
  reg [5:0] origin_delayed_z_exp;
  reg [12:0] origin_delayed_z_mant;
  wire  intersection_vld;
  wire  intersection_x_sign;
  wire [5:0] intersection_x_exp;
  wire [12:0] intersection_x_mant;
  wire  intersection_y_sign;
  wire [5:0] intersection_y_exp;
  wire [12:0] intersection_y_mant;
  wire  intersection_z_sign;
  wire [5:0] intersection_z_exp;
  wire [12:0] intersection_z_mant;
  reg  t_delay_1_sign;
  reg [5:0] t_delay_1_exp;
  reg [12:0] t_delay_1_mant;
  reg  t_delay_2_sign;
  reg [5:0] t_delay_2_exp;
  reg [12:0] t_delay_2_mant;
  reg  t_delay_3_sign;
  reg [5:0] t_delay_3_exp;
  reg [12:0] t_delay_3_mant;
  reg  t_delayed_sign;
  reg [5:0] t_delayed_exp;
  reg [12:0] t_delayed_mant;
  reg  intersects_t_gt0_delay_1;
  reg  intersects_t_gt0_delay_2;
  reg  intersects_t_gt0_delayed;
  DotProduct u_dot_norm_dir ( 
    .io_op_vld(io_op_vld),
    .io_op_a_x_sign(io_plane_normal_x_sign),
    .io_op_a_x_exp(io_plane_normal_x_exp),
    .io_op_a_x_mant(io_plane_normal_x_mant),
    .io_op_a_y_sign(io_plane_normal_y_sign),
    .io_op_a_y_exp(io_plane_normal_y_exp),
    .io_op_a_y_mant(io_plane_normal_y_mant),
    .io_op_a_z_sign(io_plane_normal_z_sign),
    .io_op_a_z_exp(io_plane_normal_z_exp),
    .io_op_a_z_mant(io_plane_normal_z_mant),
    .io_op_b_x_sign(io_ray_direction_x_sign),
    .io_op_b_x_exp(io_ray_direction_x_exp),
    .io_op_b_x_mant(io_ray_direction_x_mant),
    .io_op_b_y_sign(io_ray_direction_y_sign),
    .io_op_b_y_exp(io_ray_direction_y_exp),
    .io_op_b_y_mant(io_ray_direction_y_mant),
    .io_op_b_z_sign(io_ray_direction_z_sign),
    .io_op_b_z_exp(io_ray_direction_z_exp),
    .io_op_b_z_mant(io_ray_direction_z_mant),
    .io_result_vld(u_dot_norm_dir_io_result_vld),
    .io_result_sign(u_dot_norm_dir_io_result_sign),
    .io_result_exp(u_dot_norm_dir_io_result_exp),
    .io_result_mant(u_dot_norm_dir_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  SubVecVec u_p0r0 ( 
    .io_op_vld(io_op_vld),
    .io_op_a_x_sign(io_plane_origin_x_sign),
    .io_op_a_x_exp(io_plane_origin_x_exp),
    .io_op_a_x_mant(io_plane_origin_x_mant),
    .io_op_a_y_sign(io_plane_origin_y_sign),
    .io_op_a_y_exp(io_plane_origin_y_exp),
    .io_op_a_y_mant(io_plane_origin_y_mant),
    .io_op_a_z_sign(io_plane_origin_z_sign),
    .io_op_a_z_exp(io_plane_origin_z_exp),
    .io_op_a_z_mant(io_plane_origin_z_mant),
    .io_op_b_x_sign(io_ray_origin_x_sign),
    .io_op_b_x_exp(io_ray_origin_x_exp),
    .io_op_b_x_mant(io_ray_origin_x_mant),
    .io_op_b_y_sign(io_ray_origin_y_sign),
    .io_op_b_y_exp(io_ray_origin_y_exp),
    .io_op_b_y_mant(io_ray_origin_y_mant),
    .io_op_b_z_sign(io_ray_origin_z_sign),
    .io_op_b_z_exp(io_ray_origin_z_exp),
    .io_op_b_z_mant(io_ray_origin_z_mant),
    .io_result_vld(u_p0r0_io_result_vld),
    .io_result_x_sign(u_p0r0_io_result_x_sign),
    .io_result_x_exp(u_p0r0_io_result_x_exp),
    .io_result_x_mant(u_p0r0_io_result_x_mant),
    .io_result_y_sign(u_p0r0_io_result_y_sign),
    .io_result_y_exp(u_p0r0_io_result_y_exp),
    .io_result_y_mant(u_p0r0_io_result_y_mant),
    .io_result_z_sign(u_p0r0_io_result_z_sign),
    .io_result_z_exp(u_p0r0_io_result_z_exp),
    .io_result_z_mant(u_p0r0_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct u_dot_p0r0_norm ( 
    .io_op_vld(p0r0_vld),
    .io_op_a_x_sign(p0r0_x_sign),
    .io_op_a_x_exp(p0r0_x_exp),
    .io_op_a_x_mant(p0r0_x_mant),
    .io_op_a_y_sign(p0r0_y_sign),
    .io_op_a_y_exp(p0r0_y_exp),
    .io_op_a_y_mant(p0r0_y_mant),
    .io_op_a_z_sign(p0r0_z_sign),
    .io_op_a_z_exp(p0r0_z_exp),
    .io_op_a_z_mant(p0r0_z_mant),
    .io_op_b_x_sign(plane_normal_delayed_x_sign),
    .io_op_b_x_exp(plane_normal_delayed_x_exp),
    .io_op_b_x_mant(plane_normal_delayed_x_mant),
    .io_op_b_y_sign(plane_normal_delayed_y_sign),
    .io_op_b_y_exp(plane_normal_delayed_y_exp),
    .io_op_b_y_mant(plane_normal_delayed_y_mant),
    .io_op_b_z_sign(plane_normal_delayed_z_sign),
    .io_op_b_z_exp(plane_normal_delayed_z_exp),
    .io_op_b_z_mant(plane_normal_delayed_z_mant),
    .io_result_vld(u_dot_p0r0_norm_io_result_vld),
    .io_result_sign(u_dot_p0r0_norm_io_result_sign),
    .io_result_exp(u_dot_p0r0_norm_io_result_exp),
    .io_result_mant(u_dot_p0r0_norm_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxDiv u_div_p0r0_dot_norm_denom ( 
    .p0_vld(denom_delayed_vld),
    .op_a_p0_sign(p0r0_dot_norm_delayed_sign),
    .op_a_p0_exp(p0r0_dot_norm_delayed_exp),
    .op_a_p0_mant(p0r0_dot_norm_delayed_mant),
    .op_b_p0_sign(denom_delayed_sign),
    .op_b_p0_exp(denom_delayed_exp),
    .op_b_p0_mant(denom_delayed_mant),
    .io_result_vld(u_div_p0r0_dot_norm_denom_io_result_vld),
    .io_result_sign(u_div_p0r0_dot_norm_denom_io_result_sign),
    .io_result_exp(u_div_p0r0_dot_norm_denom_io_result_exp),
    .io_result_mant(u_div_p0r0_dot_norm_denom_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  Intersection u_intersection ( 
    .io_op_vld(t_vld),
    .io_ray_origin_x_sign(origin_delayed_x_sign),
    .io_ray_origin_x_exp(origin_delayed_x_exp),
    .io_ray_origin_x_mant(origin_delayed_x_mant),
    .io_ray_origin_y_sign(origin_delayed_y_sign),
    .io_ray_origin_y_exp(origin_delayed_y_exp),
    .io_ray_origin_y_mant(origin_delayed_y_mant),
    .io_ray_origin_z_sign(origin_delayed_z_sign),
    .io_ray_origin_z_exp(origin_delayed_z_exp),
    .io_ray_origin_z_mant(origin_delayed_z_mant),
    .io_ray_dir_x_sign(dir_delayed_x_sign),
    .io_ray_dir_x_exp(dir_delayed_x_exp),
    .io_ray_dir_x_mant(dir_delayed_x_mant),
    .io_ray_dir_y_sign(dir_delayed_y_sign),
    .io_ray_dir_y_exp(dir_delayed_y_exp),
    .io_ray_dir_y_mant(dir_delayed_y_mant),
    .io_ray_dir_z_sign(dir_delayed_z_sign),
    .io_ray_dir_z_exp(dir_delayed_z_exp),
    .io_ray_dir_z_mant(dir_delayed_z_mant),
    .io_t_sign(t_sign),
    .io_t_exp(t_exp),
    .io_t_mant(t_mant),
    .io_result_vld(u_intersection_io_result_vld),
    .io_result_x_sign(u_intersection_io_result_x_sign),
    .io_result_x_exp(u_intersection_io_result_x_exp),
    .io_result_x_mant(u_intersection_io_result_x_mant),
    .io_result_y_sign(u_intersection_io_result_y_sign),
    .io_result_y_exp(u_intersection_io_result_y_exp),
    .io_result_y_mant(u_intersection_io_result_y_mant),
    .io_result_z_sign(u_intersection_io_result_z_sign),
    .io_result_z_exp(u_intersection_io_result_z_exp),
    .io_result_z_mant(u_intersection_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign denom_vld = u_dot_norm_dir_io_result_vld;
  assign denom_sign = u_dot_norm_dir_io_result_sign;
  assign denom_exp = u_dot_norm_dir_io_result_exp;
  assign denom_mant = u_dot_norm_dir_io_result_mant;
  assign intersects_par = ((6'b000011) <= denom_exp_regNext);
  assign p0r0_vld = u_p0r0_io_result_vld;
  assign p0r0_x_sign = u_p0r0_io_result_x_sign;
  assign p0r0_x_exp = u_p0r0_io_result_x_exp;
  assign p0r0_x_mant = u_p0r0_io_result_x_mant;
  assign p0r0_y_sign = u_p0r0_io_result_y_sign;
  assign p0r0_y_exp = u_p0r0_io_result_y_exp;
  assign p0r0_y_mant = u_p0r0_io_result_y_mant;
  assign p0r0_z_sign = u_p0r0_io_result_z_sign;
  assign p0r0_z_exp = u_p0r0_io_result_z_exp;
  assign p0r0_z_mant = u_p0r0_io_result_z_mant;
  assign p0r0_dot_norm_vld = u_dot_p0r0_norm_io_result_vld;
  assign p0r0_dot_norm_sign = u_dot_p0r0_norm_io_result_sign;
  assign p0r0_dot_norm_exp = u_dot_p0r0_norm_io_result_exp;
  assign p0r0_dot_norm_mant = u_dot_p0r0_norm_io_result_mant;
  assign p0r0_dot_norm_delayed_sign = p0r0_dot_norm_sign;
  assign p0r0_dot_norm_delayed_exp = p0r0_dot_norm_exp;
  assign p0r0_dot_norm_delayed_mant = p0r0_dot_norm_mant;
  assign denom_delayed_sign = denom_delay_2_sign;
  assign denom_delayed_exp = denom_delay_2_exp;
  assign denom_delayed_mant = denom_delay_2_mant;
  assign denom_delayed_vld = p0r0_dot_norm_vld;
  assign t_vld = u_div_p0r0_dot_norm_denom_io_result_vld;
  assign t_sign = u_div_p0r0_dot_norm_denom_io_result_sign;
  assign t_exp = u_div_p0r0_dot_norm_denom_io_result_exp;
  assign t_mant = u_div_p0r0_dot_norm_denom_io_result_mant;
  assign intersects_t_gt0 = (intersects_par_delayed && (((! t_p1_sign) && (! ((t_p1_exp == (6'b111111)) && (t_p1_mant != (13'b0000000000000))))) && (! ((t_p1_exp == (6'b111111)) && (! (t_p1_mant != (13'b0000000000000)))))));
  assign intersection_vld = u_intersection_io_result_vld;
  assign intersection_x_sign = u_intersection_io_result_x_sign;
  assign intersection_x_exp = u_intersection_io_result_x_exp;
  assign intersection_x_mant = u_intersection_io_result_x_mant;
  assign intersection_y_sign = u_intersection_io_result_y_sign;
  assign intersection_y_exp = u_intersection_io_result_y_exp;
  assign intersection_y_mant = u_intersection_io_result_y_mant;
  assign intersection_z_sign = u_intersection_io_result_z_sign;
  assign intersection_z_exp = u_intersection_io_result_z_exp;
  assign intersection_z_mant = u_intersection_io_result_z_mant;
  assign io_result_vld = intersection_vld;
  assign io_result_intersects = intersects_t_gt0_delayed;
  assign io_result_t_sign = t_delayed_sign;
  assign io_result_t_exp = t_delayed_exp;
  assign io_result_t_mant = t_delayed_mant;
  assign io_result_intersection_x_sign = intersection_x_sign;
  assign io_result_intersection_x_exp = intersection_x_exp;
  assign io_result_intersection_x_mant = intersection_x_mant;
  assign io_result_intersection_y_sign = intersection_y_sign;
  assign io_result_intersection_y_exp = intersection_y_exp;
  assign io_result_intersection_y_mant = intersection_y_mant;
  assign io_result_intersection_z_sign = intersection_z_sign;
  assign io_result_intersection_z_exp = intersection_z_exp;
  assign io_result_intersection_z_mant = intersection_z_mant;
  always @ (posedge clk) begin
    intersects_par_vld <= denom_vld;
    denom_exp_regNext <= denom_exp;
    io_plane_normal_delay_1_x_sign <= io_plane_normal_x_sign;
    io_plane_normal_delay_1_x_exp <= io_plane_normal_x_exp;
    io_plane_normal_delay_1_x_mant <= io_plane_normal_x_mant;
    io_plane_normal_delay_1_y_sign <= io_plane_normal_y_sign;
    io_plane_normal_delay_1_y_exp <= io_plane_normal_y_exp;
    io_plane_normal_delay_1_y_mant <= io_plane_normal_y_mant;
    io_plane_normal_delay_1_z_sign <= io_plane_normal_z_sign;
    io_plane_normal_delay_1_z_exp <= io_plane_normal_z_exp;
    io_plane_normal_delay_1_z_mant <= io_plane_normal_z_mant;
    plane_normal_delayed_x_sign <= io_plane_normal_delay_1_x_sign;
    plane_normal_delayed_x_exp <= io_plane_normal_delay_1_x_exp;
    plane_normal_delayed_x_mant <= io_plane_normal_delay_1_x_mant;
    plane_normal_delayed_y_sign <= io_plane_normal_delay_1_y_sign;
    plane_normal_delayed_y_exp <= io_plane_normal_delay_1_y_exp;
    plane_normal_delayed_y_mant <= io_plane_normal_delay_1_y_mant;
    plane_normal_delayed_z_sign <= io_plane_normal_delay_1_z_sign;
    plane_normal_delayed_z_exp <= io_plane_normal_delay_1_z_exp;
    plane_normal_delayed_z_mant <= io_plane_normal_delay_1_z_mant;
    denom_delay_1_sign <= denom_sign;
    denom_delay_1_exp <= denom_exp;
    denom_delay_1_mant <= denom_mant;
    denom_delay_2_sign <= denom_delay_1_sign;
    denom_delay_2_exp <= denom_delay_1_exp;
    denom_delay_2_mant <= denom_delay_1_mant;
    t_vld_p1 <= t_vld;
    t_p1_sign <= t_sign;
    t_p1_exp <= t_exp;
    t_p1_mant <= t_mant;
    intersects_par_delay_1 <= intersects_par;
    intersects_par_delay_2 <= intersects_par_delay_1;
    intersects_par_delay_3 <= intersects_par_delay_2;
    intersects_par_delay_4 <= intersects_par_delay_3;
    intersects_par_delay_5 <= intersects_par_delay_4;
    intersects_par_delay_6 <= intersects_par_delay_5;
    intersects_par_delay_7 <= intersects_par_delay_6;
    intersects_par_delayed <= intersects_par_delay_7;
    io_ray_direction_delay_1_x_sign <= io_ray_direction_x_sign;
    io_ray_direction_delay_1_x_exp <= io_ray_direction_x_exp;
    io_ray_direction_delay_1_x_mant <= io_ray_direction_x_mant;
    io_ray_direction_delay_1_y_sign <= io_ray_direction_y_sign;
    io_ray_direction_delay_1_y_exp <= io_ray_direction_y_exp;
    io_ray_direction_delay_1_y_mant <= io_ray_direction_y_mant;
    io_ray_direction_delay_1_z_sign <= io_ray_direction_z_sign;
    io_ray_direction_delay_1_z_exp <= io_ray_direction_z_exp;
    io_ray_direction_delay_1_z_mant <= io_ray_direction_z_mant;
    io_ray_direction_delay_2_x_sign <= io_ray_direction_delay_1_x_sign;
    io_ray_direction_delay_2_x_exp <= io_ray_direction_delay_1_x_exp;
    io_ray_direction_delay_2_x_mant <= io_ray_direction_delay_1_x_mant;
    io_ray_direction_delay_2_y_sign <= io_ray_direction_delay_1_y_sign;
    io_ray_direction_delay_2_y_exp <= io_ray_direction_delay_1_y_exp;
    io_ray_direction_delay_2_y_mant <= io_ray_direction_delay_1_y_mant;
    io_ray_direction_delay_2_z_sign <= io_ray_direction_delay_1_z_sign;
    io_ray_direction_delay_2_z_exp <= io_ray_direction_delay_1_z_exp;
    io_ray_direction_delay_2_z_mant <= io_ray_direction_delay_1_z_mant;
    io_ray_direction_delay_3_x_sign <= io_ray_direction_delay_2_x_sign;
    io_ray_direction_delay_3_x_exp <= io_ray_direction_delay_2_x_exp;
    io_ray_direction_delay_3_x_mant <= io_ray_direction_delay_2_x_mant;
    io_ray_direction_delay_3_y_sign <= io_ray_direction_delay_2_y_sign;
    io_ray_direction_delay_3_y_exp <= io_ray_direction_delay_2_y_exp;
    io_ray_direction_delay_3_y_mant <= io_ray_direction_delay_2_y_mant;
    io_ray_direction_delay_3_z_sign <= io_ray_direction_delay_2_z_sign;
    io_ray_direction_delay_3_z_exp <= io_ray_direction_delay_2_z_exp;
    io_ray_direction_delay_3_z_mant <= io_ray_direction_delay_2_z_mant;
    io_ray_direction_delay_4_x_sign <= io_ray_direction_delay_3_x_sign;
    io_ray_direction_delay_4_x_exp <= io_ray_direction_delay_3_x_exp;
    io_ray_direction_delay_4_x_mant <= io_ray_direction_delay_3_x_mant;
    io_ray_direction_delay_4_y_sign <= io_ray_direction_delay_3_y_sign;
    io_ray_direction_delay_4_y_exp <= io_ray_direction_delay_3_y_exp;
    io_ray_direction_delay_4_y_mant <= io_ray_direction_delay_3_y_mant;
    io_ray_direction_delay_4_z_sign <= io_ray_direction_delay_3_z_sign;
    io_ray_direction_delay_4_z_exp <= io_ray_direction_delay_3_z_exp;
    io_ray_direction_delay_4_z_mant <= io_ray_direction_delay_3_z_mant;
    io_ray_direction_delay_5_x_sign <= io_ray_direction_delay_4_x_sign;
    io_ray_direction_delay_5_x_exp <= io_ray_direction_delay_4_x_exp;
    io_ray_direction_delay_5_x_mant <= io_ray_direction_delay_4_x_mant;
    io_ray_direction_delay_5_y_sign <= io_ray_direction_delay_4_y_sign;
    io_ray_direction_delay_5_y_exp <= io_ray_direction_delay_4_y_exp;
    io_ray_direction_delay_5_y_mant <= io_ray_direction_delay_4_y_mant;
    io_ray_direction_delay_5_z_sign <= io_ray_direction_delay_4_z_sign;
    io_ray_direction_delay_5_z_exp <= io_ray_direction_delay_4_z_exp;
    io_ray_direction_delay_5_z_mant <= io_ray_direction_delay_4_z_mant;
    io_ray_direction_delay_6_x_sign <= io_ray_direction_delay_5_x_sign;
    io_ray_direction_delay_6_x_exp <= io_ray_direction_delay_5_x_exp;
    io_ray_direction_delay_6_x_mant <= io_ray_direction_delay_5_x_mant;
    io_ray_direction_delay_6_y_sign <= io_ray_direction_delay_5_y_sign;
    io_ray_direction_delay_6_y_exp <= io_ray_direction_delay_5_y_exp;
    io_ray_direction_delay_6_y_mant <= io_ray_direction_delay_5_y_mant;
    io_ray_direction_delay_6_z_sign <= io_ray_direction_delay_5_z_sign;
    io_ray_direction_delay_6_z_exp <= io_ray_direction_delay_5_z_exp;
    io_ray_direction_delay_6_z_mant <= io_ray_direction_delay_5_z_mant;
    io_ray_direction_delay_7_x_sign <= io_ray_direction_delay_6_x_sign;
    io_ray_direction_delay_7_x_exp <= io_ray_direction_delay_6_x_exp;
    io_ray_direction_delay_7_x_mant <= io_ray_direction_delay_6_x_mant;
    io_ray_direction_delay_7_y_sign <= io_ray_direction_delay_6_y_sign;
    io_ray_direction_delay_7_y_exp <= io_ray_direction_delay_6_y_exp;
    io_ray_direction_delay_7_y_mant <= io_ray_direction_delay_6_y_mant;
    io_ray_direction_delay_7_z_sign <= io_ray_direction_delay_6_z_sign;
    io_ray_direction_delay_7_z_exp <= io_ray_direction_delay_6_z_exp;
    io_ray_direction_delay_7_z_mant <= io_ray_direction_delay_6_z_mant;
    io_ray_direction_delay_8_x_sign <= io_ray_direction_delay_7_x_sign;
    io_ray_direction_delay_8_x_exp <= io_ray_direction_delay_7_x_exp;
    io_ray_direction_delay_8_x_mant <= io_ray_direction_delay_7_x_mant;
    io_ray_direction_delay_8_y_sign <= io_ray_direction_delay_7_y_sign;
    io_ray_direction_delay_8_y_exp <= io_ray_direction_delay_7_y_exp;
    io_ray_direction_delay_8_y_mant <= io_ray_direction_delay_7_y_mant;
    io_ray_direction_delay_8_z_sign <= io_ray_direction_delay_7_z_sign;
    io_ray_direction_delay_8_z_exp <= io_ray_direction_delay_7_z_exp;
    io_ray_direction_delay_8_z_mant <= io_ray_direction_delay_7_z_mant;
    io_ray_direction_delay_9_x_sign <= io_ray_direction_delay_8_x_sign;
    io_ray_direction_delay_9_x_exp <= io_ray_direction_delay_8_x_exp;
    io_ray_direction_delay_9_x_mant <= io_ray_direction_delay_8_x_mant;
    io_ray_direction_delay_9_y_sign <= io_ray_direction_delay_8_y_sign;
    io_ray_direction_delay_9_y_exp <= io_ray_direction_delay_8_y_exp;
    io_ray_direction_delay_9_y_mant <= io_ray_direction_delay_8_y_mant;
    io_ray_direction_delay_9_z_sign <= io_ray_direction_delay_8_z_sign;
    io_ray_direction_delay_9_z_exp <= io_ray_direction_delay_8_z_exp;
    io_ray_direction_delay_9_z_mant <= io_ray_direction_delay_8_z_mant;
    io_ray_direction_delay_10_x_sign <= io_ray_direction_delay_9_x_sign;
    io_ray_direction_delay_10_x_exp <= io_ray_direction_delay_9_x_exp;
    io_ray_direction_delay_10_x_mant <= io_ray_direction_delay_9_x_mant;
    io_ray_direction_delay_10_y_sign <= io_ray_direction_delay_9_y_sign;
    io_ray_direction_delay_10_y_exp <= io_ray_direction_delay_9_y_exp;
    io_ray_direction_delay_10_y_mant <= io_ray_direction_delay_9_y_mant;
    io_ray_direction_delay_10_z_sign <= io_ray_direction_delay_9_z_sign;
    io_ray_direction_delay_10_z_exp <= io_ray_direction_delay_9_z_exp;
    io_ray_direction_delay_10_z_mant <= io_ray_direction_delay_9_z_mant;
    io_ray_direction_delay_11_x_sign <= io_ray_direction_delay_10_x_sign;
    io_ray_direction_delay_11_x_exp <= io_ray_direction_delay_10_x_exp;
    io_ray_direction_delay_11_x_mant <= io_ray_direction_delay_10_x_mant;
    io_ray_direction_delay_11_y_sign <= io_ray_direction_delay_10_y_sign;
    io_ray_direction_delay_11_y_exp <= io_ray_direction_delay_10_y_exp;
    io_ray_direction_delay_11_y_mant <= io_ray_direction_delay_10_y_mant;
    io_ray_direction_delay_11_z_sign <= io_ray_direction_delay_10_z_sign;
    io_ray_direction_delay_11_z_exp <= io_ray_direction_delay_10_z_exp;
    io_ray_direction_delay_11_z_mant <= io_ray_direction_delay_10_z_mant;
    io_ray_direction_delay_12_x_sign <= io_ray_direction_delay_11_x_sign;
    io_ray_direction_delay_12_x_exp <= io_ray_direction_delay_11_x_exp;
    io_ray_direction_delay_12_x_mant <= io_ray_direction_delay_11_x_mant;
    io_ray_direction_delay_12_y_sign <= io_ray_direction_delay_11_y_sign;
    io_ray_direction_delay_12_y_exp <= io_ray_direction_delay_11_y_exp;
    io_ray_direction_delay_12_y_mant <= io_ray_direction_delay_11_y_mant;
    io_ray_direction_delay_12_z_sign <= io_ray_direction_delay_11_z_sign;
    io_ray_direction_delay_12_z_exp <= io_ray_direction_delay_11_z_exp;
    io_ray_direction_delay_12_z_mant <= io_ray_direction_delay_11_z_mant;
    io_ray_direction_delay_13_x_sign <= io_ray_direction_delay_12_x_sign;
    io_ray_direction_delay_13_x_exp <= io_ray_direction_delay_12_x_exp;
    io_ray_direction_delay_13_x_mant <= io_ray_direction_delay_12_x_mant;
    io_ray_direction_delay_13_y_sign <= io_ray_direction_delay_12_y_sign;
    io_ray_direction_delay_13_y_exp <= io_ray_direction_delay_12_y_exp;
    io_ray_direction_delay_13_y_mant <= io_ray_direction_delay_12_y_mant;
    io_ray_direction_delay_13_z_sign <= io_ray_direction_delay_12_z_sign;
    io_ray_direction_delay_13_z_exp <= io_ray_direction_delay_12_z_exp;
    io_ray_direction_delay_13_z_mant <= io_ray_direction_delay_12_z_mant;
    dir_delayed_x_sign <= io_ray_direction_delay_13_x_sign;
    dir_delayed_x_exp <= io_ray_direction_delay_13_x_exp;
    dir_delayed_x_mant <= io_ray_direction_delay_13_x_mant;
    dir_delayed_y_sign <= io_ray_direction_delay_13_y_sign;
    dir_delayed_y_exp <= io_ray_direction_delay_13_y_exp;
    dir_delayed_y_mant <= io_ray_direction_delay_13_y_mant;
    dir_delayed_z_sign <= io_ray_direction_delay_13_z_sign;
    dir_delayed_z_exp <= io_ray_direction_delay_13_z_exp;
    dir_delayed_z_mant <= io_ray_direction_delay_13_z_mant;
    io_ray_origin_delay_1_x_sign <= io_ray_origin_x_sign;
    io_ray_origin_delay_1_x_exp <= io_ray_origin_x_exp;
    io_ray_origin_delay_1_x_mant <= io_ray_origin_x_mant;
    io_ray_origin_delay_1_y_sign <= io_ray_origin_y_sign;
    io_ray_origin_delay_1_y_exp <= io_ray_origin_y_exp;
    io_ray_origin_delay_1_y_mant <= io_ray_origin_y_mant;
    io_ray_origin_delay_1_z_sign <= io_ray_origin_z_sign;
    io_ray_origin_delay_1_z_exp <= io_ray_origin_z_exp;
    io_ray_origin_delay_1_z_mant <= io_ray_origin_z_mant;
    io_ray_origin_delay_2_x_sign <= io_ray_origin_delay_1_x_sign;
    io_ray_origin_delay_2_x_exp <= io_ray_origin_delay_1_x_exp;
    io_ray_origin_delay_2_x_mant <= io_ray_origin_delay_1_x_mant;
    io_ray_origin_delay_2_y_sign <= io_ray_origin_delay_1_y_sign;
    io_ray_origin_delay_2_y_exp <= io_ray_origin_delay_1_y_exp;
    io_ray_origin_delay_2_y_mant <= io_ray_origin_delay_1_y_mant;
    io_ray_origin_delay_2_z_sign <= io_ray_origin_delay_1_z_sign;
    io_ray_origin_delay_2_z_exp <= io_ray_origin_delay_1_z_exp;
    io_ray_origin_delay_2_z_mant <= io_ray_origin_delay_1_z_mant;
    io_ray_origin_delay_3_x_sign <= io_ray_origin_delay_2_x_sign;
    io_ray_origin_delay_3_x_exp <= io_ray_origin_delay_2_x_exp;
    io_ray_origin_delay_3_x_mant <= io_ray_origin_delay_2_x_mant;
    io_ray_origin_delay_3_y_sign <= io_ray_origin_delay_2_y_sign;
    io_ray_origin_delay_3_y_exp <= io_ray_origin_delay_2_y_exp;
    io_ray_origin_delay_3_y_mant <= io_ray_origin_delay_2_y_mant;
    io_ray_origin_delay_3_z_sign <= io_ray_origin_delay_2_z_sign;
    io_ray_origin_delay_3_z_exp <= io_ray_origin_delay_2_z_exp;
    io_ray_origin_delay_3_z_mant <= io_ray_origin_delay_2_z_mant;
    io_ray_origin_delay_4_x_sign <= io_ray_origin_delay_3_x_sign;
    io_ray_origin_delay_4_x_exp <= io_ray_origin_delay_3_x_exp;
    io_ray_origin_delay_4_x_mant <= io_ray_origin_delay_3_x_mant;
    io_ray_origin_delay_4_y_sign <= io_ray_origin_delay_3_y_sign;
    io_ray_origin_delay_4_y_exp <= io_ray_origin_delay_3_y_exp;
    io_ray_origin_delay_4_y_mant <= io_ray_origin_delay_3_y_mant;
    io_ray_origin_delay_4_z_sign <= io_ray_origin_delay_3_z_sign;
    io_ray_origin_delay_4_z_exp <= io_ray_origin_delay_3_z_exp;
    io_ray_origin_delay_4_z_mant <= io_ray_origin_delay_3_z_mant;
    io_ray_origin_delay_5_x_sign <= io_ray_origin_delay_4_x_sign;
    io_ray_origin_delay_5_x_exp <= io_ray_origin_delay_4_x_exp;
    io_ray_origin_delay_5_x_mant <= io_ray_origin_delay_4_x_mant;
    io_ray_origin_delay_5_y_sign <= io_ray_origin_delay_4_y_sign;
    io_ray_origin_delay_5_y_exp <= io_ray_origin_delay_4_y_exp;
    io_ray_origin_delay_5_y_mant <= io_ray_origin_delay_4_y_mant;
    io_ray_origin_delay_5_z_sign <= io_ray_origin_delay_4_z_sign;
    io_ray_origin_delay_5_z_exp <= io_ray_origin_delay_4_z_exp;
    io_ray_origin_delay_5_z_mant <= io_ray_origin_delay_4_z_mant;
    io_ray_origin_delay_6_x_sign <= io_ray_origin_delay_5_x_sign;
    io_ray_origin_delay_6_x_exp <= io_ray_origin_delay_5_x_exp;
    io_ray_origin_delay_6_x_mant <= io_ray_origin_delay_5_x_mant;
    io_ray_origin_delay_6_y_sign <= io_ray_origin_delay_5_y_sign;
    io_ray_origin_delay_6_y_exp <= io_ray_origin_delay_5_y_exp;
    io_ray_origin_delay_6_y_mant <= io_ray_origin_delay_5_y_mant;
    io_ray_origin_delay_6_z_sign <= io_ray_origin_delay_5_z_sign;
    io_ray_origin_delay_6_z_exp <= io_ray_origin_delay_5_z_exp;
    io_ray_origin_delay_6_z_mant <= io_ray_origin_delay_5_z_mant;
    io_ray_origin_delay_7_x_sign <= io_ray_origin_delay_6_x_sign;
    io_ray_origin_delay_7_x_exp <= io_ray_origin_delay_6_x_exp;
    io_ray_origin_delay_7_x_mant <= io_ray_origin_delay_6_x_mant;
    io_ray_origin_delay_7_y_sign <= io_ray_origin_delay_6_y_sign;
    io_ray_origin_delay_7_y_exp <= io_ray_origin_delay_6_y_exp;
    io_ray_origin_delay_7_y_mant <= io_ray_origin_delay_6_y_mant;
    io_ray_origin_delay_7_z_sign <= io_ray_origin_delay_6_z_sign;
    io_ray_origin_delay_7_z_exp <= io_ray_origin_delay_6_z_exp;
    io_ray_origin_delay_7_z_mant <= io_ray_origin_delay_6_z_mant;
    io_ray_origin_delay_8_x_sign <= io_ray_origin_delay_7_x_sign;
    io_ray_origin_delay_8_x_exp <= io_ray_origin_delay_7_x_exp;
    io_ray_origin_delay_8_x_mant <= io_ray_origin_delay_7_x_mant;
    io_ray_origin_delay_8_y_sign <= io_ray_origin_delay_7_y_sign;
    io_ray_origin_delay_8_y_exp <= io_ray_origin_delay_7_y_exp;
    io_ray_origin_delay_8_y_mant <= io_ray_origin_delay_7_y_mant;
    io_ray_origin_delay_8_z_sign <= io_ray_origin_delay_7_z_sign;
    io_ray_origin_delay_8_z_exp <= io_ray_origin_delay_7_z_exp;
    io_ray_origin_delay_8_z_mant <= io_ray_origin_delay_7_z_mant;
    io_ray_origin_delay_9_x_sign <= io_ray_origin_delay_8_x_sign;
    io_ray_origin_delay_9_x_exp <= io_ray_origin_delay_8_x_exp;
    io_ray_origin_delay_9_x_mant <= io_ray_origin_delay_8_x_mant;
    io_ray_origin_delay_9_y_sign <= io_ray_origin_delay_8_y_sign;
    io_ray_origin_delay_9_y_exp <= io_ray_origin_delay_8_y_exp;
    io_ray_origin_delay_9_y_mant <= io_ray_origin_delay_8_y_mant;
    io_ray_origin_delay_9_z_sign <= io_ray_origin_delay_8_z_sign;
    io_ray_origin_delay_9_z_exp <= io_ray_origin_delay_8_z_exp;
    io_ray_origin_delay_9_z_mant <= io_ray_origin_delay_8_z_mant;
    io_ray_origin_delay_10_x_sign <= io_ray_origin_delay_9_x_sign;
    io_ray_origin_delay_10_x_exp <= io_ray_origin_delay_9_x_exp;
    io_ray_origin_delay_10_x_mant <= io_ray_origin_delay_9_x_mant;
    io_ray_origin_delay_10_y_sign <= io_ray_origin_delay_9_y_sign;
    io_ray_origin_delay_10_y_exp <= io_ray_origin_delay_9_y_exp;
    io_ray_origin_delay_10_y_mant <= io_ray_origin_delay_9_y_mant;
    io_ray_origin_delay_10_z_sign <= io_ray_origin_delay_9_z_sign;
    io_ray_origin_delay_10_z_exp <= io_ray_origin_delay_9_z_exp;
    io_ray_origin_delay_10_z_mant <= io_ray_origin_delay_9_z_mant;
    io_ray_origin_delay_11_x_sign <= io_ray_origin_delay_10_x_sign;
    io_ray_origin_delay_11_x_exp <= io_ray_origin_delay_10_x_exp;
    io_ray_origin_delay_11_x_mant <= io_ray_origin_delay_10_x_mant;
    io_ray_origin_delay_11_y_sign <= io_ray_origin_delay_10_y_sign;
    io_ray_origin_delay_11_y_exp <= io_ray_origin_delay_10_y_exp;
    io_ray_origin_delay_11_y_mant <= io_ray_origin_delay_10_y_mant;
    io_ray_origin_delay_11_z_sign <= io_ray_origin_delay_10_z_sign;
    io_ray_origin_delay_11_z_exp <= io_ray_origin_delay_10_z_exp;
    io_ray_origin_delay_11_z_mant <= io_ray_origin_delay_10_z_mant;
    io_ray_origin_delay_12_x_sign <= io_ray_origin_delay_11_x_sign;
    io_ray_origin_delay_12_x_exp <= io_ray_origin_delay_11_x_exp;
    io_ray_origin_delay_12_x_mant <= io_ray_origin_delay_11_x_mant;
    io_ray_origin_delay_12_y_sign <= io_ray_origin_delay_11_y_sign;
    io_ray_origin_delay_12_y_exp <= io_ray_origin_delay_11_y_exp;
    io_ray_origin_delay_12_y_mant <= io_ray_origin_delay_11_y_mant;
    io_ray_origin_delay_12_z_sign <= io_ray_origin_delay_11_z_sign;
    io_ray_origin_delay_12_z_exp <= io_ray_origin_delay_11_z_exp;
    io_ray_origin_delay_12_z_mant <= io_ray_origin_delay_11_z_mant;
    io_ray_origin_delay_13_x_sign <= io_ray_origin_delay_12_x_sign;
    io_ray_origin_delay_13_x_exp <= io_ray_origin_delay_12_x_exp;
    io_ray_origin_delay_13_x_mant <= io_ray_origin_delay_12_x_mant;
    io_ray_origin_delay_13_y_sign <= io_ray_origin_delay_12_y_sign;
    io_ray_origin_delay_13_y_exp <= io_ray_origin_delay_12_y_exp;
    io_ray_origin_delay_13_y_mant <= io_ray_origin_delay_12_y_mant;
    io_ray_origin_delay_13_z_sign <= io_ray_origin_delay_12_z_sign;
    io_ray_origin_delay_13_z_exp <= io_ray_origin_delay_12_z_exp;
    io_ray_origin_delay_13_z_mant <= io_ray_origin_delay_12_z_mant;
    origin_delayed_x_sign <= io_ray_origin_delay_13_x_sign;
    origin_delayed_x_exp <= io_ray_origin_delay_13_x_exp;
    origin_delayed_x_mant <= io_ray_origin_delay_13_x_mant;
    origin_delayed_y_sign <= io_ray_origin_delay_13_y_sign;
    origin_delayed_y_exp <= io_ray_origin_delay_13_y_exp;
    origin_delayed_y_mant <= io_ray_origin_delay_13_y_mant;
    origin_delayed_z_sign <= io_ray_origin_delay_13_z_sign;
    origin_delayed_z_exp <= io_ray_origin_delay_13_z_exp;
    origin_delayed_z_mant <= io_ray_origin_delay_13_z_mant;
    t_delay_1_sign <= t_sign;
    t_delay_1_exp <= t_exp;
    t_delay_1_mant <= t_mant;
    t_delay_2_sign <= t_delay_1_sign;
    t_delay_2_exp <= t_delay_1_exp;
    t_delay_2_mant <= t_delay_1_mant;
    t_delay_3_sign <= t_delay_2_sign;
    t_delay_3_exp <= t_delay_2_exp;
    t_delay_3_mant <= t_delay_2_mant;
    t_delayed_sign <= t_delay_3_sign;
    t_delayed_exp <= t_delay_3_exp;
    t_delayed_mant <= t_delay_3_mant;
    intersects_t_gt0_delay_1 <= intersects_t_gt0;
    intersects_t_gt0_delay_2 <= intersects_t_gt0_delay_1;
    intersects_t_gt0_delayed <= intersects_t_gt0_delay_2;
  end

endmodule

module Fpxx2SInt (
      input   p0_vld,
      input   sign_p0,
      input  [5:0] op_p0_exp,
      input  [12:0] op_p0_mant,
      output  io_result_vld,
      output [19:0] io_result,
      output  io_result_ovfl,
      input   clk,
      input   reset);
  wire [7:0] _zz_2_;
  wire [7:0] _zz_3_;
  wire [14:0] _zz_4_;
  wire [7:0] _zz_5_;
  wire [7:0] _zz_6_;
  wire [7:0] _zz_7_;
  wire [19:0] _zz_8_;
  wire [19:0] _zz_9_;
  wire [19:0] _zz_10_;
  wire [4:0] _zz_11_;
  wire  ge0_p0;
  wire [7:0] shift_p0;
  wire [14:0] mant_full_p0;
  wire [14:0] mant_2c_p0;
  reg  p1_vld;
  reg  ge0_p1;
  reg [7:0] shift_p1;
  reg [14:0] mant_2c_p1;
  wire [4:0] shift_clipped_p1;
  reg [19:0] int_p1;
  reg  ovfl_p1;
  reg [19:0] _zz_1_;
  assign _zz_2_ = (8'b00100101);
  assign _zz_3_ = {(2'b00),op_p0_exp};
  assign _zz_4_ = (- mant_full_p0);
  assign _zz_5_ = shift_p1;
  assign _zz_6_ = (8'b00010100);
  assign _zz_7_ = (8'b00000000);
  assign _zz_8_ = (20'b11111111111111111111);
  assign _zz_9_ = (20'b00000000000000000000);
  assign _zz_10_ = {mant_2c_p1,_zz_11_};
  assign _zz_11_ = (5'b00000);
  assign ge0_p0 = ((6'b010011) <= op_p0_exp);
  assign shift_p0 = ($signed(_zz_2_) - $signed(_zz_3_));
  assign mant_full_p0 = {(2'b01),op_p0_mant};
  assign mant_2c_p0 = (sign_p0 ? _zz_4_ : mant_full_p0);
  assign shift_clipped_p1 = _zz_5_[4:0];
  always @ (*) begin
    if((($signed(_zz_6_) <= $signed(shift_p1)) || (! ge0_p1)))begin
      int_p1 = (20'b00000000000000000000);
      ovfl_p1 = 1'b0;
    end else begin
      if(($signed(shift_p1) < $signed(_zz_7_)))begin
        int_p1 = _zz_1_;
        ovfl_p1 = 1'b1;
      end else begin
        int_p1 = ($signed(_zz_10_) >>> shift_clipped_p1);
        ovfl_p1 = 1'b0;
      end
    end
  end

  always @ (*) begin
    _zz_1_ = ((! mant_2c_p1[14]) ? _zz_8_ : _zz_9_);
    _zz_1_[19] = mant_2c_p1[14];
  end

  assign io_result_vld = p1_vld;
  assign io_result = int_p1;
  assign io_result_ovfl = ovfl_p1;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      p1_vld <= 1'b0;
    end else begin
      if(1'b1)begin
        p1_vld <= p0_vld;
      end
    end
  end

  always @ (posedge clk) begin
    if(p0_vld)begin
      ge0_p1 <= ge0_p0;
    end
    if(p0_vld)begin
      shift_p1 <= shift_p0;
    end
    if(p0_vld)begin
      mant_2c_p1 <= mant_2c_p0;
    end
  end

endmodule


//Fpxx2SInt_1_ remplaced by Fpxx2SInt

module SphereIntersect_1_ (
      input   io_op_vld,
      input   io_sphere_center_x_sign,
      input  [5:0] io_sphere_center_x_exp,
      input  [12:0] io_sphere_center_x_mant,
      input   io_sphere_center_y_sign,
      input  [5:0] io_sphere_center_y_exp,
      input  [12:0] io_sphere_center_y_mant,
      input   io_sphere_center_z_sign,
      input  [5:0] io_sphere_center_z_exp,
      input  [12:0] io_sphere_center_z_mant,
      input   io_sphere_radius2_sign,
      input  [5:0] io_sphere_radius2_exp,
      input  [12:0] io_sphere_radius2_mant,
      input   io_ray_origin_x_sign,
      input  [5:0] io_ray_origin_x_exp,
      input  [12:0] io_ray_origin_x_mant,
      input   io_ray_origin_y_sign,
      input  [5:0] io_ray_origin_y_exp,
      input  [12:0] io_ray_origin_y_mant,
      input   io_ray_origin_z_sign,
      input  [5:0] io_ray_origin_z_exp,
      input  [12:0] io_ray_origin_z_mant,
      input   io_ray_direction_x_sign,
      input  [5:0] io_ray_direction_x_exp,
      input  [12:0] io_ray_direction_x_mant,
      input   io_ray_direction_y_sign,
      input  [5:0] io_ray_direction_y_exp,
      input  [12:0] io_ray_direction_y_mant,
      input   io_ray_direction_z_sign,
      input  [5:0] io_ray_direction_z_exp,
      input  [12:0] io_ray_direction_z_mant,
      output  io_early_intersects_vld,
      output  io_early_intersects,
      output  io_early_normal_vld,
      output  io_early_normal_x_sign,
      output [5:0] io_early_normal_x_exp,
      output [12:0] io_early_normal_x_mant,
      output  io_early_normal_y_sign,
      output [5:0] io_early_normal_y_exp,
      output [12:0] io_early_normal_y_mant,
      output  io_early_normal_z_sign,
      output [5:0] io_early_normal_z_exp,
      output [12:0] io_early_normal_z_mant,
      output  io_result_vld,
      output  io_result_intersects,
      output  io_result_t_sign,
      output [5:0] io_result_t_exp,
      output [12:0] io_result_t_mant,
      output  io_result_intersection_x_sign,
      output [5:0] io_result_intersection_x_exp,
      output [12:0] io_result_intersection_x_mant,
      output  io_result_intersection_y_sign,
      output [5:0] io_result_intersection_y_exp,
      output [12:0] io_result_intersection_y_mant,
      output  io_result_intersection_z_sign,
      output [5:0] io_result_intersection_z_exp,
      output [12:0] io_result_intersection_z_mant,
      output  io_result_normal_x_sign,
      output [5:0] io_result_normal_x_exp,
      output [12:0] io_result_normal_x_mant,
      output  io_result_normal_y_sign,
      output [5:0] io_result_normal_y_exp,
      output [12:0] io_result_normal_y_mant,
      output  io_result_normal_z_sign,
      output [5:0] io_result_normal_z_exp,
      output [12:0] io_result_normal_z_mant,
      output  io_result_reflect_ray_origin_x_sign,
      output [5:0] io_result_reflect_ray_origin_x_exp,
      output [12:0] io_result_reflect_ray_origin_x_mant,
      output  io_result_reflect_ray_origin_y_sign,
      output [5:0] io_result_reflect_ray_origin_y_exp,
      output [12:0] io_result_reflect_ray_origin_y_mant,
      output  io_result_reflect_ray_origin_z_sign,
      output [5:0] io_result_reflect_ray_origin_z_exp,
      output [12:0] io_result_reflect_ray_origin_z_mant,
      output  io_result_reflect_ray_direction_x_sign,
      output [5:0] io_result_reflect_ray_direction_x_exp,
      output [12:0] io_result_reflect_ray_direction_x_mant,
      output  io_result_reflect_ray_direction_y_sign,
      output [5:0] io_result_reflect_ray_direction_y_exp,
      output [12:0] io_result_reflect_ray_direction_y_mant,
      output  io_result_reflect_ray_direction_z_sign,
      output [5:0] io_result_reflect_ray_direction_z_exp,
      output [12:0] io_result_reflect_ray_direction_z_mant,
      output  io_result_ray_origin_x_sign,
      output [5:0] io_result_ray_origin_x_exp,
      output [12:0] io_result_ray_origin_x_mant,
      output  io_result_ray_origin_y_sign,
      output [5:0] io_result_ray_origin_y_exp,
      output [12:0] io_result_ray_origin_y_mant,
      output  io_result_ray_origin_z_sign,
      output [5:0] io_result_ray_origin_z_exp,
      output [12:0] io_result_ray_origin_z_mant,
      output  io_result_ray_direction_x_sign,
      output [5:0] io_result_ray_direction_x_exp,
      output [12:0] io_result_ray_direction_x_mant,
      output  io_result_ray_direction_y_sign,
      output [5:0] io_result_ray_direction_y_exp,
      output [12:0] io_result_ray_direction_y_mant,
      output  io_result_ray_direction_z_sign,
      output [5:0] io_result_ray_direction_z_exp,
      output [12:0] io_result_ray_direction_z_mant,
      input   clk,
      input   reset);
  wire  u_c0r0_io_result_vld;
  wire  u_c0r0_io_result_x_sign;
  wire [5:0] u_c0r0_io_result_x_exp;
  wire [12:0] u_c0r0_io_result_x_mant;
  wire  u_c0r0_io_result_y_sign;
  wire [5:0] u_c0r0_io_result_y_exp;
  wire [12:0] u_c0r0_io_result_y_mant;
  wire  u_c0r0_io_result_z_sign;
  wire [5:0] u_c0r0_io_result_z_exp;
  wire [12:0] u_c0r0_io_result_z_mant;
  wire  u_dot_tca_io_result_vld;
  wire  u_dot_tca_io_result_sign;
  wire [5:0] u_dot_tca_io_result_exp;
  wire [12:0] u_dot_tca_io_result_mant;
  wire  u_dot_c0r0_c0r0_io_result_vld;
  wire  u_dot_c0r0_c0r0_io_result_sign;
  wire [5:0] u_dot_c0r0_c0r0_io_result_exp;
  wire [12:0] u_dot_c0r0_c0r0_io_result_mant;
  wire  u_tca_tca_io_result_vld;
  wire  u_tca_tca_io_result_sign;
  wire [5:0] u_tca_tca_io_result_exp;
  wire [12:0] u_tca_tca_io_result_mant;
  wire  u_d2_io_result_vld;
  wire  u_d2_io_result_sign;
  wire [5:0] u_d2_io_result_exp;
  wire [12:0] u_d2_io_result_mant;
  wire  u_radius2_m_d2_io_result_vld;
  wire  u_radius2_m_d2_io_result_sign;
  wire [5:0] u_radius2_m_d2_io_result_exp;
  wire [12:0] u_radius2_m_d2_io_result_mant;
  wire  u_thc_io_result_vld;
  wire  u_thc_io_result_sign;
  wire [5:0] u_thc_io_result_exp;
  wire [12:0] u_thc_io_result_mant;
  wire  u_t0_io_result_vld;
  wire  u_t0_io_result_sign;
  wire [5:0] u_t0_io_result_exp;
  wire [12:0] u_t0_io_result_mant;
  wire  u_t1_io_result_vld;
  wire  u_t1_io_result_sign;
  wire [5:0] u_t1_io_result_exp;
  wire [12:0] u_t1_io_result_mant;
  wire  u_intersection_io_result_vld;
  wire  u_intersection_io_result_x_sign;
  wire [5:0] u_intersection_io_result_x_exp;
  wire [12:0] u_intersection_io_result_x_mant;
  wire  u_intersection_io_result_y_sign;
  wire [5:0] u_intersection_io_result_y_exp;
  wire [12:0] u_intersection_io_result_y_mant;
  wire  u_intersection_io_result_z_sign;
  wire [5:0] u_intersection_io_result_z_exp;
  wire [12:0] u_intersection_io_result_z_mant;
  wire  u_normal_raw_io_result_vld;
  wire  u_normal_raw_io_result_x_sign;
  wire [5:0] u_normal_raw_io_result_x_exp;
  wire [12:0] u_normal_raw_io_result_x_mant;
  wire  u_normal_raw_io_result_y_sign;
  wire [5:0] u_normal_raw_io_result_y_exp;
  wire [12:0] u_normal_raw_io_result_y_mant;
  wire  u_normal_raw_io_result_z_sign;
  wire [5:0] u_normal_raw_io_result_z_exp;
  wire [12:0] u_normal_raw_io_result_z_mant;
  wire  u_normalize_io_result_vld;
  wire  u_normalize_io_result_x_sign;
  wire [5:0] u_normalize_io_result_x_exp;
  wire [12:0] u_normalize_io_result_x_mant;
  wire  u_normalize_io_result_y_sign;
  wire [5:0] u_normalize_io_result_y_exp;
  wire [12:0] u_normalize_io_result_y_mant;
  wire  u_normalize_io_result_z_sign;
  wire [5:0] u_normalize_io_result_z_exp;
  wire [12:0] u_normalize_io_result_z_mant;
  wire  u_dir_dot_normal_io_result_vld;
  wire  u_dir_dot_normal_io_result_sign;
  wire [5:0] u_dir_dot_normal_io_result_exp;
  wire [12:0] u_dir_dot_normal_io_result_mant;
  wire  u_dir_mirror_io_result_vld;
  wire  u_dir_mirror_io_result_x_sign;
  wire [5:0] u_dir_mirror_io_result_x_exp;
  wire [12:0] u_dir_mirror_io_result_x_mant;
  wire  u_dir_mirror_io_result_y_sign;
  wire [5:0] u_dir_mirror_io_result_y_exp;
  wire [12:0] u_dir_mirror_io_result_y_mant;
  wire  u_dir_mirror_io_result_z_sign;
  wire [5:0] u_dir_mirror_io_result_z_exp;
  wire [12:0] u_dir_mirror_io_result_z_mant;
  wire  u_reflect_dir_io_result_vld;
  wire  u_reflect_dir_io_result_x_sign;
  wire [5:0] u_reflect_dir_io_result_x_exp;
  wire [12:0] u_reflect_dir_io_result_x_mant;
  wire  u_reflect_dir_io_result_y_sign;
  wire [5:0] u_reflect_dir_io_result_y_exp;
  wire [12:0] u_reflect_dir_io_result_y_mant;
  wire  u_reflect_dir_io_result_z_sign;
  wire [5:0] u_reflect_dir_io_result_z_exp;
  wire [12:0] u_reflect_dir_io_result_z_mant;
  wire [19:0] _zz_6_;
  wire [19:0] _zz_7_;
  wire [19:0] _zz_8_;
  wire [19:0] _zz_9_;
  wire  c0r0_vld;
  wire  c0r0_x_sign;
  wire [5:0] c0r0_x_exp;
  wire [12:0] c0r0_x_mant;
  wire  c0r0_y_sign;
  wire [5:0] c0r0_y_exp;
  wire [12:0] c0r0_y_mant;
  wire  c0r0_z_sign;
  wire [5:0] c0r0_z_exp;
  wire [12:0] c0r0_z_mant;
  reg  io_ray_direction_delay_1_x_sign;
  reg [5:0] io_ray_direction_delay_1_x_exp;
  reg [12:0] io_ray_direction_delay_1_x_mant;
  reg  io_ray_direction_delay_1_y_sign;
  reg [5:0] io_ray_direction_delay_1_y_exp;
  reg [12:0] io_ray_direction_delay_1_y_mant;
  reg  io_ray_direction_delay_1_z_sign;
  reg [5:0] io_ray_direction_delay_1_z_exp;
  reg [12:0] io_ray_direction_delay_1_z_mant;
  reg  dir_delayed_c0r0_x_sign;
  reg [5:0] dir_delayed_c0r0_x_exp;
  reg [12:0] dir_delayed_c0r0_x_mant;
  reg  dir_delayed_c0r0_y_sign;
  reg [5:0] dir_delayed_c0r0_y_exp;
  reg [12:0] dir_delayed_c0r0_y_mant;
  reg  dir_delayed_c0r0_z_sign;
  reg [5:0] dir_delayed_c0r0_z_exp;
  reg [12:0] dir_delayed_c0r0_z_mant;
  wire  tca_vld;
  wire  tca_sign;
  wire [5:0] tca_exp;
  wire [12:0] tca_mant;
  wire  intersects_tca;
  wire  c0r0_c0r0_vld;
  wire  c0r0_c0r0_sign;
  wire [5:0] c0r0_c0r0_exp;
  wire [12:0] c0r0_c0r0_mant;
  wire  tca_tca_vld;
  wire  tca_tca_sign;
  wire [5:0] tca_tca_exp;
  wire [12:0] tca_tca_mant;
  reg  c0r0_c0r0_delay_1_sign;
  reg [5:0] c0r0_c0r0_delay_1_exp;
  reg [12:0] c0r0_c0r0_delay_1_mant;
  reg  c0r0_c0r0_delayed_sign;
  reg [5:0] c0r0_c0r0_delayed_exp;
  reg [12:0] c0r0_c0r0_delayed_mant;
  wire  d2_vld;
  wire  d2_sign;
  wire [5:0] d2_exp;
  wire [12:0] d2_mant;
  reg  intersects_tca_delay_1;
  reg  intersects_tca_delay_2;
  reg  intersects_tca_delay_3;
  reg  intersects_tca_delayed_early;
  wire  radius2_ge_d2;
  reg  d2_vld_regNext;
  reg  _zz_1_;
  wire  radius2_m_d2_vld;
  wire  radius2_m_d2_sign;
  wire [5:0] radius2_m_d2_exp;
  wire [12:0] radius2_m_d2_mant;
  wire  intersects_d2;
  wire  thc_vld;
  wire  thc_sign;
  wire [5:0] thc_exp;
  wire [12:0] thc_mant;
  reg  tca_delay_1_sign;
  reg [5:0] tca_delay_1_exp;
  reg [12:0] tca_delay_1_mant;
  reg  tca_delay_2_sign;
  reg [5:0] tca_delay_2_exp;
  reg [12:0] tca_delay_2_mant;
  reg  tca_delay_3_sign;
  reg [5:0] tca_delay_3_exp;
  reg [12:0] tca_delay_3_mant;
  reg  tca_delay_4_sign;
  reg [5:0] tca_delay_4_exp;
  reg [12:0] tca_delay_4_mant;
  reg  tca_delay_5_sign;
  reg [5:0] tca_delay_5_exp;
  reg [12:0] tca_delay_5_mant;
  reg  tca_delay_6_sign;
  reg [5:0] tca_delay_6_exp;
  reg [12:0] tca_delay_6_mant;
  reg  tca_delayed_sign;
  reg [5:0] tca_delayed_exp;
  reg [12:0] tca_delayed_mant;
  wire  t0_vld;
  wire  t0_sign;
  wire [5:0] t0_exp;
  wire [12:0] t0_mant;
  wire  t1_vld;
  wire  t1_sign;
  wire [5:0] t1_exp;
  wire [12:0] t1_mant;
  wire  t_vld;
  wire  t_sign;
  wire [5:0] t_exp;
  wire [12:0] t_mant;
  reg  t0_vld_regNext;
  wire  _zz_2_;
  reg  _zz_3_;
  reg [5:0] _zz_4_;
  reg [12:0] _zz_5_;
  reg  dir_delayed_c0r0_delay_1_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_1_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_1_x_mant;
  reg  dir_delayed_c0r0_delay_1_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_1_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_1_y_mant;
  reg  dir_delayed_c0r0_delay_1_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_1_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_1_z_mant;
  reg  dir_delayed_c0r0_delay_2_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_2_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_2_x_mant;
  reg  dir_delayed_c0r0_delay_2_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_2_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_2_y_mant;
  reg  dir_delayed_c0r0_delay_2_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_2_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_2_z_mant;
  reg  dir_delayed_c0r0_delay_3_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_3_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_3_x_mant;
  reg  dir_delayed_c0r0_delay_3_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_3_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_3_y_mant;
  reg  dir_delayed_c0r0_delay_3_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_3_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_3_z_mant;
  reg  dir_delayed_c0r0_delay_4_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_4_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_4_x_mant;
  reg  dir_delayed_c0r0_delay_4_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_4_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_4_y_mant;
  reg  dir_delayed_c0r0_delay_4_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_4_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_4_z_mant;
  reg  dir_delayed_c0r0_delay_5_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_5_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_5_x_mant;
  reg  dir_delayed_c0r0_delay_5_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_5_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_5_y_mant;
  reg  dir_delayed_c0r0_delay_5_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_5_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_5_z_mant;
  reg  dir_delayed_c0r0_delay_6_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_6_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_6_x_mant;
  reg  dir_delayed_c0r0_delay_6_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_6_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_6_y_mant;
  reg  dir_delayed_c0r0_delay_6_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_6_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_6_z_mant;
  reg  dir_delayed_c0r0_delay_7_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_7_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_7_x_mant;
  reg  dir_delayed_c0r0_delay_7_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_7_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_7_y_mant;
  reg  dir_delayed_c0r0_delay_7_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_7_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_7_z_mant;
  reg  dir_delayed_c0r0_delay_8_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_8_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_8_x_mant;
  reg  dir_delayed_c0r0_delay_8_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_8_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_8_y_mant;
  reg  dir_delayed_c0r0_delay_8_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_8_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_8_z_mant;
  reg  dir_delayed_c0r0_delay_9_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_9_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_9_x_mant;
  reg  dir_delayed_c0r0_delay_9_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_9_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_9_y_mant;
  reg  dir_delayed_c0r0_delay_9_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_9_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_9_z_mant;
  reg  dir_delayed_c0r0_delay_10_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_10_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_10_x_mant;
  reg  dir_delayed_c0r0_delay_10_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_10_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_10_y_mant;
  reg  dir_delayed_c0r0_delay_10_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_10_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_10_z_mant;
  reg  dir_delayed_c0r0_delay_11_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_11_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_11_x_mant;
  reg  dir_delayed_c0r0_delay_11_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_11_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_11_y_mant;
  reg  dir_delayed_c0r0_delay_11_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_11_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_11_z_mant;
  reg  dir_delayed_c0r0_delay_12_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_12_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_12_x_mant;
  reg  dir_delayed_c0r0_delay_12_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_12_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_12_y_mant;
  reg  dir_delayed_c0r0_delay_12_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_12_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_12_z_mant;
  reg  dir_delayed_c0r0_delay_13_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_13_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_13_x_mant;
  reg  dir_delayed_c0r0_delay_13_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_13_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_13_y_mant;
  reg  dir_delayed_c0r0_delay_13_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_13_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_13_z_mant;
  reg  dir_delayed_c0r0_delay_14_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_14_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_14_x_mant;
  reg  dir_delayed_c0r0_delay_14_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_14_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_14_y_mant;
  reg  dir_delayed_c0r0_delay_14_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_14_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_14_z_mant;
  reg  dir_delayed_c0r0_delay_15_x_sign;
  reg [5:0] dir_delayed_c0r0_delay_15_x_exp;
  reg [12:0] dir_delayed_c0r0_delay_15_x_mant;
  reg  dir_delayed_c0r0_delay_15_y_sign;
  reg [5:0] dir_delayed_c0r0_delay_15_y_exp;
  reg [12:0] dir_delayed_c0r0_delay_15_y_mant;
  reg  dir_delayed_c0r0_delay_15_z_sign;
  reg [5:0] dir_delayed_c0r0_delay_15_z_exp;
  reg [12:0] dir_delayed_c0r0_delay_15_z_mant;
  reg  dir_delayed_intersect_x_sign;
  reg [5:0] dir_delayed_intersect_x_exp;
  reg [12:0] dir_delayed_intersect_x_mant;
  reg  dir_delayed_intersect_y_sign;
  reg [5:0] dir_delayed_intersect_y_exp;
  reg [12:0] dir_delayed_intersect_y_mant;
  reg  dir_delayed_intersect_z_sign;
  reg [5:0] dir_delayed_intersect_z_exp;
  reg [12:0] dir_delayed_intersect_z_mant;
  reg  io_ray_origin_delay_1_x_sign;
  reg [5:0] io_ray_origin_delay_1_x_exp;
  reg [12:0] io_ray_origin_delay_1_x_mant;
  reg  io_ray_origin_delay_1_y_sign;
  reg [5:0] io_ray_origin_delay_1_y_exp;
  reg [12:0] io_ray_origin_delay_1_y_mant;
  reg  io_ray_origin_delay_1_z_sign;
  reg [5:0] io_ray_origin_delay_1_z_exp;
  reg [12:0] io_ray_origin_delay_1_z_mant;
  reg  io_ray_origin_delay_2_x_sign;
  reg [5:0] io_ray_origin_delay_2_x_exp;
  reg [12:0] io_ray_origin_delay_2_x_mant;
  reg  io_ray_origin_delay_2_y_sign;
  reg [5:0] io_ray_origin_delay_2_y_exp;
  reg [12:0] io_ray_origin_delay_2_y_mant;
  reg  io_ray_origin_delay_2_z_sign;
  reg [5:0] io_ray_origin_delay_2_z_exp;
  reg [12:0] io_ray_origin_delay_2_z_mant;
  reg  io_ray_origin_delay_3_x_sign;
  reg [5:0] io_ray_origin_delay_3_x_exp;
  reg [12:0] io_ray_origin_delay_3_x_mant;
  reg  io_ray_origin_delay_3_y_sign;
  reg [5:0] io_ray_origin_delay_3_y_exp;
  reg [12:0] io_ray_origin_delay_3_y_mant;
  reg  io_ray_origin_delay_3_z_sign;
  reg [5:0] io_ray_origin_delay_3_z_exp;
  reg [12:0] io_ray_origin_delay_3_z_mant;
  reg  io_ray_origin_delay_4_x_sign;
  reg [5:0] io_ray_origin_delay_4_x_exp;
  reg [12:0] io_ray_origin_delay_4_x_mant;
  reg  io_ray_origin_delay_4_y_sign;
  reg [5:0] io_ray_origin_delay_4_y_exp;
  reg [12:0] io_ray_origin_delay_4_y_mant;
  reg  io_ray_origin_delay_4_z_sign;
  reg [5:0] io_ray_origin_delay_4_z_exp;
  reg [12:0] io_ray_origin_delay_4_z_mant;
  reg  io_ray_origin_delay_5_x_sign;
  reg [5:0] io_ray_origin_delay_5_x_exp;
  reg [12:0] io_ray_origin_delay_5_x_mant;
  reg  io_ray_origin_delay_5_y_sign;
  reg [5:0] io_ray_origin_delay_5_y_exp;
  reg [12:0] io_ray_origin_delay_5_y_mant;
  reg  io_ray_origin_delay_5_z_sign;
  reg [5:0] io_ray_origin_delay_5_z_exp;
  reg [12:0] io_ray_origin_delay_5_z_mant;
  reg  io_ray_origin_delay_6_x_sign;
  reg [5:0] io_ray_origin_delay_6_x_exp;
  reg [12:0] io_ray_origin_delay_6_x_mant;
  reg  io_ray_origin_delay_6_y_sign;
  reg [5:0] io_ray_origin_delay_6_y_exp;
  reg [12:0] io_ray_origin_delay_6_y_mant;
  reg  io_ray_origin_delay_6_z_sign;
  reg [5:0] io_ray_origin_delay_6_z_exp;
  reg [12:0] io_ray_origin_delay_6_z_mant;
  reg  io_ray_origin_delay_7_x_sign;
  reg [5:0] io_ray_origin_delay_7_x_exp;
  reg [12:0] io_ray_origin_delay_7_x_mant;
  reg  io_ray_origin_delay_7_y_sign;
  reg [5:0] io_ray_origin_delay_7_y_exp;
  reg [12:0] io_ray_origin_delay_7_y_mant;
  reg  io_ray_origin_delay_7_z_sign;
  reg [5:0] io_ray_origin_delay_7_z_exp;
  reg [12:0] io_ray_origin_delay_7_z_mant;
  reg  io_ray_origin_delay_8_x_sign;
  reg [5:0] io_ray_origin_delay_8_x_exp;
  reg [12:0] io_ray_origin_delay_8_x_mant;
  reg  io_ray_origin_delay_8_y_sign;
  reg [5:0] io_ray_origin_delay_8_y_exp;
  reg [12:0] io_ray_origin_delay_8_y_mant;
  reg  io_ray_origin_delay_8_z_sign;
  reg [5:0] io_ray_origin_delay_8_z_exp;
  reg [12:0] io_ray_origin_delay_8_z_mant;
  reg  io_ray_origin_delay_9_x_sign;
  reg [5:0] io_ray_origin_delay_9_x_exp;
  reg [12:0] io_ray_origin_delay_9_x_mant;
  reg  io_ray_origin_delay_9_y_sign;
  reg [5:0] io_ray_origin_delay_9_y_exp;
  reg [12:0] io_ray_origin_delay_9_y_mant;
  reg  io_ray_origin_delay_9_z_sign;
  reg [5:0] io_ray_origin_delay_9_z_exp;
  reg [12:0] io_ray_origin_delay_9_z_mant;
  reg  io_ray_origin_delay_10_x_sign;
  reg [5:0] io_ray_origin_delay_10_x_exp;
  reg [12:0] io_ray_origin_delay_10_x_mant;
  reg  io_ray_origin_delay_10_y_sign;
  reg [5:0] io_ray_origin_delay_10_y_exp;
  reg [12:0] io_ray_origin_delay_10_y_mant;
  reg  io_ray_origin_delay_10_z_sign;
  reg [5:0] io_ray_origin_delay_10_z_exp;
  reg [12:0] io_ray_origin_delay_10_z_mant;
  reg  io_ray_origin_delay_11_x_sign;
  reg [5:0] io_ray_origin_delay_11_x_exp;
  reg [12:0] io_ray_origin_delay_11_x_mant;
  reg  io_ray_origin_delay_11_y_sign;
  reg [5:0] io_ray_origin_delay_11_y_exp;
  reg [12:0] io_ray_origin_delay_11_y_mant;
  reg  io_ray_origin_delay_11_z_sign;
  reg [5:0] io_ray_origin_delay_11_z_exp;
  reg [12:0] io_ray_origin_delay_11_z_mant;
  reg  io_ray_origin_delay_12_x_sign;
  reg [5:0] io_ray_origin_delay_12_x_exp;
  reg [12:0] io_ray_origin_delay_12_x_mant;
  reg  io_ray_origin_delay_12_y_sign;
  reg [5:0] io_ray_origin_delay_12_y_exp;
  reg [12:0] io_ray_origin_delay_12_y_mant;
  reg  io_ray_origin_delay_12_z_sign;
  reg [5:0] io_ray_origin_delay_12_z_exp;
  reg [12:0] io_ray_origin_delay_12_z_mant;
  reg  io_ray_origin_delay_13_x_sign;
  reg [5:0] io_ray_origin_delay_13_x_exp;
  reg [12:0] io_ray_origin_delay_13_x_mant;
  reg  io_ray_origin_delay_13_y_sign;
  reg [5:0] io_ray_origin_delay_13_y_exp;
  reg [12:0] io_ray_origin_delay_13_y_mant;
  reg  io_ray_origin_delay_13_z_sign;
  reg [5:0] io_ray_origin_delay_13_z_exp;
  reg [12:0] io_ray_origin_delay_13_z_mant;
  reg  io_ray_origin_delay_14_x_sign;
  reg [5:0] io_ray_origin_delay_14_x_exp;
  reg [12:0] io_ray_origin_delay_14_x_mant;
  reg  io_ray_origin_delay_14_y_sign;
  reg [5:0] io_ray_origin_delay_14_y_exp;
  reg [12:0] io_ray_origin_delay_14_y_mant;
  reg  io_ray_origin_delay_14_z_sign;
  reg [5:0] io_ray_origin_delay_14_z_exp;
  reg [12:0] io_ray_origin_delay_14_z_mant;
  reg  io_ray_origin_delay_15_x_sign;
  reg [5:0] io_ray_origin_delay_15_x_exp;
  reg [12:0] io_ray_origin_delay_15_x_mant;
  reg  io_ray_origin_delay_15_y_sign;
  reg [5:0] io_ray_origin_delay_15_y_exp;
  reg [12:0] io_ray_origin_delay_15_y_mant;
  reg  io_ray_origin_delay_15_z_sign;
  reg [5:0] io_ray_origin_delay_15_z_exp;
  reg [12:0] io_ray_origin_delay_15_z_mant;
  reg  io_ray_origin_delay_16_x_sign;
  reg [5:0] io_ray_origin_delay_16_x_exp;
  reg [12:0] io_ray_origin_delay_16_x_mant;
  reg  io_ray_origin_delay_16_y_sign;
  reg [5:0] io_ray_origin_delay_16_y_exp;
  reg [12:0] io_ray_origin_delay_16_y_mant;
  reg  io_ray_origin_delay_16_z_sign;
  reg [5:0] io_ray_origin_delay_16_z_exp;
  reg [12:0] io_ray_origin_delay_16_z_mant;
  reg  io_ray_origin_delay_17_x_sign;
  reg [5:0] io_ray_origin_delay_17_x_exp;
  reg [12:0] io_ray_origin_delay_17_x_mant;
  reg  io_ray_origin_delay_17_y_sign;
  reg [5:0] io_ray_origin_delay_17_y_exp;
  reg [12:0] io_ray_origin_delay_17_y_mant;
  reg  io_ray_origin_delay_17_z_sign;
  reg [5:0] io_ray_origin_delay_17_z_exp;
  reg [12:0] io_ray_origin_delay_17_z_mant;
  reg  origin_delayed_intersect_x_sign;
  reg [5:0] origin_delayed_intersect_x_exp;
  reg [12:0] origin_delayed_intersect_x_mant;
  reg  origin_delayed_intersect_y_sign;
  reg [5:0] origin_delayed_intersect_y_exp;
  reg [12:0] origin_delayed_intersect_y_mant;
  reg  origin_delayed_intersect_z_sign;
  reg [5:0] origin_delayed_intersect_z_exp;
  reg [12:0] origin_delayed_intersect_z_mant;
  wire  intersection_vld;
  wire  intersection_x_sign;
  wire [5:0] intersection_x_exp;
  wire [12:0] intersection_x_mant;
  wire  intersection_y_sign;
  wire [5:0] intersection_y_exp;
  wire [12:0] intersection_y_mant;
  wire  intersection_z_sign;
  wire [5:0] intersection_z_exp;
  wire [12:0] intersection_z_mant;
  reg  io_sphere_center_delay_1_x_sign;
  reg [5:0] io_sphere_center_delay_1_x_exp;
  reg [12:0] io_sphere_center_delay_1_x_mant;
  reg  io_sphere_center_delay_1_y_sign;
  reg [5:0] io_sphere_center_delay_1_y_exp;
  reg [12:0] io_sphere_center_delay_1_y_mant;
  reg  io_sphere_center_delay_1_z_sign;
  reg [5:0] io_sphere_center_delay_1_z_exp;
  reg [12:0] io_sphere_center_delay_1_z_mant;
  reg  io_sphere_center_delay_2_x_sign;
  reg [5:0] io_sphere_center_delay_2_x_exp;
  reg [12:0] io_sphere_center_delay_2_x_mant;
  reg  io_sphere_center_delay_2_y_sign;
  reg [5:0] io_sphere_center_delay_2_y_exp;
  reg [12:0] io_sphere_center_delay_2_y_mant;
  reg  io_sphere_center_delay_2_z_sign;
  reg [5:0] io_sphere_center_delay_2_z_exp;
  reg [12:0] io_sphere_center_delay_2_z_mant;
  reg  io_sphere_center_delay_3_x_sign;
  reg [5:0] io_sphere_center_delay_3_x_exp;
  reg [12:0] io_sphere_center_delay_3_x_mant;
  reg  io_sphere_center_delay_3_y_sign;
  reg [5:0] io_sphere_center_delay_3_y_exp;
  reg [12:0] io_sphere_center_delay_3_y_mant;
  reg  io_sphere_center_delay_3_z_sign;
  reg [5:0] io_sphere_center_delay_3_z_exp;
  reg [12:0] io_sphere_center_delay_3_z_mant;
  reg  io_sphere_center_delay_4_x_sign;
  reg [5:0] io_sphere_center_delay_4_x_exp;
  reg [12:0] io_sphere_center_delay_4_x_mant;
  reg  io_sphere_center_delay_4_y_sign;
  reg [5:0] io_sphere_center_delay_4_y_exp;
  reg [12:0] io_sphere_center_delay_4_y_mant;
  reg  io_sphere_center_delay_4_z_sign;
  reg [5:0] io_sphere_center_delay_4_z_exp;
  reg [12:0] io_sphere_center_delay_4_z_mant;
  reg  io_sphere_center_delay_5_x_sign;
  reg [5:0] io_sphere_center_delay_5_x_exp;
  reg [12:0] io_sphere_center_delay_5_x_mant;
  reg  io_sphere_center_delay_5_y_sign;
  reg [5:0] io_sphere_center_delay_5_y_exp;
  reg [12:0] io_sphere_center_delay_5_y_mant;
  reg  io_sphere_center_delay_5_z_sign;
  reg [5:0] io_sphere_center_delay_5_z_exp;
  reg [12:0] io_sphere_center_delay_5_z_mant;
  reg  io_sphere_center_delay_6_x_sign;
  reg [5:0] io_sphere_center_delay_6_x_exp;
  reg [12:0] io_sphere_center_delay_6_x_mant;
  reg  io_sphere_center_delay_6_y_sign;
  reg [5:0] io_sphere_center_delay_6_y_exp;
  reg [12:0] io_sphere_center_delay_6_y_mant;
  reg  io_sphere_center_delay_6_z_sign;
  reg [5:0] io_sphere_center_delay_6_z_exp;
  reg [12:0] io_sphere_center_delay_6_z_mant;
  reg  io_sphere_center_delay_7_x_sign;
  reg [5:0] io_sphere_center_delay_7_x_exp;
  reg [12:0] io_sphere_center_delay_7_x_mant;
  reg  io_sphere_center_delay_7_y_sign;
  reg [5:0] io_sphere_center_delay_7_y_exp;
  reg [12:0] io_sphere_center_delay_7_y_mant;
  reg  io_sphere_center_delay_7_z_sign;
  reg [5:0] io_sphere_center_delay_7_z_exp;
  reg [12:0] io_sphere_center_delay_7_z_mant;
  reg  io_sphere_center_delay_8_x_sign;
  reg [5:0] io_sphere_center_delay_8_x_exp;
  reg [12:0] io_sphere_center_delay_8_x_mant;
  reg  io_sphere_center_delay_8_y_sign;
  reg [5:0] io_sphere_center_delay_8_y_exp;
  reg [12:0] io_sphere_center_delay_8_y_mant;
  reg  io_sphere_center_delay_8_z_sign;
  reg [5:0] io_sphere_center_delay_8_z_exp;
  reg [12:0] io_sphere_center_delay_8_z_mant;
  reg  io_sphere_center_delay_9_x_sign;
  reg [5:0] io_sphere_center_delay_9_x_exp;
  reg [12:0] io_sphere_center_delay_9_x_mant;
  reg  io_sphere_center_delay_9_y_sign;
  reg [5:0] io_sphere_center_delay_9_y_exp;
  reg [12:0] io_sphere_center_delay_9_y_mant;
  reg  io_sphere_center_delay_9_z_sign;
  reg [5:0] io_sphere_center_delay_9_z_exp;
  reg [12:0] io_sphere_center_delay_9_z_mant;
  reg  io_sphere_center_delay_10_x_sign;
  reg [5:0] io_sphere_center_delay_10_x_exp;
  reg [12:0] io_sphere_center_delay_10_x_mant;
  reg  io_sphere_center_delay_10_y_sign;
  reg [5:0] io_sphere_center_delay_10_y_exp;
  reg [12:0] io_sphere_center_delay_10_y_mant;
  reg  io_sphere_center_delay_10_z_sign;
  reg [5:0] io_sphere_center_delay_10_z_exp;
  reg [12:0] io_sphere_center_delay_10_z_mant;
  reg  io_sphere_center_delay_11_x_sign;
  reg [5:0] io_sphere_center_delay_11_x_exp;
  reg [12:0] io_sphere_center_delay_11_x_mant;
  reg  io_sphere_center_delay_11_y_sign;
  reg [5:0] io_sphere_center_delay_11_y_exp;
  reg [12:0] io_sphere_center_delay_11_y_mant;
  reg  io_sphere_center_delay_11_z_sign;
  reg [5:0] io_sphere_center_delay_11_z_exp;
  reg [12:0] io_sphere_center_delay_11_z_mant;
  reg  io_sphere_center_delay_12_x_sign;
  reg [5:0] io_sphere_center_delay_12_x_exp;
  reg [12:0] io_sphere_center_delay_12_x_mant;
  reg  io_sphere_center_delay_12_y_sign;
  reg [5:0] io_sphere_center_delay_12_y_exp;
  reg [12:0] io_sphere_center_delay_12_y_mant;
  reg  io_sphere_center_delay_12_z_sign;
  reg [5:0] io_sphere_center_delay_12_z_exp;
  reg [12:0] io_sphere_center_delay_12_z_mant;
  reg  io_sphere_center_delay_13_x_sign;
  reg [5:0] io_sphere_center_delay_13_x_exp;
  reg [12:0] io_sphere_center_delay_13_x_mant;
  reg  io_sphere_center_delay_13_y_sign;
  reg [5:0] io_sphere_center_delay_13_y_exp;
  reg [12:0] io_sphere_center_delay_13_y_mant;
  reg  io_sphere_center_delay_13_z_sign;
  reg [5:0] io_sphere_center_delay_13_z_exp;
  reg [12:0] io_sphere_center_delay_13_z_mant;
  reg  io_sphere_center_delay_14_x_sign;
  reg [5:0] io_sphere_center_delay_14_x_exp;
  reg [12:0] io_sphere_center_delay_14_x_mant;
  reg  io_sphere_center_delay_14_y_sign;
  reg [5:0] io_sphere_center_delay_14_y_exp;
  reg [12:0] io_sphere_center_delay_14_y_mant;
  reg  io_sphere_center_delay_14_z_sign;
  reg [5:0] io_sphere_center_delay_14_z_exp;
  reg [12:0] io_sphere_center_delay_14_z_mant;
  reg  io_sphere_center_delay_15_x_sign;
  reg [5:0] io_sphere_center_delay_15_x_exp;
  reg [12:0] io_sphere_center_delay_15_x_mant;
  reg  io_sphere_center_delay_15_y_sign;
  reg [5:0] io_sphere_center_delay_15_y_exp;
  reg [12:0] io_sphere_center_delay_15_y_mant;
  reg  io_sphere_center_delay_15_z_sign;
  reg [5:0] io_sphere_center_delay_15_z_exp;
  reg [12:0] io_sphere_center_delay_15_z_mant;
  reg  io_sphere_center_delay_16_x_sign;
  reg [5:0] io_sphere_center_delay_16_x_exp;
  reg [12:0] io_sphere_center_delay_16_x_mant;
  reg  io_sphere_center_delay_16_y_sign;
  reg [5:0] io_sphere_center_delay_16_y_exp;
  reg [12:0] io_sphere_center_delay_16_y_mant;
  reg  io_sphere_center_delay_16_z_sign;
  reg [5:0] io_sphere_center_delay_16_z_exp;
  reg [12:0] io_sphere_center_delay_16_z_mant;
  reg  io_sphere_center_delay_17_x_sign;
  reg [5:0] io_sphere_center_delay_17_x_exp;
  reg [12:0] io_sphere_center_delay_17_x_mant;
  reg  io_sphere_center_delay_17_y_sign;
  reg [5:0] io_sphere_center_delay_17_y_exp;
  reg [12:0] io_sphere_center_delay_17_y_mant;
  reg  io_sphere_center_delay_17_z_sign;
  reg [5:0] io_sphere_center_delay_17_z_exp;
  reg [12:0] io_sphere_center_delay_17_z_mant;
  reg  io_sphere_center_delay_18_x_sign;
  reg [5:0] io_sphere_center_delay_18_x_exp;
  reg [12:0] io_sphere_center_delay_18_x_mant;
  reg  io_sphere_center_delay_18_y_sign;
  reg [5:0] io_sphere_center_delay_18_y_exp;
  reg [12:0] io_sphere_center_delay_18_y_mant;
  reg  io_sphere_center_delay_18_z_sign;
  reg [5:0] io_sphere_center_delay_18_z_exp;
  reg [12:0] io_sphere_center_delay_18_z_mant;
  reg  io_sphere_center_delay_19_x_sign;
  reg [5:0] io_sphere_center_delay_19_x_exp;
  reg [12:0] io_sphere_center_delay_19_x_mant;
  reg  io_sphere_center_delay_19_y_sign;
  reg [5:0] io_sphere_center_delay_19_y_exp;
  reg [12:0] io_sphere_center_delay_19_y_mant;
  reg  io_sphere_center_delay_19_z_sign;
  reg [5:0] io_sphere_center_delay_19_z_exp;
  reg [12:0] io_sphere_center_delay_19_z_mant;
  reg  io_sphere_center_delay_20_x_sign;
  reg [5:0] io_sphere_center_delay_20_x_exp;
  reg [12:0] io_sphere_center_delay_20_x_mant;
  reg  io_sphere_center_delay_20_y_sign;
  reg [5:0] io_sphere_center_delay_20_y_exp;
  reg [12:0] io_sphere_center_delay_20_y_mant;
  reg  io_sphere_center_delay_20_z_sign;
  reg [5:0] io_sphere_center_delay_20_z_exp;
  reg [12:0] io_sphere_center_delay_20_z_mant;
  reg  io_sphere_center_delay_21_x_sign;
  reg [5:0] io_sphere_center_delay_21_x_exp;
  reg [12:0] io_sphere_center_delay_21_x_mant;
  reg  io_sphere_center_delay_21_y_sign;
  reg [5:0] io_sphere_center_delay_21_y_exp;
  reg [12:0] io_sphere_center_delay_21_y_mant;
  reg  io_sphere_center_delay_21_z_sign;
  reg [5:0] io_sphere_center_delay_21_z_exp;
  reg [12:0] io_sphere_center_delay_21_z_mant;
  reg  center_delayed_x_sign;
  reg [5:0] center_delayed_x_exp;
  reg [12:0] center_delayed_x_mant;
  reg  center_delayed_y_sign;
  reg [5:0] center_delayed_y_exp;
  reg [12:0] center_delayed_y_mant;
  reg  center_delayed_z_sign;
  reg [5:0] center_delayed_z_exp;
  reg [12:0] center_delayed_z_mant;
  wire  normal_raw_vld;
  wire  normal_raw_x_sign;
  wire [5:0] normal_raw_x_exp;
  wire [12:0] normal_raw_x_mant;
  wire  normal_raw_y_sign;
  wire [5:0] normal_raw_y_exp;
  wire [12:0] normal_raw_y_mant;
  wire  normal_raw_z_sign;
  wire [5:0] normal_raw_z_exp;
  wire [12:0] normal_raw_z_mant;
  wire  normal_vld;
  wire  normal_x_sign;
  wire [5:0] normal_x_exp;
  wire [12:0] normal_x_mant;
  wire  normal_y_sign;
  wire [5:0] normal_y_exp;
  wire [12:0] normal_y_mant;
  wire  normal_z_sign;
  wire [5:0] normal_z_exp;
  wire [12:0] normal_z_mant;
  reg  dir_delayed_intersect_delay_1_x_sign;
  reg [5:0] dir_delayed_intersect_delay_1_x_exp;
  reg [12:0] dir_delayed_intersect_delay_1_x_mant;
  reg  dir_delayed_intersect_delay_1_y_sign;
  reg [5:0] dir_delayed_intersect_delay_1_y_exp;
  reg [12:0] dir_delayed_intersect_delay_1_y_mant;
  reg  dir_delayed_intersect_delay_1_z_sign;
  reg [5:0] dir_delayed_intersect_delay_1_z_exp;
  reg [12:0] dir_delayed_intersect_delay_1_z_mant;
  reg  dir_delayed_intersect_delay_2_x_sign;
  reg [5:0] dir_delayed_intersect_delay_2_x_exp;
  reg [12:0] dir_delayed_intersect_delay_2_x_mant;
  reg  dir_delayed_intersect_delay_2_y_sign;
  reg [5:0] dir_delayed_intersect_delay_2_y_exp;
  reg [12:0] dir_delayed_intersect_delay_2_y_mant;
  reg  dir_delayed_intersect_delay_2_z_sign;
  reg [5:0] dir_delayed_intersect_delay_2_z_exp;
  reg [12:0] dir_delayed_intersect_delay_2_z_mant;
  reg  dir_delayed_intersect_delay_3_x_sign;
  reg [5:0] dir_delayed_intersect_delay_3_x_exp;
  reg [12:0] dir_delayed_intersect_delay_3_x_mant;
  reg  dir_delayed_intersect_delay_3_y_sign;
  reg [5:0] dir_delayed_intersect_delay_3_y_exp;
  reg [12:0] dir_delayed_intersect_delay_3_y_mant;
  reg  dir_delayed_intersect_delay_3_z_sign;
  reg [5:0] dir_delayed_intersect_delay_3_z_exp;
  reg [12:0] dir_delayed_intersect_delay_3_z_mant;
  reg  dir_delayed_intersect_delay_4_x_sign;
  reg [5:0] dir_delayed_intersect_delay_4_x_exp;
  reg [12:0] dir_delayed_intersect_delay_4_x_mant;
  reg  dir_delayed_intersect_delay_4_y_sign;
  reg [5:0] dir_delayed_intersect_delay_4_y_exp;
  reg [12:0] dir_delayed_intersect_delay_4_y_mant;
  reg  dir_delayed_intersect_delay_4_z_sign;
  reg [5:0] dir_delayed_intersect_delay_4_z_exp;
  reg [12:0] dir_delayed_intersect_delay_4_z_mant;
  reg  dir_delayed_intersect_delay_5_x_sign;
  reg [5:0] dir_delayed_intersect_delay_5_x_exp;
  reg [12:0] dir_delayed_intersect_delay_5_x_mant;
  reg  dir_delayed_intersect_delay_5_y_sign;
  reg [5:0] dir_delayed_intersect_delay_5_y_exp;
  reg [12:0] dir_delayed_intersect_delay_5_y_mant;
  reg  dir_delayed_intersect_delay_5_z_sign;
  reg [5:0] dir_delayed_intersect_delay_5_z_exp;
  reg [12:0] dir_delayed_intersect_delay_5_z_mant;
  reg  dir_delayed_intersect_delay_6_x_sign;
  reg [5:0] dir_delayed_intersect_delay_6_x_exp;
  reg [12:0] dir_delayed_intersect_delay_6_x_mant;
  reg  dir_delayed_intersect_delay_6_y_sign;
  reg [5:0] dir_delayed_intersect_delay_6_y_exp;
  reg [12:0] dir_delayed_intersect_delay_6_y_mant;
  reg  dir_delayed_intersect_delay_6_z_sign;
  reg [5:0] dir_delayed_intersect_delay_6_z_exp;
  reg [12:0] dir_delayed_intersect_delay_6_z_mant;
  reg  dir_delayed_intersect_delay_7_x_sign;
  reg [5:0] dir_delayed_intersect_delay_7_x_exp;
  reg [12:0] dir_delayed_intersect_delay_7_x_mant;
  reg  dir_delayed_intersect_delay_7_y_sign;
  reg [5:0] dir_delayed_intersect_delay_7_y_exp;
  reg [12:0] dir_delayed_intersect_delay_7_y_mant;
  reg  dir_delayed_intersect_delay_7_z_sign;
  reg [5:0] dir_delayed_intersect_delay_7_z_exp;
  reg [12:0] dir_delayed_intersect_delay_7_z_mant;
  reg  dir_delayed_intersect_delay_8_x_sign;
  reg [5:0] dir_delayed_intersect_delay_8_x_exp;
  reg [12:0] dir_delayed_intersect_delay_8_x_mant;
  reg  dir_delayed_intersect_delay_8_y_sign;
  reg [5:0] dir_delayed_intersect_delay_8_y_exp;
  reg [12:0] dir_delayed_intersect_delay_8_y_mant;
  reg  dir_delayed_intersect_delay_8_z_sign;
  reg [5:0] dir_delayed_intersect_delay_8_z_exp;
  reg [12:0] dir_delayed_intersect_delay_8_z_mant;
  reg  dir_delayed_intersect_delay_9_x_sign;
  reg [5:0] dir_delayed_intersect_delay_9_x_exp;
  reg [12:0] dir_delayed_intersect_delay_9_x_mant;
  reg  dir_delayed_intersect_delay_9_y_sign;
  reg [5:0] dir_delayed_intersect_delay_9_y_exp;
  reg [12:0] dir_delayed_intersect_delay_9_y_mant;
  reg  dir_delayed_intersect_delay_9_z_sign;
  reg [5:0] dir_delayed_intersect_delay_9_z_exp;
  reg [12:0] dir_delayed_intersect_delay_9_z_mant;
  reg  dir_delayed_intersect_delay_10_x_sign;
  reg [5:0] dir_delayed_intersect_delay_10_x_exp;
  reg [12:0] dir_delayed_intersect_delay_10_x_mant;
  reg  dir_delayed_intersect_delay_10_y_sign;
  reg [5:0] dir_delayed_intersect_delay_10_y_exp;
  reg [12:0] dir_delayed_intersect_delay_10_y_mant;
  reg  dir_delayed_intersect_delay_10_z_sign;
  reg [5:0] dir_delayed_intersect_delay_10_z_exp;
  reg [12:0] dir_delayed_intersect_delay_10_z_mant;
  reg  dir_delayed_intersect_delay_11_x_sign;
  reg [5:0] dir_delayed_intersect_delay_11_x_exp;
  reg [12:0] dir_delayed_intersect_delay_11_x_mant;
  reg  dir_delayed_intersect_delay_11_y_sign;
  reg [5:0] dir_delayed_intersect_delay_11_y_exp;
  reg [12:0] dir_delayed_intersect_delay_11_y_mant;
  reg  dir_delayed_intersect_delay_11_z_sign;
  reg [5:0] dir_delayed_intersect_delay_11_z_exp;
  reg [12:0] dir_delayed_intersect_delay_11_z_mant;
  reg  dir_delayed_intersect_delay_12_x_sign;
  reg [5:0] dir_delayed_intersect_delay_12_x_exp;
  reg [12:0] dir_delayed_intersect_delay_12_x_mant;
  reg  dir_delayed_intersect_delay_12_y_sign;
  reg [5:0] dir_delayed_intersect_delay_12_y_exp;
  reg [12:0] dir_delayed_intersect_delay_12_y_mant;
  reg  dir_delayed_intersect_delay_12_z_sign;
  reg [5:0] dir_delayed_intersect_delay_12_z_exp;
  reg [12:0] dir_delayed_intersect_delay_12_z_mant;
  reg  dir_delayed_intersect_delay_13_x_sign;
  reg [5:0] dir_delayed_intersect_delay_13_x_exp;
  reg [12:0] dir_delayed_intersect_delay_13_x_mant;
  reg  dir_delayed_intersect_delay_13_y_sign;
  reg [5:0] dir_delayed_intersect_delay_13_y_exp;
  reg [12:0] dir_delayed_intersect_delay_13_y_mant;
  reg  dir_delayed_intersect_delay_13_z_sign;
  reg [5:0] dir_delayed_intersect_delay_13_z_exp;
  reg [12:0] dir_delayed_intersect_delay_13_z_mant;
  reg  dir_delayed_intersect_delay_14_x_sign;
  reg [5:0] dir_delayed_intersect_delay_14_x_exp;
  reg [12:0] dir_delayed_intersect_delay_14_x_mant;
  reg  dir_delayed_intersect_delay_14_y_sign;
  reg [5:0] dir_delayed_intersect_delay_14_y_exp;
  reg [12:0] dir_delayed_intersect_delay_14_y_mant;
  reg  dir_delayed_intersect_delay_14_z_sign;
  reg [5:0] dir_delayed_intersect_delay_14_z_exp;
  reg [12:0] dir_delayed_intersect_delay_14_z_mant;
  reg  dir_delayed_dot_normal_x_sign;
  reg [5:0] dir_delayed_dot_normal_x_exp;
  reg [12:0] dir_delayed_dot_normal_x_mant;
  reg  dir_delayed_dot_normal_y_sign;
  reg [5:0] dir_delayed_dot_normal_y_exp;
  reg [12:0] dir_delayed_dot_normal_y_mant;
  reg  dir_delayed_dot_normal_z_sign;
  reg [5:0] dir_delayed_dot_normal_z_exp;
  reg [12:0] dir_delayed_dot_normal_z_mant;
  wire  dir_dot_normal_vld;
  wire  dir_dot_normal_sign;
  wire [5:0] dir_dot_normal_exp;
  wire [12:0] dir_dot_normal_mant;
  wire  dir_dot_normal_x2_vld;
  wire  dir_dot_normal_x2_sign;
  wire [5:0] dir_dot_normal_x2_exp;
  wire [12:0] dir_dot_normal_x2_mant;
  reg  dir_dot_normal_vld_regNext;
  reg  dir_dot_normal_sign_regNext;
  reg [5:0] dir_dot_normal_exp_regNext;
  reg [12:0] dir_dot_normal_mant_regNext;
  reg  normal_delay_1_x_sign;
  reg [5:0] normal_delay_1_x_exp;
  reg [12:0] normal_delay_1_x_mant;
  reg  normal_delay_1_y_sign;
  reg [5:0] normal_delay_1_y_exp;
  reg [12:0] normal_delay_1_y_mant;
  reg  normal_delay_1_z_sign;
  reg [5:0] normal_delay_1_z_exp;
  reg [12:0] normal_delay_1_z_mant;
  reg  normal_delay_2_x_sign;
  reg [5:0] normal_delay_2_x_exp;
  reg [12:0] normal_delay_2_x_mant;
  reg  normal_delay_2_y_sign;
  reg [5:0] normal_delay_2_y_exp;
  reg [12:0] normal_delay_2_y_mant;
  reg  normal_delay_2_z_sign;
  reg [5:0] normal_delay_2_z_exp;
  reg [12:0] normal_delay_2_z_mant;
  reg  normal_delay_3_x_sign;
  reg [5:0] normal_delay_3_x_exp;
  reg [12:0] normal_delay_3_x_mant;
  reg  normal_delay_3_y_sign;
  reg [5:0] normal_delay_3_y_exp;
  reg [12:0] normal_delay_3_y_mant;
  reg  normal_delay_3_z_sign;
  reg [5:0] normal_delay_3_z_exp;
  reg [12:0] normal_delay_3_z_mant;
  reg  normal_delay_4_x_sign;
  reg [5:0] normal_delay_4_x_exp;
  reg [12:0] normal_delay_4_x_mant;
  reg  normal_delay_4_y_sign;
  reg [5:0] normal_delay_4_y_exp;
  reg [12:0] normal_delay_4_y_mant;
  reg  normal_delay_4_z_sign;
  reg [5:0] normal_delay_4_z_exp;
  reg [12:0] normal_delay_4_z_mant;
  reg  normal_delay_5_x_sign;
  reg [5:0] normal_delay_5_x_exp;
  reg [12:0] normal_delay_5_x_mant;
  reg  normal_delay_5_y_sign;
  reg [5:0] normal_delay_5_y_exp;
  reg [12:0] normal_delay_5_y_mant;
  reg  normal_delay_5_z_sign;
  reg [5:0] normal_delay_5_z_exp;
  reg [12:0] normal_delay_5_z_mant;
  reg  normal_delay_6_x_sign;
  reg [5:0] normal_delay_6_x_exp;
  reg [12:0] normal_delay_6_x_mant;
  reg  normal_delay_6_y_sign;
  reg [5:0] normal_delay_6_y_exp;
  reg [12:0] normal_delay_6_y_mant;
  reg  normal_delay_6_z_sign;
  reg [5:0] normal_delay_6_z_exp;
  reg [12:0] normal_delay_6_z_mant;
  reg  normal_delayed_dir_mirror_x_sign;
  reg [5:0] normal_delayed_dir_mirror_x_exp;
  reg [12:0] normal_delayed_dir_mirror_x_mant;
  reg  normal_delayed_dir_mirror_y_sign;
  reg [5:0] normal_delayed_dir_mirror_y_exp;
  reg [12:0] normal_delayed_dir_mirror_y_mant;
  reg  normal_delayed_dir_mirror_z_sign;
  reg [5:0] normal_delayed_dir_mirror_z_exp;
  reg [12:0] normal_delayed_dir_mirror_z_mant;
  wire  dir_mirror_vld;
  wire  dir_mirror_x_sign;
  wire [5:0] dir_mirror_x_exp;
  wire [12:0] dir_mirror_x_mant;
  wire  dir_mirror_y_sign;
  wire [5:0] dir_mirror_y_exp;
  wire [12:0] dir_mirror_y_mant;
  wire  dir_mirror_z_sign;
  wire [5:0] dir_mirror_z_exp;
  wire [12:0] dir_mirror_z_mant;
  reg  dir_delayed_dot_normal_delay_1_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_1_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_1_x_mant;
  reg  dir_delayed_dot_normal_delay_1_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_1_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_1_y_mant;
  reg  dir_delayed_dot_normal_delay_1_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_1_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_1_z_mant;
  reg  dir_delayed_dot_normal_delay_2_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_2_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_2_x_mant;
  reg  dir_delayed_dot_normal_delay_2_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_2_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_2_y_mant;
  reg  dir_delayed_dot_normal_delay_2_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_2_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_2_z_mant;
  reg  dir_delayed_dot_normal_delay_3_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_3_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_3_x_mant;
  reg  dir_delayed_dot_normal_delay_3_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_3_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_3_y_mant;
  reg  dir_delayed_dot_normal_delay_3_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_3_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_3_z_mant;
  reg  dir_delayed_dot_normal_delay_4_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_4_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_4_x_mant;
  reg  dir_delayed_dot_normal_delay_4_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_4_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_4_y_mant;
  reg  dir_delayed_dot_normal_delay_4_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_4_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_4_z_mant;
  reg  dir_delayed_dot_normal_delay_5_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_5_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_5_x_mant;
  reg  dir_delayed_dot_normal_delay_5_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_5_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_5_y_mant;
  reg  dir_delayed_dot_normal_delay_5_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_5_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_5_z_mant;
  reg  dir_delayed_dot_normal_delay_6_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_6_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_6_x_mant;
  reg  dir_delayed_dot_normal_delay_6_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_6_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_6_y_mant;
  reg  dir_delayed_dot_normal_delay_6_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_6_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_6_z_mant;
  reg  dir_delayed_dot_normal_delay_7_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_7_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_7_x_mant;
  reg  dir_delayed_dot_normal_delay_7_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_7_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_7_y_mant;
  reg  dir_delayed_dot_normal_delay_7_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_7_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_7_z_mant;
  reg  dir_delayed_dot_normal_delay_8_x_sign;
  reg [5:0] dir_delayed_dot_normal_delay_8_x_exp;
  reg [12:0] dir_delayed_dot_normal_delay_8_x_mant;
  reg  dir_delayed_dot_normal_delay_8_y_sign;
  reg [5:0] dir_delayed_dot_normal_delay_8_y_exp;
  reg [12:0] dir_delayed_dot_normal_delay_8_y_mant;
  reg  dir_delayed_dot_normal_delay_8_z_sign;
  reg [5:0] dir_delayed_dot_normal_delay_8_z_exp;
  reg [12:0] dir_delayed_dot_normal_delay_8_z_mant;
  reg  dir_delayed_reflect_dir_x_sign;
  reg [5:0] dir_delayed_reflect_dir_x_exp;
  reg [12:0] dir_delayed_reflect_dir_x_mant;
  reg  dir_delayed_reflect_dir_y_sign;
  reg [5:0] dir_delayed_reflect_dir_y_exp;
  reg [12:0] dir_delayed_reflect_dir_y_mant;
  reg  dir_delayed_reflect_dir_z_sign;
  reg [5:0] dir_delayed_reflect_dir_z_exp;
  reg [12:0] dir_delayed_reflect_dir_z_mant;
  wire  reflect_dir_vld;
  wire  reflect_dir_x_sign;
  wire [5:0] reflect_dir_x_exp;
  wire [12:0] reflect_dir_x_mant;
  wire  reflect_dir_y_sign;
  wire [5:0] reflect_dir_y_exp;
  wire [12:0] reflect_dir_y_mant;
  wire  reflect_dir_z_sign;
  wire [5:0] reflect_dir_z_exp;
  wire [12:0] reflect_dir_z_mant;
  reg  intersects_tca_delay_1_1_;
  reg  intersects_tca_delay_2_1_;
  reg  intersects_tca_delay_3_1_;
  reg  intersects_tca_delay_4;
  reg  intersects_tca_delay_5;
  reg  intersects_tca_delay_6;
  reg  intersects_tca_delay_7;
  reg  intersects_tca_delay_8;
  reg  intersects_tca_delay_9;
  reg  intersects_tca_delay_10;
  reg  intersects_tca_delay_11;
  reg  intersects_tca_delay_12;
  reg  intersects_tca_delay_13;
  reg  intersects_tca_delay_14;
  reg  intersects_tca_delay_15;
  reg  intersects_tca_delay_16;
  reg  intersects_tca_delay_17;
  reg  intersects_tca_delay_18;
  reg  intersects_tca_delay_19;
  reg  intersects_tca_delay_20;
  reg  intersects_tca_delay_21;
  reg  intersects_tca_delay_22;
  reg  intersects_tca_delay_23;
  reg  intersects_tca_delay_24;
  reg  intersects_tca_delay_25;
  reg  intersects_tca_delay_26;
  reg  intersects_tca_delay_27;
  reg  intersects_tca_delay_28;
  reg  intersects_tca_delay_29;
  reg  intersects_tca_delay_30;
  reg  intersects_tca_delay_31;
  reg  intersects_tca_delay_32;
  reg  intersects_tca_delay_33;
  reg  intersects_tca_delay_34;
  reg  intersects_tca_delay_35;
  reg  intersects_tca_delayed;
  reg  intersects_d2_delay_1;
  reg  intersects_d2_delay_2;
  reg  intersects_d2_delay_3;
  reg  intersects_d2_delay_4;
  reg  intersects_d2_delay_5;
  reg  intersects_d2_delay_6;
  reg  intersects_d2_delay_7;
  reg  intersects_d2_delay_8;
  reg  intersects_d2_delay_9;
  reg  intersects_d2_delay_10;
  reg  intersects_d2_delay_11;
  reg  intersects_d2_delay_12;
  reg  intersects_d2_delay_13;
  reg  intersects_d2_delay_14;
  reg  intersects_d2_delay_15;
  reg  intersects_d2_delay_16;
  reg  intersects_d2_delay_17;
  reg  intersects_d2_delay_18;
  reg  intersects_d2_delay_19;
  reg  intersects_d2_delay_20;
  reg  intersects_d2_delay_21;
  reg  intersects_d2_delay_22;
  reg  intersects_d2_delay_23;
  reg  intersects_d2_delay_24;
  reg  intersects_d2_delay_25;
  reg  intersects_d2_delay_26;
  reg  intersects_d2_delay_27;
  reg  intersects_d2_delay_28;
  reg  intersects_d2_delay_29;
  reg  intersects_d2_delayed;
  reg  t_delay_1_sign;
  reg [5:0] t_delay_1_exp;
  reg [12:0] t_delay_1_mant;
  reg  t_delay_2_sign;
  reg [5:0] t_delay_2_exp;
  reg [12:0] t_delay_2_mant;
  reg  t_delay_3_sign;
  reg [5:0] t_delay_3_exp;
  reg [12:0] t_delay_3_mant;
  reg  t_delay_4_sign;
  reg [5:0] t_delay_4_exp;
  reg [12:0] t_delay_4_mant;
  reg  t_delay_5_sign;
  reg [5:0] t_delay_5_exp;
  reg [12:0] t_delay_5_mant;
  reg  t_delay_6_sign;
  reg [5:0] t_delay_6_exp;
  reg [12:0] t_delay_6_mant;
  reg  t_delay_7_sign;
  reg [5:0] t_delay_7_exp;
  reg [12:0] t_delay_7_mant;
  reg  t_delay_8_sign;
  reg [5:0] t_delay_8_exp;
  reg [12:0] t_delay_8_mant;
  reg  t_delay_9_sign;
  reg [5:0] t_delay_9_exp;
  reg [12:0] t_delay_9_mant;
  reg  t_delay_10_sign;
  reg [5:0] t_delay_10_exp;
  reg [12:0] t_delay_10_mant;
  reg  t_delay_11_sign;
  reg [5:0] t_delay_11_exp;
  reg [12:0] t_delay_11_mant;
  reg  t_delay_12_sign;
  reg [5:0] t_delay_12_exp;
  reg [12:0] t_delay_12_mant;
  reg  t_delay_13_sign;
  reg [5:0] t_delay_13_exp;
  reg [12:0] t_delay_13_mant;
  reg  t_delay_14_sign;
  reg [5:0] t_delay_14_exp;
  reg [12:0] t_delay_14_mant;
  reg  t_delay_15_sign;
  reg [5:0] t_delay_15_exp;
  reg [12:0] t_delay_15_mant;
  reg  t_delay_16_sign;
  reg [5:0] t_delay_16_exp;
  reg [12:0] t_delay_16_mant;
  reg  t_delay_17_sign;
  reg [5:0] t_delay_17_exp;
  reg [12:0] t_delay_17_mant;
  reg  t_delay_18_sign;
  reg [5:0] t_delay_18_exp;
  reg [12:0] t_delay_18_mant;
  reg  t_delay_19_sign;
  reg [5:0] t_delay_19_exp;
  reg [12:0] t_delay_19_mant;
  reg  t_delay_20_sign;
  reg [5:0] t_delay_20_exp;
  reg [12:0] t_delay_20_mant;
  reg  t_delay_21_sign;
  reg [5:0] t_delay_21_exp;
  reg [12:0] t_delay_21_mant;
  reg  t_delay_22_sign;
  reg [5:0] t_delay_22_exp;
  reg [12:0] t_delay_22_mant;
  reg  t_delay_23_sign;
  reg [5:0] t_delay_23_exp;
  reg [12:0] t_delay_23_mant;
  reg  t_delay_24_sign;
  reg [5:0] t_delay_24_exp;
  reg [12:0] t_delay_24_mant;
  reg  t_delay_25_sign;
  reg [5:0] t_delay_25_exp;
  reg [12:0] t_delay_25_mant;
  reg  t_delayed_sign;
  reg [5:0] t_delayed_exp;
  reg [12:0] t_delayed_mant;
  reg  intersection_delay_1_x_sign;
  reg [5:0] intersection_delay_1_x_exp;
  reg [12:0] intersection_delay_1_x_mant;
  reg  intersection_delay_1_y_sign;
  reg [5:0] intersection_delay_1_y_exp;
  reg [12:0] intersection_delay_1_y_mant;
  reg  intersection_delay_1_z_sign;
  reg [5:0] intersection_delay_1_z_exp;
  reg [12:0] intersection_delay_1_z_mant;
  reg  intersection_delay_2_x_sign;
  reg [5:0] intersection_delay_2_x_exp;
  reg [12:0] intersection_delay_2_x_mant;
  reg  intersection_delay_2_y_sign;
  reg [5:0] intersection_delay_2_y_exp;
  reg [12:0] intersection_delay_2_y_mant;
  reg  intersection_delay_2_z_sign;
  reg [5:0] intersection_delay_2_z_exp;
  reg [12:0] intersection_delay_2_z_mant;
  reg  intersection_delay_3_x_sign;
  reg [5:0] intersection_delay_3_x_exp;
  reg [12:0] intersection_delay_3_x_mant;
  reg  intersection_delay_3_y_sign;
  reg [5:0] intersection_delay_3_y_exp;
  reg [12:0] intersection_delay_3_y_mant;
  reg  intersection_delay_3_z_sign;
  reg [5:0] intersection_delay_3_z_exp;
  reg [12:0] intersection_delay_3_z_mant;
  reg  intersection_delay_4_x_sign;
  reg [5:0] intersection_delay_4_x_exp;
  reg [12:0] intersection_delay_4_x_mant;
  reg  intersection_delay_4_y_sign;
  reg [5:0] intersection_delay_4_y_exp;
  reg [12:0] intersection_delay_4_y_mant;
  reg  intersection_delay_4_z_sign;
  reg [5:0] intersection_delay_4_z_exp;
  reg [12:0] intersection_delay_4_z_mant;
  reg  intersection_delay_5_x_sign;
  reg [5:0] intersection_delay_5_x_exp;
  reg [12:0] intersection_delay_5_x_mant;
  reg  intersection_delay_5_y_sign;
  reg [5:0] intersection_delay_5_y_exp;
  reg [12:0] intersection_delay_5_y_mant;
  reg  intersection_delay_5_z_sign;
  reg [5:0] intersection_delay_5_z_exp;
  reg [12:0] intersection_delay_5_z_mant;
  reg  intersection_delay_6_x_sign;
  reg [5:0] intersection_delay_6_x_exp;
  reg [12:0] intersection_delay_6_x_mant;
  reg  intersection_delay_6_y_sign;
  reg [5:0] intersection_delay_6_y_exp;
  reg [12:0] intersection_delay_6_y_mant;
  reg  intersection_delay_6_z_sign;
  reg [5:0] intersection_delay_6_z_exp;
  reg [12:0] intersection_delay_6_z_mant;
  reg  intersection_delay_7_x_sign;
  reg [5:0] intersection_delay_7_x_exp;
  reg [12:0] intersection_delay_7_x_mant;
  reg  intersection_delay_7_y_sign;
  reg [5:0] intersection_delay_7_y_exp;
  reg [12:0] intersection_delay_7_y_mant;
  reg  intersection_delay_7_z_sign;
  reg [5:0] intersection_delay_7_z_exp;
  reg [12:0] intersection_delay_7_z_mant;
  reg  intersection_delay_8_x_sign;
  reg [5:0] intersection_delay_8_x_exp;
  reg [12:0] intersection_delay_8_x_mant;
  reg  intersection_delay_8_y_sign;
  reg [5:0] intersection_delay_8_y_exp;
  reg [12:0] intersection_delay_8_y_mant;
  reg  intersection_delay_8_z_sign;
  reg [5:0] intersection_delay_8_z_exp;
  reg [12:0] intersection_delay_8_z_mant;
  reg  intersection_delay_9_x_sign;
  reg [5:0] intersection_delay_9_x_exp;
  reg [12:0] intersection_delay_9_x_mant;
  reg  intersection_delay_9_y_sign;
  reg [5:0] intersection_delay_9_y_exp;
  reg [12:0] intersection_delay_9_y_mant;
  reg  intersection_delay_9_z_sign;
  reg [5:0] intersection_delay_9_z_exp;
  reg [12:0] intersection_delay_9_z_mant;
  reg  intersection_delay_10_x_sign;
  reg [5:0] intersection_delay_10_x_exp;
  reg [12:0] intersection_delay_10_x_mant;
  reg  intersection_delay_10_y_sign;
  reg [5:0] intersection_delay_10_y_exp;
  reg [12:0] intersection_delay_10_y_mant;
  reg  intersection_delay_10_z_sign;
  reg [5:0] intersection_delay_10_z_exp;
  reg [12:0] intersection_delay_10_z_mant;
  reg  intersection_delay_11_x_sign;
  reg [5:0] intersection_delay_11_x_exp;
  reg [12:0] intersection_delay_11_x_mant;
  reg  intersection_delay_11_y_sign;
  reg [5:0] intersection_delay_11_y_exp;
  reg [12:0] intersection_delay_11_y_mant;
  reg  intersection_delay_11_z_sign;
  reg [5:0] intersection_delay_11_z_exp;
  reg [12:0] intersection_delay_11_z_mant;
  reg  intersection_delay_12_x_sign;
  reg [5:0] intersection_delay_12_x_exp;
  reg [12:0] intersection_delay_12_x_mant;
  reg  intersection_delay_12_y_sign;
  reg [5:0] intersection_delay_12_y_exp;
  reg [12:0] intersection_delay_12_y_mant;
  reg  intersection_delay_12_z_sign;
  reg [5:0] intersection_delay_12_z_exp;
  reg [12:0] intersection_delay_12_z_mant;
  reg  intersection_delay_13_x_sign;
  reg [5:0] intersection_delay_13_x_exp;
  reg [12:0] intersection_delay_13_x_mant;
  reg  intersection_delay_13_y_sign;
  reg [5:0] intersection_delay_13_y_exp;
  reg [12:0] intersection_delay_13_y_mant;
  reg  intersection_delay_13_z_sign;
  reg [5:0] intersection_delay_13_z_exp;
  reg [12:0] intersection_delay_13_z_mant;
  reg  intersection_delay_14_x_sign;
  reg [5:0] intersection_delay_14_x_exp;
  reg [12:0] intersection_delay_14_x_mant;
  reg  intersection_delay_14_y_sign;
  reg [5:0] intersection_delay_14_y_exp;
  reg [12:0] intersection_delay_14_y_mant;
  reg  intersection_delay_14_z_sign;
  reg [5:0] intersection_delay_14_z_exp;
  reg [12:0] intersection_delay_14_z_mant;
  reg  intersection_delay_15_x_sign;
  reg [5:0] intersection_delay_15_x_exp;
  reg [12:0] intersection_delay_15_x_mant;
  reg  intersection_delay_15_y_sign;
  reg [5:0] intersection_delay_15_y_exp;
  reg [12:0] intersection_delay_15_y_mant;
  reg  intersection_delay_15_z_sign;
  reg [5:0] intersection_delay_15_z_exp;
  reg [12:0] intersection_delay_15_z_mant;
  reg  intersection_delay_16_x_sign;
  reg [5:0] intersection_delay_16_x_exp;
  reg [12:0] intersection_delay_16_x_mant;
  reg  intersection_delay_16_y_sign;
  reg [5:0] intersection_delay_16_y_exp;
  reg [12:0] intersection_delay_16_y_mant;
  reg  intersection_delay_16_z_sign;
  reg [5:0] intersection_delay_16_z_exp;
  reg [12:0] intersection_delay_16_z_mant;
  reg  intersection_delay_17_x_sign;
  reg [5:0] intersection_delay_17_x_exp;
  reg [12:0] intersection_delay_17_x_mant;
  reg  intersection_delay_17_y_sign;
  reg [5:0] intersection_delay_17_y_exp;
  reg [12:0] intersection_delay_17_y_mant;
  reg  intersection_delay_17_z_sign;
  reg [5:0] intersection_delay_17_z_exp;
  reg [12:0] intersection_delay_17_z_mant;
  reg  intersection_delay_18_x_sign;
  reg [5:0] intersection_delay_18_x_exp;
  reg [12:0] intersection_delay_18_x_mant;
  reg  intersection_delay_18_y_sign;
  reg [5:0] intersection_delay_18_y_exp;
  reg [12:0] intersection_delay_18_y_mant;
  reg  intersection_delay_18_z_sign;
  reg [5:0] intersection_delay_18_z_exp;
  reg [12:0] intersection_delay_18_z_mant;
  reg  intersection_delay_19_x_sign;
  reg [5:0] intersection_delay_19_x_exp;
  reg [12:0] intersection_delay_19_x_mant;
  reg  intersection_delay_19_y_sign;
  reg [5:0] intersection_delay_19_y_exp;
  reg [12:0] intersection_delay_19_y_mant;
  reg  intersection_delay_19_z_sign;
  reg [5:0] intersection_delay_19_z_exp;
  reg [12:0] intersection_delay_19_z_mant;
  reg  intersection_delay_20_x_sign;
  reg [5:0] intersection_delay_20_x_exp;
  reg [12:0] intersection_delay_20_x_mant;
  reg  intersection_delay_20_y_sign;
  reg [5:0] intersection_delay_20_y_exp;
  reg [12:0] intersection_delay_20_y_mant;
  reg  intersection_delay_20_z_sign;
  reg [5:0] intersection_delay_20_z_exp;
  reg [12:0] intersection_delay_20_z_mant;
  reg  intersection_delay_21_x_sign;
  reg [5:0] intersection_delay_21_x_exp;
  reg [12:0] intersection_delay_21_x_mant;
  reg  intersection_delay_21_y_sign;
  reg [5:0] intersection_delay_21_y_exp;
  reg [12:0] intersection_delay_21_y_mant;
  reg  intersection_delay_21_z_sign;
  reg [5:0] intersection_delay_21_z_exp;
  reg [12:0] intersection_delay_21_z_mant;
  reg  intersection_delayed_x_sign;
  reg [5:0] intersection_delayed_x_exp;
  reg [12:0] intersection_delayed_x_mant;
  reg  intersection_delayed_y_sign;
  reg [5:0] intersection_delayed_y_exp;
  reg [12:0] intersection_delayed_y_mant;
  reg  intersection_delayed_z_sign;
  reg [5:0] intersection_delayed_z_exp;
  reg [12:0] intersection_delayed_z_mant;
  reg  normal_delayed_dir_mirror_delay_1_x_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_1_x_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_1_x_mant;
  reg  normal_delayed_dir_mirror_delay_1_y_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_1_y_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_1_y_mant;
  reg  normal_delayed_dir_mirror_delay_1_z_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_1_z_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_1_z_mant;
  reg  normal_delayed_dir_mirror_delay_2_x_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_2_x_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_2_x_mant;
  reg  normal_delayed_dir_mirror_delay_2_y_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_2_y_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_2_y_mant;
  reg  normal_delayed_dir_mirror_delay_2_z_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_2_z_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_2_z_mant;
  reg  normal_delayed_dir_mirror_delay_3_x_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_3_x_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_3_x_mant;
  reg  normal_delayed_dir_mirror_delay_3_y_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_3_y_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_3_y_mant;
  reg  normal_delayed_dir_mirror_delay_3_z_sign;
  reg [5:0] normal_delayed_dir_mirror_delay_3_z_exp;
  reg [12:0] normal_delayed_dir_mirror_delay_3_z_mant;
  reg  normal_delayed_result_x_sign;
  reg [5:0] normal_delayed_result_x_exp;
  reg [12:0] normal_delayed_result_x_mant;
  reg  normal_delayed_result_y_sign;
  reg [5:0] normal_delayed_result_y_exp;
  reg [12:0] normal_delayed_result_y_mant;
  reg  normal_delayed_result_z_sign;
  reg [5:0] normal_delayed_result_z_exp;
  reg [12:0] normal_delayed_result_z_mant;
  reg  origin_delayed_intersect_delay_1_x_sign;
  reg [5:0] origin_delayed_intersect_delay_1_x_exp;
  reg [12:0] origin_delayed_intersect_delay_1_x_mant;
  reg  origin_delayed_intersect_delay_1_y_sign;
  reg [5:0] origin_delayed_intersect_delay_1_y_exp;
  reg [12:0] origin_delayed_intersect_delay_1_y_mant;
  reg  origin_delayed_intersect_delay_1_z_sign;
  reg [5:0] origin_delayed_intersect_delay_1_z_exp;
  reg [12:0] origin_delayed_intersect_delay_1_z_mant;
  reg  origin_delayed_intersect_delay_2_x_sign;
  reg [5:0] origin_delayed_intersect_delay_2_x_exp;
  reg [12:0] origin_delayed_intersect_delay_2_x_mant;
  reg  origin_delayed_intersect_delay_2_y_sign;
  reg [5:0] origin_delayed_intersect_delay_2_y_exp;
  reg [12:0] origin_delayed_intersect_delay_2_y_mant;
  reg  origin_delayed_intersect_delay_2_z_sign;
  reg [5:0] origin_delayed_intersect_delay_2_z_exp;
  reg [12:0] origin_delayed_intersect_delay_2_z_mant;
  reg  origin_delayed_intersect_delay_3_x_sign;
  reg [5:0] origin_delayed_intersect_delay_3_x_exp;
  reg [12:0] origin_delayed_intersect_delay_3_x_mant;
  reg  origin_delayed_intersect_delay_3_y_sign;
  reg [5:0] origin_delayed_intersect_delay_3_y_exp;
  reg [12:0] origin_delayed_intersect_delay_3_y_mant;
  reg  origin_delayed_intersect_delay_3_z_sign;
  reg [5:0] origin_delayed_intersect_delay_3_z_exp;
  reg [12:0] origin_delayed_intersect_delay_3_z_mant;
  reg  origin_delayed_intersect_delay_4_x_sign;
  reg [5:0] origin_delayed_intersect_delay_4_x_exp;
  reg [12:0] origin_delayed_intersect_delay_4_x_mant;
  reg  origin_delayed_intersect_delay_4_y_sign;
  reg [5:0] origin_delayed_intersect_delay_4_y_exp;
  reg [12:0] origin_delayed_intersect_delay_4_y_mant;
  reg  origin_delayed_intersect_delay_4_z_sign;
  reg [5:0] origin_delayed_intersect_delay_4_z_exp;
  reg [12:0] origin_delayed_intersect_delay_4_z_mant;
  reg  origin_delayed_intersect_delay_5_x_sign;
  reg [5:0] origin_delayed_intersect_delay_5_x_exp;
  reg [12:0] origin_delayed_intersect_delay_5_x_mant;
  reg  origin_delayed_intersect_delay_5_y_sign;
  reg [5:0] origin_delayed_intersect_delay_5_y_exp;
  reg [12:0] origin_delayed_intersect_delay_5_y_mant;
  reg  origin_delayed_intersect_delay_5_z_sign;
  reg [5:0] origin_delayed_intersect_delay_5_z_exp;
  reg [12:0] origin_delayed_intersect_delay_5_z_mant;
  reg  origin_delayed_intersect_delay_6_x_sign;
  reg [5:0] origin_delayed_intersect_delay_6_x_exp;
  reg [12:0] origin_delayed_intersect_delay_6_x_mant;
  reg  origin_delayed_intersect_delay_6_y_sign;
  reg [5:0] origin_delayed_intersect_delay_6_y_exp;
  reg [12:0] origin_delayed_intersect_delay_6_y_mant;
  reg  origin_delayed_intersect_delay_6_z_sign;
  reg [5:0] origin_delayed_intersect_delay_6_z_exp;
  reg [12:0] origin_delayed_intersect_delay_6_z_mant;
  reg  origin_delayed_intersect_delay_7_x_sign;
  reg [5:0] origin_delayed_intersect_delay_7_x_exp;
  reg [12:0] origin_delayed_intersect_delay_7_x_mant;
  reg  origin_delayed_intersect_delay_7_y_sign;
  reg [5:0] origin_delayed_intersect_delay_7_y_exp;
  reg [12:0] origin_delayed_intersect_delay_7_y_mant;
  reg  origin_delayed_intersect_delay_7_z_sign;
  reg [5:0] origin_delayed_intersect_delay_7_z_exp;
  reg [12:0] origin_delayed_intersect_delay_7_z_mant;
  reg  origin_delayed_intersect_delay_8_x_sign;
  reg [5:0] origin_delayed_intersect_delay_8_x_exp;
  reg [12:0] origin_delayed_intersect_delay_8_x_mant;
  reg  origin_delayed_intersect_delay_8_y_sign;
  reg [5:0] origin_delayed_intersect_delay_8_y_exp;
  reg [12:0] origin_delayed_intersect_delay_8_y_mant;
  reg  origin_delayed_intersect_delay_8_z_sign;
  reg [5:0] origin_delayed_intersect_delay_8_z_exp;
  reg [12:0] origin_delayed_intersect_delay_8_z_mant;
  reg  origin_delayed_intersect_delay_9_x_sign;
  reg [5:0] origin_delayed_intersect_delay_9_x_exp;
  reg [12:0] origin_delayed_intersect_delay_9_x_mant;
  reg  origin_delayed_intersect_delay_9_y_sign;
  reg [5:0] origin_delayed_intersect_delay_9_y_exp;
  reg [12:0] origin_delayed_intersect_delay_9_y_mant;
  reg  origin_delayed_intersect_delay_9_z_sign;
  reg [5:0] origin_delayed_intersect_delay_9_z_exp;
  reg [12:0] origin_delayed_intersect_delay_9_z_mant;
  reg  origin_delayed_intersect_delay_10_x_sign;
  reg [5:0] origin_delayed_intersect_delay_10_x_exp;
  reg [12:0] origin_delayed_intersect_delay_10_x_mant;
  reg  origin_delayed_intersect_delay_10_y_sign;
  reg [5:0] origin_delayed_intersect_delay_10_y_exp;
  reg [12:0] origin_delayed_intersect_delay_10_y_mant;
  reg  origin_delayed_intersect_delay_10_z_sign;
  reg [5:0] origin_delayed_intersect_delay_10_z_exp;
  reg [12:0] origin_delayed_intersect_delay_10_z_mant;
  reg  origin_delayed_intersect_delay_11_x_sign;
  reg [5:0] origin_delayed_intersect_delay_11_x_exp;
  reg [12:0] origin_delayed_intersect_delay_11_x_mant;
  reg  origin_delayed_intersect_delay_11_y_sign;
  reg [5:0] origin_delayed_intersect_delay_11_y_exp;
  reg [12:0] origin_delayed_intersect_delay_11_y_mant;
  reg  origin_delayed_intersect_delay_11_z_sign;
  reg [5:0] origin_delayed_intersect_delay_11_z_exp;
  reg [12:0] origin_delayed_intersect_delay_11_z_mant;
  reg  origin_delayed_intersect_delay_12_x_sign;
  reg [5:0] origin_delayed_intersect_delay_12_x_exp;
  reg [12:0] origin_delayed_intersect_delay_12_x_mant;
  reg  origin_delayed_intersect_delay_12_y_sign;
  reg [5:0] origin_delayed_intersect_delay_12_y_exp;
  reg [12:0] origin_delayed_intersect_delay_12_y_mant;
  reg  origin_delayed_intersect_delay_12_z_sign;
  reg [5:0] origin_delayed_intersect_delay_12_z_exp;
  reg [12:0] origin_delayed_intersect_delay_12_z_mant;
  reg  origin_delayed_intersect_delay_13_x_sign;
  reg [5:0] origin_delayed_intersect_delay_13_x_exp;
  reg [12:0] origin_delayed_intersect_delay_13_x_mant;
  reg  origin_delayed_intersect_delay_13_y_sign;
  reg [5:0] origin_delayed_intersect_delay_13_y_exp;
  reg [12:0] origin_delayed_intersect_delay_13_y_mant;
  reg  origin_delayed_intersect_delay_13_z_sign;
  reg [5:0] origin_delayed_intersect_delay_13_z_exp;
  reg [12:0] origin_delayed_intersect_delay_13_z_mant;
  reg  origin_delayed_intersect_delay_14_x_sign;
  reg [5:0] origin_delayed_intersect_delay_14_x_exp;
  reg [12:0] origin_delayed_intersect_delay_14_x_mant;
  reg  origin_delayed_intersect_delay_14_y_sign;
  reg [5:0] origin_delayed_intersect_delay_14_y_exp;
  reg [12:0] origin_delayed_intersect_delay_14_y_mant;
  reg  origin_delayed_intersect_delay_14_z_sign;
  reg [5:0] origin_delayed_intersect_delay_14_z_exp;
  reg [12:0] origin_delayed_intersect_delay_14_z_mant;
  reg  origin_delayed_intersect_delay_15_x_sign;
  reg [5:0] origin_delayed_intersect_delay_15_x_exp;
  reg [12:0] origin_delayed_intersect_delay_15_x_mant;
  reg  origin_delayed_intersect_delay_15_y_sign;
  reg [5:0] origin_delayed_intersect_delay_15_y_exp;
  reg [12:0] origin_delayed_intersect_delay_15_y_mant;
  reg  origin_delayed_intersect_delay_15_z_sign;
  reg [5:0] origin_delayed_intersect_delay_15_z_exp;
  reg [12:0] origin_delayed_intersect_delay_15_z_mant;
  reg  origin_delayed_intersect_delay_16_x_sign;
  reg [5:0] origin_delayed_intersect_delay_16_x_exp;
  reg [12:0] origin_delayed_intersect_delay_16_x_mant;
  reg  origin_delayed_intersect_delay_16_y_sign;
  reg [5:0] origin_delayed_intersect_delay_16_y_exp;
  reg [12:0] origin_delayed_intersect_delay_16_y_mant;
  reg  origin_delayed_intersect_delay_16_z_sign;
  reg [5:0] origin_delayed_intersect_delay_16_z_exp;
  reg [12:0] origin_delayed_intersect_delay_16_z_mant;
  reg  origin_delayed_intersect_delay_17_x_sign;
  reg [5:0] origin_delayed_intersect_delay_17_x_exp;
  reg [12:0] origin_delayed_intersect_delay_17_x_mant;
  reg  origin_delayed_intersect_delay_17_y_sign;
  reg [5:0] origin_delayed_intersect_delay_17_y_exp;
  reg [12:0] origin_delayed_intersect_delay_17_y_mant;
  reg  origin_delayed_intersect_delay_17_z_sign;
  reg [5:0] origin_delayed_intersect_delay_17_z_exp;
  reg [12:0] origin_delayed_intersect_delay_17_z_mant;
  reg  origin_delayed_intersect_delay_18_x_sign;
  reg [5:0] origin_delayed_intersect_delay_18_x_exp;
  reg [12:0] origin_delayed_intersect_delay_18_x_mant;
  reg  origin_delayed_intersect_delay_18_y_sign;
  reg [5:0] origin_delayed_intersect_delay_18_y_exp;
  reg [12:0] origin_delayed_intersect_delay_18_y_mant;
  reg  origin_delayed_intersect_delay_18_z_sign;
  reg [5:0] origin_delayed_intersect_delay_18_z_exp;
  reg [12:0] origin_delayed_intersect_delay_18_z_mant;
  reg  origin_delayed_intersect_delay_19_x_sign;
  reg [5:0] origin_delayed_intersect_delay_19_x_exp;
  reg [12:0] origin_delayed_intersect_delay_19_x_mant;
  reg  origin_delayed_intersect_delay_19_y_sign;
  reg [5:0] origin_delayed_intersect_delay_19_y_exp;
  reg [12:0] origin_delayed_intersect_delay_19_y_mant;
  reg  origin_delayed_intersect_delay_19_z_sign;
  reg [5:0] origin_delayed_intersect_delay_19_z_exp;
  reg [12:0] origin_delayed_intersect_delay_19_z_mant;
  reg  origin_delayed_intersect_delay_20_x_sign;
  reg [5:0] origin_delayed_intersect_delay_20_x_exp;
  reg [12:0] origin_delayed_intersect_delay_20_x_mant;
  reg  origin_delayed_intersect_delay_20_y_sign;
  reg [5:0] origin_delayed_intersect_delay_20_y_exp;
  reg [12:0] origin_delayed_intersect_delay_20_y_mant;
  reg  origin_delayed_intersect_delay_20_z_sign;
  reg [5:0] origin_delayed_intersect_delay_20_z_exp;
  reg [12:0] origin_delayed_intersect_delay_20_z_mant;
  reg  origin_delayed_intersect_delay_21_x_sign;
  reg [5:0] origin_delayed_intersect_delay_21_x_exp;
  reg [12:0] origin_delayed_intersect_delay_21_x_mant;
  reg  origin_delayed_intersect_delay_21_y_sign;
  reg [5:0] origin_delayed_intersect_delay_21_y_exp;
  reg [12:0] origin_delayed_intersect_delay_21_y_mant;
  reg  origin_delayed_intersect_delay_21_z_sign;
  reg [5:0] origin_delayed_intersect_delay_21_z_exp;
  reg [12:0] origin_delayed_intersect_delay_21_z_mant;
  reg  origin_delayed_intersect_delay_22_x_sign;
  reg [5:0] origin_delayed_intersect_delay_22_x_exp;
  reg [12:0] origin_delayed_intersect_delay_22_x_mant;
  reg  origin_delayed_intersect_delay_22_y_sign;
  reg [5:0] origin_delayed_intersect_delay_22_y_exp;
  reg [12:0] origin_delayed_intersect_delay_22_y_mant;
  reg  origin_delayed_intersect_delay_22_z_sign;
  reg [5:0] origin_delayed_intersect_delay_22_z_exp;
  reg [12:0] origin_delayed_intersect_delay_22_z_mant;
  reg  origin_delayed_intersect_delay_23_x_sign;
  reg [5:0] origin_delayed_intersect_delay_23_x_exp;
  reg [12:0] origin_delayed_intersect_delay_23_x_mant;
  reg  origin_delayed_intersect_delay_23_y_sign;
  reg [5:0] origin_delayed_intersect_delay_23_y_exp;
  reg [12:0] origin_delayed_intersect_delay_23_y_mant;
  reg  origin_delayed_intersect_delay_23_z_sign;
  reg [5:0] origin_delayed_intersect_delay_23_z_exp;
  reg [12:0] origin_delayed_intersect_delay_23_z_mant;
  reg  origin_delayed_intersect_delay_24_x_sign;
  reg [5:0] origin_delayed_intersect_delay_24_x_exp;
  reg [12:0] origin_delayed_intersect_delay_24_x_mant;
  reg  origin_delayed_intersect_delay_24_y_sign;
  reg [5:0] origin_delayed_intersect_delay_24_y_exp;
  reg [12:0] origin_delayed_intersect_delay_24_y_mant;
  reg  origin_delayed_intersect_delay_24_z_sign;
  reg [5:0] origin_delayed_intersect_delay_24_z_exp;
  reg [12:0] origin_delayed_intersect_delay_24_z_mant;
  reg  origin_delayed_intersect_delay_25_x_sign;
  reg [5:0] origin_delayed_intersect_delay_25_x_exp;
  reg [12:0] origin_delayed_intersect_delay_25_x_mant;
  reg  origin_delayed_intersect_delay_25_y_sign;
  reg [5:0] origin_delayed_intersect_delay_25_y_exp;
  reg [12:0] origin_delayed_intersect_delay_25_y_mant;
  reg  origin_delayed_intersect_delay_25_z_sign;
  reg [5:0] origin_delayed_intersect_delay_25_z_exp;
  reg [12:0] origin_delayed_intersect_delay_25_z_mant;
  reg  origin_delayed_result_x_sign;
  reg [5:0] origin_delayed_result_x_exp;
  reg [12:0] origin_delayed_result_x_mant;
  reg  origin_delayed_result_y_sign;
  reg [5:0] origin_delayed_result_y_exp;
  reg [12:0] origin_delayed_result_y_mant;
  reg  origin_delayed_result_z_sign;
  reg [5:0] origin_delayed_result_z_exp;
  reg [12:0] origin_delayed_result_z_mant;
  reg  dir_delayed_reflect_dir_delay_1_x_sign;
  reg [5:0] dir_delayed_reflect_dir_delay_1_x_exp;
  reg [12:0] dir_delayed_reflect_dir_delay_1_x_mant;
  reg  dir_delayed_reflect_dir_delay_1_y_sign;
  reg [5:0] dir_delayed_reflect_dir_delay_1_y_exp;
  reg [12:0] dir_delayed_reflect_dir_delay_1_y_mant;
  reg  dir_delayed_reflect_dir_delay_1_z_sign;
  reg [5:0] dir_delayed_reflect_dir_delay_1_z_exp;
  reg [12:0] dir_delayed_reflect_dir_delay_1_z_mant;
  reg  dir_delayed_result_x_sign;
  reg [5:0] dir_delayed_result_x_exp;
  reg [12:0] dir_delayed_result_x_mant;
  reg  dir_delayed_result_y_sign;
  reg [5:0] dir_delayed_result_y_exp;
  reg [12:0] dir_delayed_result_y_mant;
  reg  dir_delayed_result_z_sign;
  reg [5:0] dir_delayed_result_z_exp;
  reg [12:0] dir_delayed_result_z_mant;
  wire  intersects_delayed;
  wire  reflect_ray_origin_x_sign;
  wire [5:0] reflect_ray_origin_x_exp;
  wire [12:0] reflect_ray_origin_x_mant;
  wire  reflect_ray_origin_y_sign;
  wire [5:0] reflect_ray_origin_y_exp;
  wire [12:0] reflect_ray_origin_y_mant;
  wire  reflect_ray_origin_z_sign;
  wire [5:0] reflect_ray_origin_z_exp;
  wire [12:0] reflect_ray_origin_z_mant;
  wire  reflect_ray_direction_x_sign;
  wire [5:0] reflect_ray_direction_x_exp;
  wire [12:0] reflect_ray_direction_x_mant;
  wire  reflect_ray_direction_y_sign;
  wire [5:0] reflect_ray_direction_y_exp;
  wire [12:0] reflect_ray_direction_y_mant;
  wire  reflect_ray_direction_z_sign;
  wire [5:0] reflect_ray_direction_z_exp;
  wire [12:0] reflect_ray_direction_z_mant;
  wire  ray_delayed_origin_x_sign;
  wire [5:0] ray_delayed_origin_x_exp;
  wire [12:0] ray_delayed_origin_x_mant;
  wire  ray_delayed_origin_y_sign;
  wire [5:0] ray_delayed_origin_y_exp;
  wire [12:0] ray_delayed_origin_y_mant;
  wire  ray_delayed_origin_z_sign;
  wire [5:0] ray_delayed_origin_z_exp;
  wire [12:0] ray_delayed_origin_z_mant;
  wire  ray_delayed_direction_x_sign;
  wire [5:0] ray_delayed_direction_x_exp;
  wire [12:0] ray_delayed_direction_x_mant;
  wire  ray_delayed_direction_y_sign;
  wire [5:0] ray_delayed_direction_y_exp;
  wire [12:0] ray_delayed_direction_y_mant;
  wire  ray_delayed_direction_z_sign;
  wire [5:0] ray_delayed_direction_z_exp;
  wire [12:0] ray_delayed_direction_z_mant;
  assign _zz_6_ = {{d2_sign,d2_exp},d2_mant};
  assign _zz_7_ = {{io_sphere_radius2_sign,io_sphere_radius2_exp},io_sphere_radius2_mant};
  assign _zz_8_ = {{t1_sign,t1_exp},t1_mant};
  assign _zz_9_ = {{t0_sign,t0_exp},t0_mant};
  SubVecVec u_c0r0 ( 
    .io_op_vld(io_op_vld),
    .io_op_a_x_sign(io_sphere_center_x_sign),
    .io_op_a_x_exp(io_sphere_center_x_exp),
    .io_op_a_x_mant(io_sphere_center_x_mant),
    .io_op_a_y_sign(io_sphere_center_y_sign),
    .io_op_a_y_exp(io_sphere_center_y_exp),
    .io_op_a_y_mant(io_sphere_center_y_mant),
    .io_op_a_z_sign(io_sphere_center_z_sign),
    .io_op_a_z_exp(io_sphere_center_z_exp),
    .io_op_a_z_mant(io_sphere_center_z_mant),
    .io_op_b_x_sign(io_ray_origin_x_sign),
    .io_op_b_x_exp(io_ray_origin_x_exp),
    .io_op_b_x_mant(io_ray_origin_x_mant),
    .io_op_b_y_sign(io_ray_origin_y_sign),
    .io_op_b_y_exp(io_ray_origin_y_exp),
    .io_op_b_y_mant(io_ray_origin_y_mant),
    .io_op_b_z_sign(io_ray_origin_z_sign),
    .io_op_b_z_exp(io_ray_origin_z_exp),
    .io_op_b_z_mant(io_ray_origin_z_mant),
    .io_result_vld(u_c0r0_io_result_vld),
    .io_result_x_sign(u_c0r0_io_result_x_sign),
    .io_result_x_exp(u_c0r0_io_result_x_exp),
    .io_result_x_mant(u_c0r0_io_result_x_mant),
    .io_result_y_sign(u_c0r0_io_result_y_sign),
    .io_result_y_exp(u_c0r0_io_result_y_exp),
    .io_result_y_mant(u_c0r0_io_result_y_mant),
    .io_result_z_sign(u_c0r0_io_result_z_sign),
    .io_result_z_exp(u_c0r0_io_result_z_exp),
    .io_result_z_mant(u_c0r0_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct u_dot_tca ( 
    .io_op_vld(c0r0_vld),
    .io_op_a_x_sign(c0r0_x_sign),
    .io_op_a_x_exp(c0r0_x_exp),
    .io_op_a_x_mant(c0r0_x_mant),
    .io_op_a_y_sign(c0r0_y_sign),
    .io_op_a_y_exp(c0r0_y_exp),
    .io_op_a_y_mant(c0r0_y_mant),
    .io_op_a_z_sign(c0r0_z_sign),
    .io_op_a_z_exp(c0r0_z_exp),
    .io_op_a_z_mant(c0r0_z_mant),
    .io_op_b_x_sign(dir_delayed_c0r0_x_sign),
    .io_op_b_x_exp(dir_delayed_c0r0_x_exp),
    .io_op_b_x_mant(dir_delayed_c0r0_x_mant),
    .io_op_b_y_sign(dir_delayed_c0r0_y_sign),
    .io_op_b_y_exp(dir_delayed_c0r0_y_exp),
    .io_op_b_y_mant(dir_delayed_c0r0_y_mant),
    .io_op_b_z_sign(dir_delayed_c0r0_z_sign),
    .io_op_b_z_exp(dir_delayed_c0r0_z_exp),
    .io_op_b_z_mant(dir_delayed_c0r0_z_mant),
    .io_result_vld(u_dot_tca_io_result_vld),
    .io_result_sign(u_dot_tca_io_result_sign),
    .io_result_exp(u_dot_tca_io_result_exp),
    .io_result_mant(u_dot_tca_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct u_dot_c0r0_c0r0 ( 
    .io_op_vld(c0r0_vld),
    .io_op_a_x_sign(c0r0_x_sign),
    .io_op_a_x_exp(c0r0_x_exp),
    .io_op_a_x_mant(c0r0_x_mant),
    .io_op_a_y_sign(c0r0_y_sign),
    .io_op_a_y_exp(c0r0_y_exp),
    .io_op_a_y_mant(c0r0_y_mant),
    .io_op_a_z_sign(c0r0_z_sign),
    .io_op_a_z_exp(c0r0_z_exp),
    .io_op_a_z_mant(c0r0_z_mant),
    .io_op_b_x_sign(c0r0_x_sign),
    .io_op_b_x_exp(c0r0_x_exp),
    .io_op_b_x_mant(c0r0_x_mant),
    .io_op_b_y_sign(c0r0_y_sign),
    .io_op_b_y_exp(c0r0_y_exp),
    .io_op_b_y_mant(c0r0_y_mant),
    .io_op_b_z_sign(c0r0_z_sign),
    .io_op_b_z_exp(c0r0_z_exp),
    .io_op_b_z_mant(c0r0_z_mant),
    .io_result_vld(u_dot_c0r0_c0r0_io_result_vld),
    .io_result_sign(u_dot_c0r0_c0r0_io_result_sign),
    .io_result_exp(u_dot_c0r0_c0r0_io_result_exp),
    .io_result_mant(u_dot_c0r0_c0r0_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxMul u_tca_tca ( 
    .p0_vld(tca_vld),
    .op_a_p0_sign(tca_sign),
    .exp_a_p0(tca_exp),
    .op_a_p0_mant(tca_mant),
    .op_b_p0_sign(tca_sign),
    .exp_b_p0(tca_exp),
    .op_b_p0_mant(tca_mant),
    .io_result_vld(u_tca_tca_io_result_vld),
    .io_result_sign(u_tca_tca_io_result_sign),
    .io_result_exp(u_tca_tca_io_result_exp),
    .io_result_mant(u_tca_tca_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_d2 ( 
    .io_op_vld(tca_tca_vld),
    .io_op_a_sign(c0r0_c0r0_delayed_sign),
    .io_op_a_exp(c0r0_c0r0_delayed_exp),
    .io_op_a_mant(c0r0_c0r0_delayed_mant),
    .io_op_b_sign(tca_tca_sign),
    .io_op_b_exp(tca_tca_exp),
    .io_op_b_mant(tca_tca_mant),
    .io_result_vld(u_d2_io_result_vld),
    .io_result_sign(u_d2_io_result_sign),
    .io_result_exp(u_d2_io_result_exp),
    .io_result_mant(u_d2_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_radius2_m_d2 ( 
    .io_op_vld(d2_vld),
    .io_op_a_sign(io_sphere_radius2_sign),
    .io_op_a_exp(io_sphere_radius2_exp),
    .io_op_a_mant(io_sphere_radius2_mant),
    .io_op_b_sign(d2_sign),
    .io_op_b_exp(d2_exp),
    .io_op_b_mant(d2_mant),
    .io_result_vld(u_radius2_m_d2_io_result_vld),
    .io_result_sign(u_radius2_m_d2_io_result_sign),
    .io_result_exp(u_radius2_m_d2_io_result_exp),
    .io_result_mant(u_radius2_m_d2_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSqrt_1_ u_thc ( 
    .p0_vld(radius2_m_d2_vld),
    .op_p0_sign(radius2_m_d2_sign),
    .op_p0_exp(radius2_m_d2_exp),
    .op_p0_mant(radius2_m_d2_mant),
    .io_result_vld(u_thc_io_result_vld),
    .io_result_sign(u_thc_io_result_sign),
    .io_result_exp(u_thc_io_result_exp),
    .io_result_mant(u_thc_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxSub u_t0 ( 
    .io_op_vld(thc_vld),
    .io_op_a_sign(tca_delayed_sign),
    .io_op_a_exp(tca_delayed_exp),
    .io_op_a_mant(tca_delayed_mant),
    .io_op_b_sign(thc_sign),
    .io_op_b_exp(thc_exp),
    .io_op_b_mant(thc_mant),
    .io_result_vld(u_t0_io_result_vld),
    .io_result_sign(u_t0_io_result_sign),
    .io_result_exp(u_t0_io_result_exp),
    .io_result_mant(u_t0_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  FpxxAdd u_t1 ( 
    .p0_vld(thc_vld),
    .op_a_p0_sign(tca_delayed_sign),
    .op_a_p0_exp(tca_delayed_exp),
    .op_a_p0_mant(tca_delayed_mant),
    .op_b_p0_sign(thc_sign),
    .op_b_p0_exp(thc_exp),
    .op_b_p0_mant(thc_mant),
    .io_result_vld(u_t1_io_result_vld),
    .io_result_sign(u_t1_io_result_sign),
    .io_result_exp(u_t1_io_result_exp),
    .io_result_mant(u_t1_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  Intersection u_intersection ( 
    .io_op_vld(t_vld),
    .io_ray_origin_x_sign(origin_delayed_intersect_x_sign),
    .io_ray_origin_x_exp(origin_delayed_intersect_x_exp),
    .io_ray_origin_x_mant(origin_delayed_intersect_x_mant),
    .io_ray_origin_y_sign(origin_delayed_intersect_y_sign),
    .io_ray_origin_y_exp(origin_delayed_intersect_y_exp),
    .io_ray_origin_y_mant(origin_delayed_intersect_y_mant),
    .io_ray_origin_z_sign(origin_delayed_intersect_z_sign),
    .io_ray_origin_z_exp(origin_delayed_intersect_z_exp),
    .io_ray_origin_z_mant(origin_delayed_intersect_z_mant),
    .io_ray_dir_x_sign(dir_delayed_intersect_x_sign),
    .io_ray_dir_x_exp(dir_delayed_intersect_x_exp),
    .io_ray_dir_x_mant(dir_delayed_intersect_x_mant),
    .io_ray_dir_y_sign(dir_delayed_intersect_y_sign),
    .io_ray_dir_y_exp(dir_delayed_intersect_y_exp),
    .io_ray_dir_y_mant(dir_delayed_intersect_y_mant),
    .io_ray_dir_z_sign(dir_delayed_intersect_z_sign),
    .io_ray_dir_z_exp(dir_delayed_intersect_z_exp),
    .io_ray_dir_z_mant(dir_delayed_intersect_z_mant),
    .io_t_sign(t_sign),
    .io_t_exp(t_exp),
    .io_t_mant(t_mant),
    .io_result_vld(u_intersection_io_result_vld),
    .io_result_x_sign(u_intersection_io_result_x_sign),
    .io_result_x_exp(u_intersection_io_result_x_exp),
    .io_result_x_mant(u_intersection_io_result_x_mant),
    .io_result_y_sign(u_intersection_io_result_y_sign),
    .io_result_y_exp(u_intersection_io_result_y_exp),
    .io_result_y_mant(u_intersection_io_result_y_mant),
    .io_result_z_sign(u_intersection_io_result_z_sign),
    .io_result_z_exp(u_intersection_io_result_z_exp),
    .io_result_z_mant(u_intersection_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  SubVecVec u_normal_raw ( 
    .io_op_vld(intersection_vld),
    .io_op_a_x_sign(center_delayed_x_sign),
    .io_op_a_x_exp(center_delayed_x_exp),
    .io_op_a_x_mant(center_delayed_x_mant),
    .io_op_a_y_sign(center_delayed_y_sign),
    .io_op_a_y_exp(center_delayed_y_exp),
    .io_op_a_y_mant(center_delayed_y_mant),
    .io_op_a_z_sign(center_delayed_z_sign),
    .io_op_a_z_exp(center_delayed_z_exp),
    .io_op_a_z_mant(center_delayed_z_mant),
    .io_op_b_x_sign(intersection_x_sign),
    .io_op_b_x_exp(intersection_x_exp),
    .io_op_b_x_mant(intersection_x_mant),
    .io_op_b_y_sign(intersection_y_sign),
    .io_op_b_y_exp(intersection_y_exp),
    .io_op_b_y_mant(intersection_y_mant),
    .io_op_b_z_sign(intersection_z_sign),
    .io_op_b_z_exp(intersection_z_exp),
    .io_op_b_z_mant(intersection_z_mant),
    .io_result_vld(u_normal_raw_io_result_vld),
    .io_result_x_sign(u_normal_raw_io_result_x_sign),
    .io_result_x_exp(u_normal_raw_io_result_x_exp),
    .io_result_x_mant(u_normal_raw_io_result_x_mant),
    .io_result_y_sign(u_normal_raw_io_result_y_sign),
    .io_result_y_exp(u_normal_raw_io_result_y_exp),
    .io_result_y_mant(u_normal_raw_io_result_y_mant),
    .io_result_z_sign(u_normal_raw_io_result_z_sign),
    .io_result_z_exp(u_normal_raw_io_result_z_exp),
    .io_result_z_mant(u_normal_raw_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  Normalize_1_ u_normalize ( 
    .io_op_vld(normal_raw_vld),
    .io_op_x_sign(normal_raw_x_sign),
    .io_op_x_exp(normal_raw_x_exp),
    .io_op_x_mant(normal_raw_x_mant),
    .io_op_y_sign(normal_raw_y_sign),
    .io_op_y_exp(normal_raw_y_exp),
    .io_op_y_mant(normal_raw_y_mant),
    .io_op_z_sign(normal_raw_z_sign),
    .io_op_z_exp(normal_raw_z_exp),
    .io_op_z_mant(normal_raw_z_mant),
    .io_result_vld(u_normalize_io_result_vld),
    .io_result_x_sign(u_normalize_io_result_x_sign),
    .io_result_x_exp(u_normalize_io_result_x_exp),
    .io_result_x_mant(u_normalize_io_result_x_mant),
    .io_result_y_sign(u_normalize_io_result_y_sign),
    .io_result_y_exp(u_normalize_io_result_y_exp),
    .io_result_y_mant(u_normalize_io_result_y_mant),
    .io_result_z_sign(u_normalize_io_result_z_sign),
    .io_result_z_exp(u_normalize_io_result_z_exp),
    .io_result_z_mant(u_normalize_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct u_dir_dot_normal ( 
    .io_op_vld(normal_vld),
    .io_op_a_x_sign(normal_x_sign),
    .io_op_a_x_exp(normal_x_exp),
    .io_op_a_x_mant(normal_x_mant),
    .io_op_a_y_sign(normal_y_sign),
    .io_op_a_y_exp(normal_y_exp),
    .io_op_a_y_mant(normal_y_mant),
    .io_op_a_z_sign(normal_z_sign),
    .io_op_a_z_exp(normal_z_exp),
    .io_op_a_z_mant(normal_z_mant),
    .io_op_b_x_sign(dir_delayed_dot_normal_x_sign),
    .io_op_b_x_exp(dir_delayed_dot_normal_x_exp),
    .io_op_b_x_mant(dir_delayed_dot_normal_x_mant),
    .io_op_b_y_sign(dir_delayed_dot_normal_y_sign),
    .io_op_b_y_exp(dir_delayed_dot_normal_y_exp),
    .io_op_b_y_mant(dir_delayed_dot_normal_y_mant),
    .io_op_b_z_sign(dir_delayed_dot_normal_z_sign),
    .io_op_b_z_exp(dir_delayed_dot_normal_z_exp),
    .io_op_b_z_mant(dir_delayed_dot_normal_z_mant),
    .io_result_vld(u_dir_dot_normal_io_result_vld),
    .io_result_sign(u_dir_dot_normal_io_result_sign),
    .io_result_exp(u_dir_dot_normal_io_result_exp),
    .io_result_mant(u_dir_dot_normal_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  MulVecScalar u_dir_mirror ( 
    .io_op_vld(dir_dot_normal_x2_vld),
    .io_op_vec_x_sign(normal_delayed_dir_mirror_x_sign),
    .io_op_vec_x_exp(normal_delayed_dir_mirror_x_exp),
    .io_op_vec_x_mant(normal_delayed_dir_mirror_x_mant),
    .io_op_vec_y_sign(normal_delayed_dir_mirror_y_sign),
    .io_op_vec_y_exp(normal_delayed_dir_mirror_y_exp),
    .io_op_vec_y_mant(normal_delayed_dir_mirror_y_mant),
    .io_op_vec_z_sign(normal_delayed_dir_mirror_z_sign),
    .io_op_vec_z_exp(normal_delayed_dir_mirror_z_exp),
    .io_op_vec_z_mant(normal_delayed_dir_mirror_z_mant),
    .io_op_scalar_sign(dir_dot_normal_x2_sign),
    .io_op_scalar_exp(dir_dot_normal_x2_exp),
    .io_op_scalar_mant(dir_dot_normal_x2_mant),
    .io_result_vld(u_dir_mirror_io_result_vld),
    .io_result_x_sign(u_dir_mirror_io_result_x_sign),
    .io_result_x_exp(u_dir_mirror_io_result_x_exp),
    .io_result_x_mant(u_dir_mirror_io_result_x_mant),
    .io_result_y_sign(u_dir_mirror_io_result_y_sign),
    .io_result_y_exp(u_dir_mirror_io_result_y_exp),
    .io_result_y_mant(u_dir_mirror_io_result_y_mant),
    .io_result_z_sign(u_dir_mirror_io_result_z_sign),
    .io_result_z_exp(u_dir_mirror_io_result_z_exp),
    .io_result_z_mant(u_dir_mirror_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  SubVecVec u_reflect_dir ( 
    .io_op_vld(dir_mirror_vld),
    .io_op_a_x_sign(dir_delayed_reflect_dir_x_sign),
    .io_op_a_x_exp(dir_delayed_reflect_dir_x_exp),
    .io_op_a_x_mant(dir_delayed_reflect_dir_x_mant),
    .io_op_a_y_sign(dir_delayed_reflect_dir_y_sign),
    .io_op_a_y_exp(dir_delayed_reflect_dir_y_exp),
    .io_op_a_y_mant(dir_delayed_reflect_dir_y_mant),
    .io_op_a_z_sign(dir_delayed_reflect_dir_z_sign),
    .io_op_a_z_exp(dir_delayed_reflect_dir_z_exp),
    .io_op_a_z_mant(dir_delayed_reflect_dir_z_mant),
    .io_op_b_x_sign(dir_mirror_x_sign),
    .io_op_b_x_exp(dir_mirror_x_exp),
    .io_op_b_x_mant(dir_mirror_x_mant),
    .io_op_b_y_sign(dir_mirror_y_sign),
    .io_op_b_y_exp(dir_mirror_y_exp),
    .io_op_b_y_mant(dir_mirror_y_mant),
    .io_op_b_z_sign(dir_mirror_z_sign),
    .io_op_b_z_exp(dir_mirror_z_exp),
    .io_op_b_z_mant(dir_mirror_z_mant),
    .io_result_vld(u_reflect_dir_io_result_vld),
    .io_result_x_sign(u_reflect_dir_io_result_x_sign),
    .io_result_x_exp(u_reflect_dir_io_result_x_exp),
    .io_result_x_mant(u_reflect_dir_io_result_x_mant),
    .io_result_y_sign(u_reflect_dir_io_result_y_sign),
    .io_result_y_exp(u_reflect_dir_io_result_y_exp),
    .io_result_y_mant(u_reflect_dir_io_result_y_mant),
    .io_result_z_sign(u_reflect_dir_io_result_z_sign),
    .io_result_z_exp(u_reflect_dir_io_result_z_exp),
    .io_result_z_mant(u_reflect_dir_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  assign c0r0_vld = u_c0r0_io_result_vld;
  assign c0r0_x_sign = u_c0r0_io_result_x_sign;
  assign c0r0_x_exp = u_c0r0_io_result_x_exp;
  assign c0r0_x_mant = u_c0r0_io_result_x_mant;
  assign c0r0_y_sign = u_c0r0_io_result_y_sign;
  assign c0r0_y_exp = u_c0r0_io_result_y_exp;
  assign c0r0_y_mant = u_c0r0_io_result_y_mant;
  assign c0r0_z_sign = u_c0r0_io_result_z_sign;
  assign c0r0_z_exp = u_c0r0_io_result_z_exp;
  assign c0r0_z_mant = u_c0r0_io_result_z_mant;
  assign tca_vld = u_dot_tca_io_result_vld;
  assign tca_sign = u_dot_tca_io_result_sign;
  assign tca_exp = u_dot_tca_io_result_exp;
  assign tca_mant = u_dot_tca_io_result_mant;
  assign intersects_tca = (((! tca_sign) && (! ((tca_exp == (6'b111111)) && (tca_mant != (13'b0000000000000))))) && (! ((tca_exp == (6'b111111)) && (! (tca_mant != (13'b0000000000000))))));
  assign c0r0_c0r0_vld = u_dot_c0r0_c0r0_io_result_vld;
  assign c0r0_c0r0_sign = u_dot_c0r0_c0r0_io_result_sign;
  assign c0r0_c0r0_exp = u_dot_c0r0_c0r0_io_result_exp;
  assign c0r0_c0r0_mant = u_dot_c0r0_c0r0_io_result_mant;
  assign tca_tca_vld = u_tca_tca_io_result_vld;
  assign tca_tca_sign = u_tca_tca_io_result_sign;
  assign tca_tca_exp = u_tca_tca_io_result_exp;
  assign tca_tca_mant = u_tca_tca_io_result_mant;
  assign d2_vld = u_d2_io_result_vld;
  assign d2_sign = u_d2_io_result_sign;
  assign d2_exp = u_d2_io_result_exp;
  assign d2_mant = u_d2_io_result_mant;
  assign radius2_ge_d2 = ($signed(_zz_6_) <= $signed(_zz_7_));
  assign io_early_intersects_vld = d2_vld_regNext;
  assign io_early_intersects = _zz_1_;
  assign radius2_m_d2_vld = u_radius2_m_d2_io_result_vld;
  assign radius2_m_d2_sign = u_radius2_m_d2_io_result_sign;
  assign radius2_m_d2_exp = u_radius2_m_d2_io_result_exp;
  assign radius2_m_d2_mant = u_radius2_m_d2_io_result_mant;
  assign intersects_d2 = (((! radius2_m_d2_sign) && (! ((radius2_m_d2_exp == (6'b111111)) && (radius2_m_d2_mant != (13'b0000000000000))))) && (! ((radius2_m_d2_exp == (6'b111111)) && (! (radius2_m_d2_mant != (13'b0000000000000))))));
  assign thc_vld = u_thc_io_result_vld;
  assign thc_sign = u_thc_io_result_sign;
  assign thc_exp = u_thc_io_result_exp;
  assign thc_mant = u_thc_io_result_mant;
  assign t0_vld = u_t0_io_result_vld;
  assign t0_sign = u_t0_io_result_sign;
  assign t0_exp = u_t0_io_result_exp;
  assign t0_mant = u_t0_io_result_mant;
  assign t1_vld = u_t1_io_result_vld;
  assign t1_sign = u_t1_io_result_sign;
  assign t1_exp = u_t1_io_result_exp;
  assign t1_mant = u_t1_io_result_mant;
  assign t_vld = t0_vld_regNext;
  assign _zz_2_ = ($signed(_zz_8_) < $signed(_zz_9_));
  assign t_sign = _zz_3_;
  assign t_exp = _zz_4_;
  assign t_mant = _zz_5_;
  assign intersection_vld = u_intersection_io_result_vld;
  assign intersection_x_sign = u_intersection_io_result_x_sign;
  assign intersection_x_exp = u_intersection_io_result_x_exp;
  assign intersection_x_mant = u_intersection_io_result_x_mant;
  assign intersection_y_sign = u_intersection_io_result_y_sign;
  assign intersection_y_exp = u_intersection_io_result_y_exp;
  assign intersection_y_mant = u_intersection_io_result_y_mant;
  assign intersection_z_sign = u_intersection_io_result_z_sign;
  assign intersection_z_exp = u_intersection_io_result_z_exp;
  assign intersection_z_mant = u_intersection_io_result_z_mant;
  assign normal_raw_vld = u_normal_raw_io_result_vld;
  assign normal_raw_x_sign = u_normal_raw_io_result_x_sign;
  assign normal_raw_x_exp = u_normal_raw_io_result_x_exp;
  assign normal_raw_x_mant = u_normal_raw_io_result_x_mant;
  assign normal_raw_y_sign = u_normal_raw_io_result_y_sign;
  assign normal_raw_y_exp = u_normal_raw_io_result_y_exp;
  assign normal_raw_y_mant = u_normal_raw_io_result_y_mant;
  assign normal_raw_z_sign = u_normal_raw_io_result_z_sign;
  assign normal_raw_z_exp = u_normal_raw_io_result_z_exp;
  assign normal_raw_z_mant = u_normal_raw_io_result_z_mant;
  assign normal_vld = u_normalize_io_result_vld;
  assign normal_x_sign = u_normalize_io_result_x_sign;
  assign normal_x_exp = u_normalize_io_result_x_exp;
  assign normal_x_mant = u_normalize_io_result_x_mant;
  assign normal_y_sign = u_normalize_io_result_y_sign;
  assign normal_y_exp = u_normalize_io_result_y_exp;
  assign normal_y_mant = u_normalize_io_result_y_mant;
  assign normal_z_sign = u_normalize_io_result_z_sign;
  assign normal_z_exp = u_normalize_io_result_z_exp;
  assign normal_z_mant = u_normalize_io_result_z_mant;
  assign io_early_normal_vld = normal_vld;
  assign io_early_normal_x_sign = normal_x_sign;
  assign io_early_normal_x_exp = normal_x_exp;
  assign io_early_normal_x_mant = normal_x_mant;
  assign io_early_normal_y_sign = normal_y_sign;
  assign io_early_normal_y_exp = normal_y_exp;
  assign io_early_normal_y_mant = normal_y_mant;
  assign io_early_normal_z_sign = normal_z_sign;
  assign io_early_normal_z_exp = normal_z_exp;
  assign io_early_normal_z_mant = normal_z_mant;
  assign dir_dot_normal_vld = u_dir_dot_normal_io_result_vld;
  assign dir_dot_normal_sign = u_dir_dot_normal_io_result_sign;
  assign dir_dot_normal_exp = u_dir_dot_normal_io_result_exp;
  assign dir_dot_normal_mant = u_dir_dot_normal_io_result_mant;
  assign dir_dot_normal_x2_vld = dir_dot_normal_vld_regNext;
  assign dir_dot_normal_x2_sign = dir_dot_normal_sign_regNext;
  assign dir_dot_normal_x2_exp = (dir_dot_normal_exp_regNext + (6'b000001));
  assign dir_dot_normal_x2_mant = dir_dot_normal_mant_regNext;
  assign dir_mirror_vld = u_dir_mirror_io_result_vld;
  assign dir_mirror_x_sign = u_dir_mirror_io_result_x_sign;
  assign dir_mirror_x_exp = u_dir_mirror_io_result_x_exp;
  assign dir_mirror_x_mant = u_dir_mirror_io_result_x_mant;
  assign dir_mirror_y_sign = u_dir_mirror_io_result_y_sign;
  assign dir_mirror_y_exp = u_dir_mirror_io_result_y_exp;
  assign dir_mirror_y_mant = u_dir_mirror_io_result_y_mant;
  assign dir_mirror_z_sign = u_dir_mirror_io_result_z_sign;
  assign dir_mirror_z_exp = u_dir_mirror_io_result_z_exp;
  assign dir_mirror_z_mant = u_dir_mirror_io_result_z_mant;
  assign reflect_dir_vld = u_reflect_dir_io_result_vld;
  assign reflect_dir_x_sign = u_reflect_dir_io_result_x_sign;
  assign reflect_dir_x_exp = u_reflect_dir_io_result_x_exp;
  assign reflect_dir_x_mant = u_reflect_dir_io_result_x_mant;
  assign reflect_dir_y_sign = u_reflect_dir_io_result_y_sign;
  assign reflect_dir_y_exp = u_reflect_dir_io_result_y_exp;
  assign reflect_dir_y_mant = u_reflect_dir_io_result_y_mant;
  assign reflect_dir_z_sign = u_reflect_dir_io_result_z_sign;
  assign reflect_dir_z_exp = u_reflect_dir_io_result_z_exp;
  assign reflect_dir_z_mant = u_reflect_dir_io_result_z_mant;
  assign intersects_delayed = (intersects_tca_delayed && intersects_d2_delayed);
  assign reflect_ray_origin_x_sign = intersection_delayed_x_sign;
  assign reflect_ray_origin_x_exp = intersection_delayed_x_exp;
  assign reflect_ray_origin_x_mant = intersection_delayed_x_mant;
  assign reflect_ray_origin_y_sign = intersection_delayed_y_sign;
  assign reflect_ray_origin_y_exp = intersection_delayed_y_exp;
  assign reflect_ray_origin_y_mant = intersection_delayed_y_mant;
  assign reflect_ray_origin_z_sign = intersection_delayed_z_sign;
  assign reflect_ray_origin_z_exp = intersection_delayed_z_exp;
  assign reflect_ray_origin_z_mant = intersection_delayed_z_mant;
  assign reflect_ray_direction_x_sign = reflect_dir_x_sign;
  assign reflect_ray_direction_x_exp = reflect_dir_x_exp;
  assign reflect_ray_direction_x_mant = reflect_dir_x_mant;
  assign reflect_ray_direction_y_sign = reflect_dir_y_sign;
  assign reflect_ray_direction_y_exp = reflect_dir_y_exp;
  assign reflect_ray_direction_y_mant = reflect_dir_y_mant;
  assign reflect_ray_direction_z_sign = reflect_dir_z_sign;
  assign reflect_ray_direction_z_exp = reflect_dir_z_exp;
  assign reflect_ray_direction_z_mant = reflect_dir_z_mant;
  assign ray_delayed_origin_x_sign = origin_delayed_result_x_sign;
  assign ray_delayed_origin_x_exp = origin_delayed_result_x_exp;
  assign ray_delayed_origin_x_mant = origin_delayed_result_x_mant;
  assign ray_delayed_origin_y_sign = origin_delayed_result_y_sign;
  assign ray_delayed_origin_y_exp = origin_delayed_result_y_exp;
  assign ray_delayed_origin_y_mant = origin_delayed_result_y_mant;
  assign ray_delayed_origin_z_sign = origin_delayed_result_z_sign;
  assign ray_delayed_origin_z_exp = origin_delayed_result_z_exp;
  assign ray_delayed_origin_z_mant = origin_delayed_result_z_mant;
  assign ray_delayed_direction_x_sign = dir_delayed_result_x_sign;
  assign ray_delayed_direction_x_exp = dir_delayed_result_x_exp;
  assign ray_delayed_direction_x_mant = dir_delayed_result_x_mant;
  assign ray_delayed_direction_y_sign = dir_delayed_result_y_sign;
  assign ray_delayed_direction_y_exp = dir_delayed_result_y_exp;
  assign ray_delayed_direction_y_mant = dir_delayed_result_y_mant;
  assign ray_delayed_direction_z_sign = dir_delayed_result_z_sign;
  assign ray_delayed_direction_z_exp = dir_delayed_result_z_exp;
  assign ray_delayed_direction_z_mant = dir_delayed_result_z_mant;
  assign io_result_vld = reflect_dir_vld;
  assign io_result_intersects = intersects_delayed;
  assign io_result_t_sign = t_delayed_sign;
  assign io_result_t_exp = t_delayed_exp;
  assign io_result_t_mant = t_delayed_mant;
  assign io_result_intersection_x_sign = intersection_delayed_x_sign;
  assign io_result_intersection_x_exp = intersection_delayed_x_exp;
  assign io_result_intersection_x_mant = intersection_delayed_x_mant;
  assign io_result_intersection_y_sign = intersection_delayed_y_sign;
  assign io_result_intersection_y_exp = intersection_delayed_y_exp;
  assign io_result_intersection_y_mant = intersection_delayed_y_mant;
  assign io_result_intersection_z_sign = intersection_delayed_z_sign;
  assign io_result_intersection_z_exp = intersection_delayed_z_exp;
  assign io_result_intersection_z_mant = intersection_delayed_z_mant;
  assign io_result_normal_x_sign = normal_delayed_result_x_sign;
  assign io_result_normal_x_exp = normal_delayed_result_x_exp;
  assign io_result_normal_x_mant = normal_delayed_result_x_mant;
  assign io_result_normal_y_sign = normal_delayed_result_y_sign;
  assign io_result_normal_y_exp = normal_delayed_result_y_exp;
  assign io_result_normal_y_mant = normal_delayed_result_y_mant;
  assign io_result_normal_z_sign = normal_delayed_result_z_sign;
  assign io_result_normal_z_exp = normal_delayed_result_z_exp;
  assign io_result_normal_z_mant = normal_delayed_result_z_mant;
  assign io_result_reflect_ray_origin_x_sign = reflect_ray_origin_x_sign;
  assign io_result_reflect_ray_origin_x_exp = reflect_ray_origin_x_exp;
  assign io_result_reflect_ray_origin_x_mant = reflect_ray_origin_x_mant;
  assign io_result_reflect_ray_origin_y_sign = reflect_ray_origin_y_sign;
  assign io_result_reflect_ray_origin_y_exp = reflect_ray_origin_y_exp;
  assign io_result_reflect_ray_origin_y_mant = reflect_ray_origin_y_mant;
  assign io_result_reflect_ray_origin_z_sign = reflect_ray_origin_z_sign;
  assign io_result_reflect_ray_origin_z_exp = reflect_ray_origin_z_exp;
  assign io_result_reflect_ray_origin_z_mant = reflect_ray_origin_z_mant;
  assign io_result_reflect_ray_direction_x_sign = reflect_ray_direction_x_sign;
  assign io_result_reflect_ray_direction_x_exp = reflect_ray_direction_x_exp;
  assign io_result_reflect_ray_direction_x_mant = reflect_ray_direction_x_mant;
  assign io_result_reflect_ray_direction_y_sign = reflect_ray_direction_y_sign;
  assign io_result_reflect_ray_direction_y_exp = reflect_ray_direction_y_exp;
  assign io_result_reflect_ray_direction_y_mant = reflect_ray_direction_y_mant;
  assign io_result_reflect_ray_direction_z_sign = reflect_ray_direction_z_sign;
  assign io_result_reflect_ray_direction_z_exp = reflect_ray_direction_z_exp;
  assign io_result_reflect_ray_direction_z_mant = reflect_ray_direction_z_mant;
  assign io_result_ray_origin_x_sign = ray_delayed_origin_x_sign;
  assign io_result_ray_origin_x_exp = ray_delayed_origin_x_exp;
  assign io_result_ray_origin_x_mant = ray_delayed_origin_x_mant;
  assign io_result_ray_origin_y_sign = ray_delayed_origin_y_sign;
  assign io_result_ray_origin_y_exp = ray_delayed_origin_y_exp;
  assign io_result_ray_origin_y_mant = ray_delayed_origin_y_mant;
  assign io_result_ray_origin_z_sign = ray_delayed_origin_z_sign;
  assign io_result_ray_origin_z_exp = ray_delayed_origin_z_exp;
  assign io_result_ray_origin_z_mant = ray_delayed_origin_z_mant;
  assign io_result_ray_direction_x_sign = ray_delayed_direction_x_sign;
  assign io_result_ray_direction_x_exp = ray_delayed_direction_x_exp;
  assign io_result_ray_direction_x_mant = ray_delayed_direction_x_mant;
  assign io_result_ray_direction_y_sign = ray_delayed_direction_y_sign;
  assign io_result_ray_direction_y_exp = ray_delayed_direction_y_exp;
  assign io_result_ray_direction_y_mant = ray_delayed_direction_y_mant;
  assign io_result_ray_direction_z_sign = ray_delayed_direction_z_sign;
  assign io_result_ray_direction_z_exp = ray_delayed_direction_z_exp;
  assign io_result_ray_direction_z_mant = ray_delayed_direction_z_mant;
  always @ (posedge clk) begin
    io_ray_direction_delay_1_x_sign <= io_ray_direction_x_sign;
    io_ray_direction_delay_1_x_exp <= io_ray_direction_x_exp;
    io_ray_direction_delay_1_x_mant <= io_ray_direction_x_mant;
    io_ray_direction_delay_1_y_sign <= io_ray_direction_y_sign;
    io_ray_direction_delay_1_y_exp <= io_ray_direction_y_exp;
    io_ray_direction_delay_1_y_mant <= io_ray_direction_y_mant;
    io_ray_direction_delay_1_z_sign <= io_ray_direction_z_sign;
    io_ray_direction_delay_1_z_exp <= io_ray_direction_z_exp;
    io_ray_direction_delay_1_z_mant <= io_ray_direction_z_mant;
    dir_delayed_c0r0_x_sign <= io_ray_direction_delay_1_x_sign;
    dir_delayed_c0r0_x_exp <= io_ray_direction_delay_1_x_exp;
    dir_delayed_c0r0_x_mant <= io_ray_direction_delay_1_x_mant;
    dir_delayed_c0r0_y_sign <= io_ray_direction_delay_1_y_sign;
    dir_delayed_c0r0_y_exp <= io_ray_direction_delay_1_y_exp;
    dir_delayed_c0r0_y_mant <= io_ray_direction_delay_1_y_mant;
    dir_delayed_c0r0_z_sign <= io_ray_direction_delay_1_z_sign;
    dir_delayed_c0r0_z_exp <= io_ray_direction_delay_1_z_exp;
    dir_delayed_c0r0_z_mant <= io_ray_direction_delay_1_z_mant;
    c0r0_c0r0_delay_1_sign <= c0r0_c0r0_sign;
    c0r0_c0r0_delay_1_exp <= c0r0_c0r0_exp;
    c0r0_c0r0_delay_1_mant <= c0r0_c0r0_mant;
    c0r0_c0r0_delayed_sign <= c0r0_c0r0_delay_1_sign;
    c0r0_c0r0_delayed_exp <= c0r0_c0r0_delay_1_exp;
    c0r0_c0r0_delayed_mant <= c0r0_c0r0_delay_1_mant;
    intersects_tca_delay_1 <= intersects_tca;
    intersects_tca_delay_2 <= intersects_tca_delay_1;
    intersects_tca_delay_3 <= intersects_tca_delay_2;
    intersects_tca_delayed_early <= intersects_tca_delay_3;
    d2_vld_regNext <= d2_vld;
    _zz_1_ <= (radius2_ge_d2 && intersects_tca_delayed_early);
    tca_delay_1_sign <= tca_sign;
    tca_delay_1_exp <= tca_exp;
    tca_delay_1_mant <= tca_mant;
    tca_delay_2_sign <= tca_delay_1_sign;
    tca_delay_2_exp <= tca_delay_1_exp;
    tca_delay_2_mant <= tca_delay_1_mant;
    tca_delay_3_sign <= tca_delay_2_sign;
    tca_delay_3_exp <= tca_delay_2_exp;
    tca_delay_3_mant <= tca_delay_2_mant;
    tca_delay_4_sign <= tca_delay_3_sign;
    tca_delay_4_exp <= tca_delay_3_exp;
    tca_delay_4_mant <= tca_delay_3_mant;
    tca_delay_5_sign <= tca_delay_4_sign;
    tca_delay_5_exp <= tca_delay_4_exp;
    tca_delay_5_mant <= tca_delay_4_mant;
    tca_delay_6_sign <= tca_delay_5_sign;
    tca_delay_6_exp <= tca_delay_5_exp;
    tca_delay_6_mant <= tca_delay_5_mant;
    tca_delayed_sign <= tca_delay_6_sign;
    tca_delayed_exp <= tca_delay_6_exp;
    tca_delayed_mant <= tca_delay_6_mant;
    t0_vld_regNext <= t0_vld;
    _zz_3_ <= (_zz_2_ ? t1_sign : t0_sign);
    _zz_4_ <= (_zz_2_ ? t1_exp : t0_exp);
    _zz_5_ <= (_zz_2_ ? t1_mant : t0_mant);
    dir_delayed_c0r0_delay_1_x_sign <= dir_delayed_c0r0_x_sign;
    dir_delayed_c0r0_delay_1_x_exp <= dir_delayed_c0r0_x_exp;
    dir_delayed_c0r0_delay_1_x_mant <= dir_delayed_c0r0_x_mant;
    dir_delayed_c0r0_delay_1_y_sign <= dir_delayed_c0r0_y_sign;
    dir_delayed_c0r0_delay_1_y_exp <= dir_delayed_c0r0_y_exp;
    dir_delayed_c0r0_delay_1_y_mant <= dir_delayed_c0r0_y_mant;
    dir_delayed_c0r0_delay_1_z_sign <= dir_delayed_c0r0_z_sign;
    dir_delayed_c0r0_delay_1_z_exp <= dir_delayed_c0r0_z_exp;
    dir_delayed_c0r0_delay_1_z_mant <= dir_delayed_c0r0_z_mant;
    dir_delayed_c0r0_delay_2_x_sign <= dir_delayed_c0r0_delay_1_x_sign;
    dir_delayed_c0r0_delay_2_x_exp <= dir_delayed_c0r0_delay_1_x_exp;
    dir_delayed_c0r0_delay_2_x_mant <= dir_delayed_c0r0_delay_1_x_mant;
    dir_delayed_c0r0_delay_2_y_sign <= dir_delayed_c0r0_delay_1_y_sign;
    dir_delayed_c0r0_delay_2_y_exp <= dir_delayed_c0r0_delay_1_y_exp;
    dir_delayed_c0r0_delay_2_y_mant <= dir_delayed_c0r0_delay_1_y_mant;
    dir_delayed_c0r0_delay_2_z_sign <= dir_delayed_c0r0_delay_1_z_sign;
    dir_delayed_c0r0_delay_2_z_exp <= dir_delayed_c0r0_delay_1_z_exp;
    dir_delayed_c0r0_delay_2_z_mant <= dir_delayed_c0r0_delay_1_z_mant;
    dir_delayed_c0r0_delay_3_x_sign <= dir_delayed_c0r0_delay_2_x_sign;
    dir_delayed_c0r0_delay_3_x_exp <= dir_delayed_c0r0_delay_2_x_exp;
    dir_delayed_c0r0_delay_3_x_mant <= dir_delayed_c0r0_delay_2_x_mant;
    dir_delayed_c0r0_delay_3_y_sign <= dir_delayed_c0r0_delay_2_y_sign;
    dir_delayed_c0r0_delay_3_y_exp <= dir_delayed_c0r0_delay_2_y_exp;
    dir_delayed_c0r0_delay_3_y_mant <= dir_delayed_c0r0_delay_2_y_mant;
    dir_delayed_c0r0_delay_3_z_sign <= dir_delayed_c0r0_delay_2_z_sign;
    dir_delayed_c0r0_delay_3_z_exp <= dir_delayed_c0r0_delay_2_z_exp;
    dir_delayed_c0r0_delay_3_z_mant <= dir_delayed_c0r0_delay_2_z_mant;
    dir_delayed_c0r0_delay_4_x_sign <= dir_delayed_c0r0_delay_3_x_sign;
    dir_delayed_c0r0_delay_4_x_exp <= dir_delayed_c0r0_delay_3_x_exp;
    dir_delayed_c0r0_delay_4_x_mant <= dir_delayed_c0r0_delay_3_x_mant;
    dir_delayed_c0r0_delay_4_y_sign <= dir_delayed_c0r0_delay_3_y_sign;
    dir_delayed_c0r0_delay_4_y_exp <= dir_delayed_c0r0_delay_3_y_exp;
    dir_delayed_c0r0_delay_4_y_mant <= dir_delayed_c0r0_delay_3_y_mant;
    dir_delayed_c0r0_delay_4_z_sign <= dir_delayed_c0r0_delay_3_z_sign;
    dir_delayed_c0r0_delay_4_z_exp <= dir_delayed_c0r0_delay_3_z_exp;
    dir_delayed_c0r0_delay_4_z_mant <= dir_delayed_c0r0_delay_3_z_mant;
    dir_delayed_c0r0_delay_5_x_sign <= dir_delayed_c0r0_delay_4_x_sign;
    dir_delayed_c0r0_delay_5_x_exp <= dir_delayed_c0r0_delay_4_x_exp;
    dir_delayed_c0r0_delay_5_x_mant <= dir_delayed_c0r0_delay_4_x_mant;
    dir_delayed_c0r0_delay_5_y_sign <= dir_delayed_c0r0_delay_4_y_sign;
    dir_delayed_c0r0_delay_5_y_exp <= dir_delayed_c0r0_delay_4_y_exp;
    dir_delayed_c0r0_delay_5_y_mant <= dir_delayed_c0r0_delay_4_y_mant;
    dir_delayed_c0r0_delay_5_z_sign <= dir_delayed_c0r0_delay_4_z_sign;
    dir_delayed_c0r0_delay_5_z_exp <= dir_delayed_c0r0_delay_4_z_exp;
    dir_delayed_c0r0_delay_5_z_mant <= dir_delayed_c0r0_delay_4_z_mant;
    dir_delayed_c0r0_delay_6_x_sign <= dir_delayed_c0r0_delay_5_x_sign;
    dir_delayed_c0r0_delay_6_x_exp <= dir_delayed_c0r0_delay_5_x_exp;
    dir_delayed_c0r0_delay_6_x_mant <= dir_delayed_c0r0_delay_5_x_mant;
    dir_delayed_c0r0_delay_6_y_sign <= dir_delayed_c0r0_delay_5_y_sign;
    dir_delayed_c0r0_delay_6_y_exp <= dir_delayed_c0r0_delay_5_y_exp;
    dir_delayed_c0r0_delay_6_y_mant <= dir_delayed_c0r0_delay_5_y_mant;
    dir_delayed_c0r0_delay_6_z_sign <= dir_delayed_c0r0_delay_5_z_sign;
    dir_delayed_c0r0_delay_6_z_exp <= dir_delayed_c0r0_delay_5_z_exp;
    dir_delayed_c0r0_delay_6_z_mant <= dir_delayed_c0r0_delay_5_z_mant;
    dir_delayed_c0r0_delay_7_x_sign <= dir_delayed_c0r0_delay_6_x_sign;
    dir_delayed_c0r0_delay_7_x_exp <= dir_delayed_c0r0_delay_6_x_exp;
    dir_delayed_c0r0_delay_7_x_mant <= dir_delayed_c0r0_delay_6_x_mant;
    dir_delayed_c0r0_delay_7_y_sign <= dir_delayed_c0r0_delay_6_y_sign;
    dir_delayed_c0r0_delay_7_y_exp <= dir_delayed_c0r0_delay_6_y_exp;
    dir_delayed_c0r0_delay_7_y_mant <= dir_delayed_c0r0_delay_6_y_mant;
    dir_delayed_c0r0_delay_7_z_sign <= dir_delayed_c0r0_delay_6_z_sign;
    dir_delayed_c0r0_delay_7_z_exp <= dir_delayed_c0r0_delay_6_z_exp;
    dir_delayed_c0r0_delay_7_z_mant <= dir_delayed_c0r0_delay_6_z_mant;
    dir_delayed_c0r0_delay_8_x_sign <= dir_delayed_c0r0_delay_7_x_sign;
    dir_delayed_c0r0_delay_8_x_exp <= dir_delayed_c0r0_delay_7_x_exp;
    dir_delayed_c0r0_delay_8_x_mant <= dir_delayed_c0r0_delay_7_x_mant;
    dir_delayed_c0r0_delay_8_y_sign <= dir_delayed_c0r0_delay_7_y_sign;
    dir_delayed_c0r0_delay_8_y_exp <= dir_delayed_c0r0_delay_7_y_exp;
    dir_delayed_c0r0_delay_8_y_mant <= dir_delayed_c0r0_delay_7_y_mant;
    dir_delayed_c0r0_delay_8_z_sign <= dir_delayed_c0r0_delay_7_z_sign;
    dir_delayed_c0r0_delay_8_z_exp <= dir_delayed_c0r0_delay_7_z_exp;
    dir_delayed_c0r0_delay_8_z_mant <= dir_delayed_c0r0_delay_7_z_mant;
    dir_delayed_c0r0_delay_9_x_sign <= dir_delayed_c0r0_delay_8_x_sign;
    dir_delayed_c0r0_delay_9_x_exp <= dir_delayed_c0r0_delay_8_x_exp;
    dir_delayed_c0r0_delay_9_x_mant <= dir_delayed_c0r0_delay_8_x_mant;
    dir_delayed_c0r0_delay_9_y_sign <= dir_delayed_c0r0_delay_8_y_sign;
    dir_delayed_c0r0_delay_9_y_exp <= dir_delayed_c0r0_delay_8_y_exp;
    dir_delayed_c0r0_delay_9_y_mant <= dir_delayed_c0r0_delay_8_y_mant;
    dir_delayed_c0r0_delay_9_z_sign <= dir_delayed_c0r0_delay_8_z_sign;
    dir_delayed_c0r0_delay_9_z_exp <= dir_delayed_c0r0_delay_8_z_exp;
    dir_delayed_c0r0_delay_9_z_mant <= dir_delayed_c0r0_delay_8_z_mant;
    dir_delayed_c0r0_delay_10_x_sign <= dir_delayed_c0r0_delay_9_x_sign;
    dir_delayed_c0r0_delay_10_x_exp <= dir_delayed_c0r0_delay_9_x_exp;
    dir_delayed_c0r0_delay_10_x_mant <= dir_delayed_c0r0_delay_9_x_mant;
    dir_delayed_c0r0_delay_10_y_sign <= dir_delayed_c0r0_delay_9_y_sign;
    dir_delayed_c0r0_delay_10_y_exp <= dir_delayed_c0r0_delay_9_y_exp;
    dir_delayed_c0r0_delay_10_y_mant <= dir_delayed_c0r0_delay_9_y_mant;
    dir_delayed_c0r0_delay_10_z_sign <= dir_delayed_c0r0_delay_9_z_sign;
    dir_delayed_c0r0_delay_10_z_exp <= dir_delayed_c0r0_delay_9_z_exp;
    dir_delayed_c0r0_delay_10_z_mant <= dir_delayed_c0r0_delay_9_z_mant;
    dir_delayed_c0r0_delay_11_x_sign <= dir_delayed_c0r0_delay_10_x_sign;
    dir_delayed_c0r0_delay_11_x_exp <= dir_delayed_c0r0_delay_10_x_exp;
    dir_delayed_c0r0_delay_11_x_mant <= dir_delayed_c0r0_delay_10_x_mant;
    dir_delayed_c0r0_delay_11_y_sign <= dir_delayed_c0r0_delay_10_y_sign;
    dir_delayed_c0r0_delay_11_y_exp <= dir_delayed_c0r0_delay_10_y_exp;
    dir_delayed_c0r0_delay_11_y_mant <= dir_delayed_c0r0_delay_10_y_mant;
    dir_delayed_c0r0_delay_11_z_sign <= dir_delayed_c0r0_delay_10_z_sign;
    dir_delayed_c0r0_delay_11_z_exp <= dir_delayed_c0r0_delay_10_z_exp;
    dir_delayed_c0r0_delay_11_z_mant <= dir_delayed_c0r0_delay_10_z_mant;
    dir_delayed_c0r0_delay_12_x_sign <= dir_delayed_c0r0_delay_11_x_sign;
    dir_delayed_c0r0_delay_12_x_exp <= dir_delayed_c0r0_delay_11_x_exp;
    dir_delayed_c0r0_delay_12_x_mant <= dir_delayed_c0r0_delay_11_x_mant;
    dir_delayed_c0r0_delay_12_y_sign <= dir_delayed_c0r0_delay_11_y_sign;
    dir_delayed_c0r0_delay_12_y_exp <= dir_delayed_c0r0_delay_11_y_exp;
    dir_delayed_c0r0_delay_12_y_mant <= dir_delayed_c0r0_delay_11_y_mant;
    dir_delayed_c0r0_delay_12_z_sign <= dir_delayed_c0r0_delay_11_z_sign;
    dir_delayed_c0r0_delay_12_z_exp <= dir_delayed_c0r0_delay_11_z_exp;
    dir_delayed_c0r0_delay_12_z_mant <= dir_delayed_c0r0_delay_11_z_mant;
    dir_delayed_c0r0_delay_13_x_sign <= dir_delayed_c0r0_delay_12_x_sign;
    dir_delayed_c0r0_delay_13_x_exp <= dir_delayed_c0r0_delay_12_x_exp;
    dir_delayed_c0r0_delay_13_x_mant <= dir_delayed_c0r0_delay_12_x_mant;
    dir_delayed_c0r0_delay_13_y_sign <= dir_delayed_c0r0_delay_12_y_sign;
    dir_delayed_c0r0_delay_13_y_exp <= dir_delayed_c0r0_delay_12_y_exp;
    dir_delayed_c0r0_delay_13_y_mant <= dir_delayed_c0r0_delay_12_y_mant;
    dir_delayed_c0r0_delay_13_z_sign <= dir_delayed_c0r0_delay_12_z_sign;
    dir_delayed_c0r0_delay_13_z_exp <= dir_delayed_c0r0_delay_12_z_exp;
    dir_delayed_c0r0_delay_13_z_mant <= dir_delayed_c0r0_delay_12_z_mant;
    dir_delayed_c0r0_delay_14_x_sign <= dir_delayed_c0r0_delay_13_x_sign;
    dir_delayed_c0r0_delay_14_x_exp <= dir_delayed_c0r0_delay_13_x_exp;
    dir_delayed_c0r0_delay_14_x_mant <= dir_delayed_c0r0_delay_13_x_mant;
    dir_delayed_c0r0_delay_14_y_sign <= dir_delayed_c0r0_delay_13_y_sign;
    dir_delayed_c0r0_delay_14_y_exp <= dir_delayed_c0r0_delay_13_y_exp;
    dir_delayed_c0r0_delay_14_y_mant <= dir_delayed_c0r0_delay_13_y_mant;
    dir_delayed_c0r0_delay_14_z_sign <= dir_delayed_c0r0_delay_13_z_sign;
    dir_delayed_c0r0_delay_14_z_exp <= dir_delayed_c0r0_delay_13_z_exp;
    dir_delayed_c0r0_delay_14_z_mant <= dir_delayed_c0r0_delay_13_z_mant;
    dir_delayed_c0r0_delay_15_x_sign <= dir_delayed_c0r0_delay_14_x_sign;
    dir_delayed_c0r0_delay_15_x_exp <= dir_delayed_c0r0_delay_14_x_exp;
    dir_delayed_c0r0_delay_15_x_mant <= dir_delayed_c0r0_delay_14_x_mant;
    dir_delayed_c0r0_delay_15_y_sign <= dir_delayed_c0r0_delay_14_y_sign;
    dir_delayed_c0r0_delay_15_y_exp <= dir_delayed_c0r0_delay_14_y_exp;
    dir_delayed_c0r0_delay_15_y_mant <= dir_delayed_c0r0_delay_14_y_mant;
    dir_delayed_c0r0_delay_15_z_sign <= dir_delayed_c0r0_delay_14_z_sign;
    dir_delayed_c0r0_delay_15_z_exp <= dir_delayed_c0r0_delay_14_z_exp;
    dir_delayed_c0r0_delay_15_z_mant <= dir_delayed_c0r0_delay_14_z_mant;
    dir_delayed_intersect_x_sign <= dir_delayed_c0r0_delay_15_x_sign;
    dir_delayed_intersect_x_exp <= dir_delayed_c0r0_delay_15_x_exp;
    dir_delayed_intersect_x_mant <= dir_delayed_c0r0_delay_15_x_mant;
    dir_delayed_intersect_y_sign <= dir_delayed_c0r0_delay_15_y_sign;
    dir_delayed_intersect_y_exp <= dir_delayed_c0r0_delay_15_y_exp;
    dir_delayed_intersect_y_mant <= dir_delayed_c0r0_delay_15_y_mant;
    dir_delayed_intersect_z_sign <= dir_delayed_c0r0_delay_15_z_sign;
    dir_delayed_intersect_z_exp <= dir_delayed_c0r0_delay_15_z_exp;
    dir_delayed_intersect_z_mant <= dir_delayed_c0r0_delay_15_z_mant;
    io_ray_origin_delay_1_x_sign <= io_ray_origin_x_sign;
    io_ray_origin_delay_1_x_exp <= io_ray_origin_x_exp;
    io_ray_origin_delay_1_x_mant <= io_ray_origin_x_mant;
    io_ray_origin_delay_1_y_sign <= io_ray_origin_y_sign;
    io_ray_origin_delay_1_y_exp <= io_ray_origin_y_exp;
    io_ray_origin_delay_1_y_mant <= io_ray_origin_y_mant;
    io_ray_origin_delay_1_z_sign <= io_ray_origin_z_sign;
    io_ray_origin_delay_1_z_exp <= io_ray_origin_z_exp;
    io_ray_origin_delay_1_z_mant <= io_ray_origin_z_mant;
    io_ray_origin_delay_2_x_sign <= io_ray_origin_delay_1_x_sign;
    io_ray_origin_delay_2_x_exp <= io_ray_origin_delay_1_x_exp;
    io_ray_origin_delay_2_x_mant <= io_ray_origin_delay_1_x_mant;
    io_ray_origin_delay_2_y_sign <= io_ray_origin_delay_1_y_sign;
    io_ray_origin_delay_2_y_exp <= io_ray_origin_delay_1_y_exp;
    io_ray_origin_delay_2_y_mant <= io_ray_origin_delay_1_y_mant;
    io_ray_origin_delay_2_z_sign <= io_ray_origin_delay_1_z_sign;
    io_ray_origin_delay_2_z_exp <= io_ray_origin_delay_1_z_exp;
    io_ray_origin_delay_2_z_mant <= io_ray_origin_delay_1_z_mant;
    io_ray_origin_delay_3_x_sign <= io_ray_origin_delay_2_x_sign;
    io_ray_origin_delay_3_x_exp <= io_ray_origin_delay_2_x_exp;
    io_ray_origin_delay_3_x_mant <= io_ray_origin_delay_2_x_mant;
    io_ray_origin_delay_3_y_sign <= io_ray_origin_delay_2_y_sign;
    io_ray_origin_delay_3_y_exp <= io_ray_origin_delay_2_y_exp;
    io_ray_origin_delay_3_y_mant <= io_ray_origin_delay_2_y_mant;
    io_ray_origin_delay_3_z_sign <= io_ray_origin_delay_2_z_sign;
    io_ray_origin_delay_3_z_exp <= io_ray_origin_delay_2_z_exp;
    io_ray_origin_delay_3_z_mant <= io_ray_origin_delay_2_z_mant;
    io_ray_origin_delay_4_x_sign <= io_ray_origin_delay_3_x_sign;
    io_ray_origin_delay_4_x_exp <= io_ray_origin_delay_3_x_exp;
    io_ray_origin_delay_4_x_mant <= io_ray_origin_delay_3_x_mant;
    io_ray_origin_delay_4_y_sign <= io_ray_origin_delay_3_y_sign;
    io_ray_origin_delay_4_y_exp <= io_ray_origin_delay_3_y_exp;
    io_ray_origin_delay_4_y_mant <= io_ray_origin_delay_3_y_mant;
    io_ray_origin_delay_4_z_sign <= io_ray_origin_delay_3_z_sign;
    io_ray_origin_delay_4_z_exp <= io_ray_origin_delay_3_z_exp;
    io_ray_origin_delay_4_z_mant <= io_ray_origin_delay_3_z_mant;
    io_ray_origin_delay_5_x_sign <= io_ray_origin_delay_4_x_sign;
    io_ray_origin_delay_5_x_exp <= io_ray_origin_delay_4_x_exp;
    io_ray_origin_delay_5_x_mant <= io_ray_origin_delay_4_x_mant;
    io_ray_origin_delay_5_y_sign <= io_ray_origin_delay_4_y_sign;
    io_ray_origin_delay_5_y_exp <= io_ray_origin_delay_4_y_exp;
    io_ray_origin_delay_5_y_mant <= io_ray_origin_delay_4_y_mant;
    io_ray_origin_delay_5_z_sign <= io_ray_origin_delay_4_z_sign;
    io_ray_origin_delay_5_z_exp <= io_ray_origin_delay_4_z_exp;
    io_ray_origin_delay_5_z_mant <= io_ray_origin_delay_4_z_mant;
    io_ray_origin_delay_6_x_sign <= io_ray_origin_delay_5_x_sign;
    io_ray_origin_delay_6_x_exp <= io_ray_origin_delay_5_x_exp;
    io_ray_origin_delay_6_x_mant <= io_ray_origin_delay_5_x_mant;
    io_ray_origin_delay_6_y_sign <= io_ray_origin_delay_5_y_sign;
    io_ray_origin_delay_6_y_exp <= io_ray_origin_delay_5_y_exp;
    io_ray_origin_delay_6_y_mant <= io_ray_origin_delay_5_y_mant;
    io_ray_origin_delay_6_z_sign <= io_ray_origin_delay_5_z_sign;
    io_ray_origin_delay_6_z_exp <= io_ray_origin_delay_5_z_exp;
    io_ray_origin_delay_6_z_mant <= io_ray_origin_delay_5_z_mant;
    io_ray_origin_delay_7_x_sign <= io_ray_origin_delay_6_x_sign;
    io_ray_origin_delay_7_x_exp <= io_ray_origin_delay_6_x_exp;
    io_ray_origin_delay_7_x_mant <= io_ray_origin_delay_6_x_mant;
    io_ray_origin_delay_7_y_sign <= io_ray_origin_delay_6_y_sign;
    io_ray_origin_delay_7_y_exp <= io_ray_origin_delay_6_y_exp;
    io_ray_origin_delay_7_y_mant <= io_ray_origin_delay_6_y_mant;
    io_ray_origin_delay_7_z_sign <= io_ray_origin_delay_6_z_sign;
    io_ray_origin_delay_7_z_exp <= io_ray_origin_delay_6_z_exp;
    io_ray_origin_delay_7_z_mant <= io_ray_origin_delay_6_z_mant;
    io_ray_origin_delay_8_x_sign <= io_ray_origin_delay_7_x_sign;
    io_ray_origin_delay_8_x_exp <= io_ray_origin_delay_7_x_exp;
    io_ray_origin_delay_8_x_mant <= io_ray_origin_delay_7_x_mant;
    io_ray_origin_delay_8_y_sign <= io_ray_origin_delay_7_y_sign;
    io_ray_origin_delay_8_y_exp <= io_ray_origin_delay_7_y_exp;
    io_ray_origin_delay_8_y_mant <= io_ray_origin_delay_7_y_mant;
    io_ray_origin_delay_8_z_sign <= io_ray_origin_delay_7_z_sign;
    io_ray_origin_delay_8_z_exp <= io_ray_origin_delay_7_z_exp;
    io_ray_origin_delay_8_z_mant <= io_ray_origin_delay_7_z_mant;
    io_ray_origin_delay_9_x_sign <= io_ray_origin_delay_8_x_sign;
    io_ray_origin_delay_9_x_exp <= io_ray_origin_delay_8_x_exp;
    io_ray_origin_delay_9_x_mant <= io_ray_origin_delay_8_x_mant;
    io_ray_origin_delay_9_y_sign <= io_ray_origin_delay_8_y_sign;
    io_ray_origin_delay_9_y_exp <= io_ray_origin_delay_8_y_exp;
    io_ray_origin_delay_9_y_mant <= io_ray_origin_delay_8_y_mant;
    io_ray_origin_delay_9_z_sign <= io_ray_origin_delay_8_z_sign;
    io_ray_origin_delay_9_z_exp <= io_ray_origin_delay_8_z_exp;
    io_ray_origin_delay_9_z_mant <= io_ray_origin_delay_8_z_mant;
    io_ray_origin_delay_10_x_sign <= io_ray_origin_delay_9_x_sign;
    io_ray_origin_delay_10_x_exp <= io_ray_origin_delay_9_x_exp;
    io_ray_origin_delay_10_x_mant <= io_ray_origin_delay_9_x_mant;
    io_ray_origin_delay_10_y_sign <= io_ray_origin_delay_9_y_sign;
    io_ray_origin_delay_10_y_exp <= io_ray_origin_delay_9_y_exp;
    io_ray_origin_delay_10_y_mant <= io_ray_origin_delay_9_y_mant;
    io_ray_origin_delay_10_z_sign <= io_ray_origin_delay_9_z_sign;
    io_ray_origin_delay_10_z_exp <= io_ray_origin_delay_9_z_exp;
    io_ray_origin_delay_10_z_mant <= io_ray_origin_delay_9_z_mant;
    io_ray_origin_delay_11_x_sign <= io_ray_origin_delay_10_x_sign;
    io_ray_origin_delay_11_x_exp <= io_ray_origin_delay_10_x_exp;
    io_ray_origin_delay_11_x_mant <= io_ray_origin_delay_10_x_mant;
    io_ray_origin_delay_11_y_sign <= io_ray_origin_delay_10_y_sign;
    io_ray_origin_delay_11_y_exp <= io_ray_origin_delay_10_y_exp;
    io_ray_origin_delay_11_y_mant <= io_ray_origin_delay_10_y_mant;
    io_ray_origin_delay_11_z_sign <= io_ray_origin_delay_10_z_sign;
    io_ray_origin_delay_11_z_exp <= io_ray_origin_delay_10_z_exp;
    io_ray_origin_delay_11_z_mant <= io_ray_origin_delay_10_z_mant;
    io_ray_origin_delay_12_x_sign <= io_ray_origin_delay_11_x_sign;
    io_ray_origin_delay_12_x_exp <= io_ray_origin_delay_11_x_exp;
    io_ray_origin_delay_12_x_mant <= io_ray_origin_delay_11_x_mant;
    io_ray_origin_delay_12_y_sign <= io_ray_origin_delay_11_y_sign;
    io_ray_origin_delay_12_y_exp <= io_ray_origin_delay_11_y_exp;
    io_ray_origin_delay_12_y_mant <= io_ray_origin_delay_11_y_mant;
    io_ray_origin_delay_12_z_sign <= io_ray_origin_delay_11_z_sign;
    io_ray_origin_delay_12_z_exp <= io_ray_origin_delay_11_z_exp;
    io_ray_origin_delay_12_z_mant <= io_ray_origin_delay_11_z_mant;
    io_ray_origin_delay_13_x_sign <= io_ray_origin_delay_12_x_sign;
    io_ray_origin_delay_13_x_exp <= io_ray_origin_delay_12_x_exp;
    io_ray_origin_delay_13_x_mant <= io_ray_origin_delay_12_x_mant;
    io_ray_origin_delay_13_y_sign <= io_ray_origin_delay_12_y_sign;
    io_ray_origin_delay_13_y_exp <= io_ray_origin_delay_12_y_exp;
    io_ray_origin_delay_13_y_mant <= io_ray_origin_delay_12_y_mant;
    io_ray_origin_delay_13_z_sign <= io_ray_origin_delay_12_z_sign;
    io_ray_origin_delay_13_z_exp <= io_ray_origin_delay_12_z_exp;
    io_ray_origin_delay_13_z_mant <= io_ray_origin_delay_12_z_mant;
    io_ray_origin_delay_14_x_sign <= io_ray_origin_delay_13_x_sign;
    io_ray_origin_delay_14_x_exp <= io_ray_origin_delay_13_x_exp;
    io_ray_origin_delay_14_x_mant <= io_ray_origin_delay_13_x_mant;
    io_ray_origin_delay_14_y_sign <= io_ray_origin_delay_13_y_sign;
    io_ray_origin_delay_14_y_exp <= io_ray_origin_delay_13_y_exp;
    io_ray_origin_delay_14_y_mant <= io_ray_origin_delay_13_y_mant;
    io_ray_origin_delay_14_z_sign <= io_ray_origin_delay_13_z_sign;
    io_ray_origin_delay_14_z_exp <= io_ray_origin_delay_13_z_exp;
    io_ray_origin_delay_14_z_mant <= io_ray_origin_delay_13_z_mant;
    io_ray_origin_delay_15_x_sign <= io_ray_origin_delay_14_x_sign;
    io_ray_origin_delay_15_x_exp <= io_ray_origin_delay_14_x_exp;
    io_ray_origin_delay_15_x_mant <= io_ray_origin_delay_14_x_mant;
    io_ray_origin_delay_15_y_sign <= io_ray_origin_delay_14_y_sign;
    io_ray_origin_delay_15_y_exp <= io_ray_origin_delay_14_y_exp;
    io_ray_origin_delay_15_y_mant <= io_ray_origin_delay_14_y_mant;
    io_ray_origin_delay_15_z_sign <= io_ray_origin_delay_14_z_sign;
    io_ray_origin_delay_15_z_exp <= io_ray_origin_delay_14_z_exp;
    io_ray_origin_delay_15_z_mant <= io_ray_origin_delay_14_z_mant;
    io_ray_origin_delay_16_x_sign <= io_ray_origin_delay_15_x_sign;
    io_ray_origin_delay_16_x_exp <= io_ray_origin_delay_15_x_exp;
    io_ray_origin_delay_16_x_mant <= io_ray_origin_delay_15_x_mant;
    io_ray_origin_delay_16_y_sign <= io_ray_origin_delay_15_y_sign;
    io_ray_origin_delay_16_y_exp <= io_ray_origin_delay_15_y_exp;
    io_ray_origin_delay_16_y_mant <= io_ray_origin_delay_15_y_mant;
    io_ray_origin_delay_16_z_sign <= io_ray_origin_delay_15_z_sign;
    io_ray_origin_delay_16_z_exp <= io_ray_origin_delay_15_z_exp;
    io_ray_origin_delay_16_z_mant <= io_ray_origin_delay_15_z_mant;
    io_ray_origin_delay_17_x_sign <= io_ray_origin_delay_16_x_sign;
    io_ray_origin_delay_17_x_exp <= io_ray_origin_delay_16_x_exp;
    io_ray_origin_delay_17_x_mant <= io_ray_origin_delay_16_x_mant;
    io_ray_origin_delay_17_y_sign <= io_ray_origin_delay_16_y_sign;
    io_ray_origin_delay_17_y_exp <= io_ray_origin_delay_16_y_exp;
    io_ray_origin_delay_17_y_mant <= io_ray_origin_delay_16_y_mant;
    io_ray_origin_delay_17_z_sign <= io_ray_origin_delay_16_z_sign;
    io_ray_origin_delay_17_z_exp <= io_ray_origin_delay_16_z_exp;
    io_ray_origin_delay_17_z_mant <= io_ray_origin_delay_16_z_mant;
    origin_delayed_intersect_x_sign <= io_ray_origin_delay_17_x_sign;
    origin_delayed_intersect_x_exp <= io_ray_origin_delay_17_x_exp;
    origin_delayed_intersect_x_mant <= io_ray_origin_delay_17_x_mant;
    origin_delayed_intersect_y_sign <= io_ray_origin_delay_17_y_sign;
    origin_delayed_intersect_y_exp <= io_ray_origin_delay_17_y_exp;
    origin_delayed_intersect_y_mant <= io_ray_origin_delay_17_y_mant;
    origin_delayed_intersect_z_sign <= io_ray_origin_delay_17_z_sign;
    origin_delayed_intersect_z_exp <= io_ray_origin_delay_17_z_exp;
    origin_delayed_intersect_z_mant <= io_ray_origin_delay_17_z_mant;
    io_sphere_center_delay_1_x_sign <= io_sphere_center_x_sign;
    io_sphere_center_delay_1_x_exp <= io_sphere_center_x_exp;
    io_sphere_center_delay_1_x_mant <= io_sphere_center_x_mant;
    io_sphere_center_delay_1_y_sign <= io_sphere_center_y_sign;
    io_sphere_center_delay_1_y_exp <= io_sphere_center_y_exp;
    io_sphere_center_delay_1_y_mant <= io_sphere_center_y_mant;
    io_sphere_center_delay_1_z_sign <= io_sphere_center_z_sign;
    io_sphere_center_delay_1_z_exp <= io_sphere_center_z_exp;
    io_sphere_center_delay_1_z_mant <= io_sphere_center_z_mant;
    io_sphere_center_delay_2_x_sign <= io_sphere_center_delay_1_x_sign;
    io_sphere_center_delay_2_x_exp <= io_sphere_center_delay_1_x_exp;
    io_sphere_center_delay_2_x_mant <= io_sphere_center_delay_1_x_mant;
    io_sphere_center_delay_2_y_sign <= io_sphere_center_delay_1_y_sign;
    io_sphere_center_delay_2_y_exp <= io_sphere_center_delay_1_y_exp;
    io_sphere_center_delay_2_y_mant <= io_sphere_center_delay_1_y_mant;
    io_sphere_center_delay_2_z_sign <= io_sphere_center_delay_1_z_sign;
    io_sphere_center_delay_2_z_exp <= io_sphere_center_delay_1_z_exp;
    io_sphere_center_delay_2_z_mant <= io_sphere_center_delay_1_z_mant;
    io_sphere_center_delay_3_x_sign <= io_sphere_center_delay_2_x_sign;
    io_sphere_center_delay_3_x_exp <= io_sphere_center_delay_2_x_exp;
    io_sphere_center_delay_3_x_mant <= io_sphere_center_delay_2_x_mant;
    io_sphere_center_delay_3_y_sign <= io_sphere_center_delay_2_y_sign;
    io_sphere_center_delay_3_y_exp <= io_sphere_center_delay_2_y_exp;
    io_sphere_center_delay_3_y_mant <= io_sphere_center_delay_2_y_mant;
    io_sphere_center_delay_3_z_sign <= io_sphere_center_delay_2_z_sign;
    io_sphere_center_delay_3_z_exp <= io_sphere_center_delay_2_z_exp;
    io_sphere_center_delay_3_z_mant <= io_sphere_center_delay_2_z_mant;
    io_sphere_center_delay_4_x_sign <= io_sphere_center_delay_3_x_sign;
    io_sphere_center_delay_4_x_exp <= io_sphere_center_delay_3_x_exp;
    io_sphere_center_delay_4_x_mant <= io_sphere_center_delay_3_x_mant;
    io_sphere_center_delay_4_y_sign <= io_sphere_center_delay_3_y_sign;
    io_sphere_center_delay_4_y_exp <= io_sphere_center_delay_3_y_exp;
    io_sphere_center_delay_4_y_mant <= io_sphere_center_delay_3_y_mant;
    io_sphere_center_delay_4_z_sign <= io_sphere_center_delay_3_z_sign;
    io_sphere_center_delay_4_z_exp <= io_sphere_center_delay_3_z_exp;
    io_sphere_center_delay_4_z_mant <= io_sphere_center_delay_3_z_mant;
    io_sphere_center_delay_5_x_sign <= io_sphere_center_delay_4_x_sign;
    io_sphere_center_delay_5_x_exp <= io_sphere_center_delay_4_x_exp;
    io_sphere_center_delay_5_x_mant <= io_sphere_center_delay_4_x_mant;
    io_sphere_center_delay_5_y_sign <= io_sphere_center_delay_4_y_sign;
    io_sphere_center_delay_5_y_exp <= io_sphere_center_delay_4_y_exp;
    io_sphere_center_delay_5_y_mant <= io_sphere_center_delay_4_y_mant;
    io_sphere_center_delay_5_z_sign <= io_sphere_center_delay_4_z_sign;
    io_sphere_center_delay_5_z_exp <= io_sphere_center_delay_4_z_exp;
    io_sphere_center_delay_5_z_mant <= io_sphere_center_delay_4_z_mant;
    io_sphere_center_delay_6_x_sign <= io_sphere_center_delay_5_x_sign;
    io_sphere_center_delay_6_x_exp <= io_sphere_center_delay_5_x_exp;
    io_sphere_center_delay_6_x_mant <= io_sphere_center_delay_5_x_mant;
    io_sphere_center_delay_6_y_sign <= io_sphere_center_delay_5_y_sign;
    io_sphere_center_delay_6_y_exp <= io_sphere_center_delay_5_y_exp;
    io_sphere_center_delay_6_y_mant <= io_sphere_center_delay_5_y_mant;
    io_sphere_center_delay_6_z_sign <= io_sphere_center_delay_5_z_sign;
    io_sphere_center_delay_6_z_exp <= io_sphere_center_delay_5_z_exp;
    io_sphere_center_delay_6_z_mant <= io_sphere_center_delay_5_z_mant;
    io_sphere_center_delay_7_x_sign <= io_sphere_center_delay_6_x_sign;
    io_sphere_center_delay_7_x_exp <= io_sphere_center_delay_6_x_exp;
    io_sphere_center_delay_7_x_mant <= io_sphere_center_delay_6_x_mant;
    io_sphere_center_delay_7_y_sign <= io_sphere_center_delay_6_y_sign;
    io_sphere_center_delay_7_y_exp <= io_sphere_center_delay_6_y_exp;
    io_sphere_center_delay_7_y_mant <= io_sphere_center_delay_6_y_mant;
    io_sphere_center_delay_7_z_sign <= io_sphere_center_delay_6_z_sign;
    io_sphere_center_delay_7_z_exp <= io_sphere_center_delay_6_z_exp;
    io_sphere_center_delay_7_z_mant <= io_sphere_center_delay_6_z_mant;
    io_sphere_center_delay_8_x_sign <= io_sphere_center_delay_7_x_sign;
    io_sphere_center_delay_8_x_exp <= io_sphere_center_delay_7_x_exp;
    io_sphere_center_delay_8_x_mant <= io_sphere_center_delay_7_x_mant;
    io_sphere_center_delay_8_y_sign <= io_sphere_center_delay_7_y_sign;
    io_sphere_center_delay_8_y_exp <= io_sphere_center_delay_7_y_exp;
    io_sphere_center_delay_8_y_mant <= io_sphere_center_delay_7_y_mant;
    io_sphere_center_delay_8_z_sign <= io_sphere_center_delay_7_z_sign;
    io_sphere_center_delay_8_z_exp <= io_sphere_center_delay_7_z_exp;
    io_sphere_center_delay_8_z_mant <= io_sphere_center_delay_7_z_mant;
    io_sphere_center_delay_9_x_sign <= io_sphere_center_delay_8_x_sign;
    io_sphere_center_delay_9_x_exp <= io_sphere_center_delay_8_x_exp;
    io_sphere_center_delay_9_x_mant <= io_sphere_center_delay_8_x_mant;
    io_sphere_center_delay_9_y_sign <= io_sphere_center_delay_8_y_sign;
    io_sphere_center_delay_9_y_exp <= io_sphere_center_delay_8_y_exp;
    io_sphere_center_delay_9_y_mant <= io_sphere_center_delay_8_y_mant;
    io_sphere_center_delay_9_z_sign <= io_sphere_center_delay_8_z_sign;
    io_sphere_center_delay_9_z_exp <= io_sphere_center_delay_8_z_exp;
    io_sphere_center_delay_9_z_mant <= io_sphere_center_delay_8_z_mant;
    io_sphere_center_delay_10_x_sign <= io_sphere_center_delay_9_x_sign;
    io_sphere_center_delay_10_x_exp <= io_sphere_center_delay_9_x_exp;
    io_sphere_center_delay_10_x_mant <= io_sphere_center_delay_9_x_mant;
    io_sphere_center_delay_10_y_sign <= io_sphere_center_delay_9_y_sign;
    io_sphere_center_delay_10_y_exp <= io_sphere_center_delay_9_y_exp;
    io_sphere_center_delay_10_y_mant <= io_sphere_center_delay_9_y_mant;
    io_sphere_center_delay_10_z_sign <= io_sphere_center_delay_9_z_sign;
    io_sphere_center_delay_10_z_exp <= io_sphere_center_delay_9_z_exp;
    io_sphere_center_delay_10_z_mant <= io_sphere_center_delay_9_z_mant;
    io_sphere_center_delay_11_x_sign <= io_sphere_center_delay_10_x_sign;
    io_sphere_center_delay_11_x_exp <= io_sphere_center_delay_10_x_exp;
    io_sphere_center_delay_11_x_mant <= io_sphere_center_delay_10_x_mant;
    io_sphere_center_delay_11_y_sign <= io_sphere_center_delay_10_y_sign;
    io_sphere_center_delay_11_y_exp <= io_sphere_center_delay_10_y_exp;
    io_sphere_center_delay_11_y_mant <= io_sphere_center_delay_10_y_mant;
    io_sphere_center_delay_11_z_sign <= io_sphere_center_delay_10_z_sign;
    io_sphere_center_delay_11_z_exp <= io_sphere_center_delay_10_z_exp;
    io_sphere_center_delay_11_z_mant <= io_sphere_center_delay_10_z_mant;
    io_sphere_center_delay_12_x_sign <= io_sphere_center_delay_11_x_sign;
    io_sphere_center_delay_12_x_exp <= io_sphere_center_delay_11_x_exp;
    io_sphere_center_delay_12_x_mant <= io_sphere_center_delay_11_x_mant;
    io_sphere_center_delay_12_y_sign <= io_sphere_center_delay_11_y_sign;
    io_sphere_center_delay_12_y_exp <= io_sphere_center_delay_11_y_exp;
    io_sphere_center_delay_12_y_mant <= io_sphere_center_delay_11_y_mant;
    io_sphere_center_delay_12_z_sign <= io_sphere_center_delay_11_z_sign;
    io_sphere_center_delay_12_z_exp <= io_sphere_center_delay_11_z_exp;
    io_sphere_center_delay_12_z_mant <= io_sphere_center_delay_11_z_mant;
    io_sphere_center_delay_13_x_sign <= io_sphere_center_delay_12_x_sign;
    io_sphere_center_delay_13_x_exp <= io_sphere_center_delay_12_x_exp;
    io_sphere_center_delay_13_x_mant <= io_sphere_center_delay_12_x_mant;
    io_sphere_center_delay_13_y_sign <= io_sphere_center_delay_12_y_sign;
    io_sphere_center_delay_13_y_exp <= io_sphere_center_delay_12_y_exp;
    io_sphere_center_delay_13_y_mant <= io_sphere_center_delay_12_y_mant;
    io_sphere_center_delay_13_z_sign <= io_sphere_center_delay_12_z_sign;
    io_sphere_center_delay_13_z_exp <= io_sphere_center_delay_12_z_exp;
    io_sphere_center_delay_13_z_mant <= io_sphere_center_delay_12_z_mant;
    io_sphere_center_delay_14_x_sign <= io_sphere_center_delay_13_x_sign;
    io_sphere_center_delay_14_x_exp <= io_sphere_center_delay_13_x_exp;
    io_sphere_center_delay_14_x_mant <= io_sphere_center_delay_13_x_mant;
    io_sphere_center_delay_14_y_sign <= io_sphere_center_delay_13_y_sign;
    io_sphere_center_delay_14_y_exp <= io_sphere_center_delay_13_y_exp;
    io_sphere_center_delay_14_y_mant <= io_sphere_center_delay_13_y_mant;
    io_sphere_center_delay_14_z_sign <= io_sphere_center_delay_13_z_sign;
    io_sphere_center_delay_14_z_exp <= io_sphere_center_delay_13_z_exp;
    io_sphere_center_delay_14_z_mant <= io_sphere_center_delay_13_z_mant;
    io_sphere_center_delay_15_x_sign <= io_sphere_center_delay_14_x_sign;
    io_sphere_center_delay_15_x_exp <= io_sphere_center_delay_14_x_exp;
    io_sphere_center_delay_15_x_mant <= io_sphere_center_delay_14_x_mant;
    io_sphere_center_delay_15_y_sign <= io_sphere_center_delay_14_y_sign;
    io_sphere_center_delay_15_y_exp <= io_sphere_center_delay_14_y_exp;
    io_sphere_center_delay_15_y_mant <= io_sphere_center_delay_14_y_mant;
    io_sphere_center_delay_15_z_sign <= io_sphere_center_delay_14_z_sign;
    io_sphere_center_delay_15_z_exp <= io_sphere_center_delay_14_z_exp;
    io_sphere_center_delay_15_z_mant <= io_sphere_center_delay_14_z_mant;
    io_sphere_center_delay_16_x_sign <= io_sphere_center_delay_15_x_sign;
    io_sphere_center_delay_16_x_exp <= io_sphere_center_delay_15_x_exp;
    io_sphere_center_delay_16_x_mant <= io_sphere_center_delay_15_x_mant;
    io_sphere_center_delay_16_y_sign <= io_sphere_center_delay_15_y_sign;
    io_sphere_center_delay_16_y_exp <= io_sphere_center_delay_15_y_exp;
    io_sphere_center_delay_16_y_mant <= io_sphere_center_delay_15_y_mant;
    io_sphere_center_delay_16_z_sign <= io_sphere_center_delay_15_z_sign;
    io_sphere_center_delay_16_z_exp <= io_sphere_center_delay_15_z_exp;
    io_sphere_center_delay_16_z_mant <= io_sphere_center_delay_15_z_mant;
    io_sphere_center_delay_17_x_sign <= io_sphere_center_delay_16_x_sign;
    io_sphere_center_delay_17_x_exp <= io_sphere_center_delay_16_x_exp;
    io_sphere_center_delay_17_x_mant <= io_sphere_center_delay_16_x_mant;
    io_sphere_center_delay_17_y_sign <= io_sphere_center_delay_16_y_sign;
    io_sphere_center_delay_17_y_exp <= io_sphere_center_delay_16_y_exp;
    io_sphere_center_delay_17_y_mant <= io_sphere_center_delay_16_y_mant;
    io_sphere_center_delay_17_z_sign <= io_sphere_center_delay_16_z_sign;
    io_sphere_center_delay_17_z_exp <= io_sphere_center_delay_16_z_exp;
    io_sphere_center_delay_17_z_mant <= io_sphere_center_delay_16_z_mant;
    io_sphere_center_delay_18_x_sign <= io_sphere_center_delay_17_x_sign;
    io_sphere_center_delay_18_x_exp <= io_sphere_center_delay_17_x_exp;
    io_sphere_center_delay_18_x_mant <= io_sphere_center_delay_17_x_mant;
    io_sphere_center_delay_18_y_sign <= io_sphere_center_delay_17_y_sign;
    io_sphere_center_delay_18_y_exp <= io_sphere_center_delay_17_y_exp;
    io_sphere_center_delay_18_y_mant <= io_sphere_center_delay_17_y_mant;
    io_sphere_center_delay_18_z_sign <= io_sphere_center_delay_17_z_sign;
    io_sphere_center_delay_18_z_exp <= io_sphere_center_delay_17_z_exp;
    io_sphere_center_delay_18_z_mant <= io_sphere_center_delay_17_z_mant;
    io_sphere_center_delay_19_x_sign <= io_sphere_center_delay_18_x_sign;
    io_sphere_center_delay_19_x_exp <= io_sphere_center_delay_18_x_exp;
    io_sphere_center_delay_19_x_mant <= io_sphere_center_delay_18_x_mant;
    io_sphere_center_delay_19_y_sign <= io_sphere_center_delay_18_y_sign;
    io_sphere_center_delay_19_y_exp <= io_sphere_center_delay_18_y_exp;
    io_sphere_center_delay_19_y_mant <= io_sphere_center_delay_18_y_mant;
    io_sphere_center_delay_19_z_sign <= io_sphere_center_delay_18_z_sign;
    io_sphere_center_delay_19_z_exp <= io_sphere_center_delay_18_z_exp;
    io_sphere_center_delay_19_z_mant <= io_sphere_center_delay_18_z_mant;
    io_sphere_center_delay_20_x_sign <= io_sphere_center_delay_19_x_sign;
    io_sphere_center_delay_20_x_exp <= io_sphere_center_delay_19_x_exp;
    io_sphere_center_delay_20_x_mant <= io_sphere_center_delay_19_x_mant;
    io_sphere_center_delay_20_y_sign <= io_sphere_center_delay_19_y_sign;
    io_sphere_center_delay_20_y_exp <= io_sphere_center_delay_19_y_exp;
    io_sphere_center_delay_20_y_mant <= io_sphere_center_delay_19_y_mant;
    io_sphere_center_delay_20_z_sign <= io_sphere_center_delay_19_z_sign;
    io_sphere_center_delay_20_z_exp <= io_sphere_center_delay_19_z_exp;
    io_sphere_center_delay_20_z_mant <= io_sphere_center_delay_19_z_mant;
    io_sphere_center_delay_21_x_sign <= io_sphere_center_delay_20_x_sign;
    io_sphere_center_delay_21_x_exp <= io_sphere_center_delay_20_x_exp;
    io_sphere_center_delay_21_x_mant <= io_sphere_center_delay_20_x_mant;
    io_sphere_center_delay_21_y_sign <= io_sphere_center_delay_20_y_sign;
    io_sphere_center_delay_21_y_exp <= io_sphere_center_delay_20_y_exp;
    io_sphere_center_delay_21_y_mant <= io_sphere_center_delay_20_y_mant;
    io_sphere_center_delay_21_z_sign <= io_sphere_center_delay_20_z_sign;
    io_sphere_center_delay_21_z_exp <= io_sphere_center_delay_20_z_exp;
    io_sphere_center_delay_21_z_mant <= io_sphere_center_delay_20_z_mant;
    center_delayed_x_sign <= io_sphere_center_delay_21_x_sign;
    center_delayed_x_exp <= io_sphere_center_delay_21_x_exp;
    center_delayed_x_mant <= io_sphere_center_delay_21_x_mant;
    center_delayed_y_sign <= io_sphere_center_delay_21_y_sign;
    center_delayed_y_exp <= io_sphere_center_delay_21_y_exp;
    center_delayed_y_mant <= io_sphere_center_delay_21_y_mant;
    center_delayed_z_sign <= io_sphere_center_delay_21_z_sign;
    center_delayed_z_exp <= io_sphere_center_delay_21_z_exp;
    center_delayed_z_mant <= io_sphere_center_delay_21_z_mant;
    dir_delayed_intersect_delay_1_x_sign <= dir_delayed_intersect_x_sign;
    dir_delayed_intersect_delay_1_x_exp <= dir_delayed_intersect_x_exp;
    dir_delayed_intersect_delay_1_x_mant <= dir_delayed_intersect_x_mant;
    dir_delayed_intersect_delay_1_y_sign <= dir_delayed_intersect_y_sign;
    dir_delayed_intersect_delay_1_y_exp <= dir_delayed_intersect_y_exp;
    dir_delayed_intersect_delay_1_y_mant <= dir_delayed_intersect_y_mant;
    dir_delayed_intersect_delay_1_z_sign <= dir_delayed_intersect_z_sign;
    dir_delayed_intersect_delay_1_z_exp <= dir_delayed_intersect_z_exp;
    dir_delayed_intersect_delay_1_z_mant <= dir_delayed_intersect_z_mant;
    dir_delayed_intersect_delay_2_x_sign <= dir_delayed_intersect_delay_1_x_sign;
    dir_delayed_intersect_delay_2_x_exp <= dir_delayed_intersect_delay_1_x_exp;
    dir_delayed_intersect_delay_2_x_mant <= dir_delayed_intersect_delay_1_x_mant;
    dir_delayed_intersect_delay_2_y_sign <= dir_delayed_intersect_delay_1_y_sign;
    dir_delayed_intersect_delay_2_y_exp <= dir_delayed_intersect_delay_1_y_exp;
    dir_delayed_intersect_delay_2_y_mant <= dir_delayed_intersect_delay_1_y_mant;
    dir_delayed_intersect_delay_2_z_sign <= dir_delayed_intersect_delay_1_z_sign;
    dir_delayed_intersect_delay_2_z_exp <= dir_delayed_intersect_delay_1_z_exp;
    dir_delayed_intersect_delay_2_z_mant <= dir_delayed_intersect_delay_1_z_mant;
    dir_delayed_intersect_delay_3_x_sign <= dir_delayed_intersect_delay_2_x_sign;
    dir_delayed_intersect_delay_3_x_exp <= dir_delayed_intersect_delay_2_x_exp;
    dir_delayed_intersect_delay_3_x_mant <= dir_delayed_intersect_delay_2_x_mant;
    dir_delayed_intersect_delay_3_y_sign <= dir_delayed_intersect_delay_2_y_sign;
    dir_delayed_intersect_delay_3_y_exp <= dir_delayed_intersect_delay_2_y_exp;
    dir_delayed_intersect_delay_3_y_mant <= dir_delayed_intersect_delay_2_y_mant;
    dir_delayed_intersect_delay_3_z_sign <= dir_delayed_intersect_delay_2_z_sign;
    dir_delayed_intersect_delay_3_z_exp <= dir_delayed_intersect_delay_2_z_exp;
    dir_delayed_intersect_delay_3_z_mant <= dir_delayed_intersect_delay_2_z_mant;
    dir_delayed_intersect_delay_4_x_sign <= dir_delayed_intersect_delay_3_x_sign;
    dir_delayed_intersect_delay_4_x_exp <= dir_delayed_intersect_delay_3_x_exp;
    dir_delayed_intersect_delay_4_x_mant <= dir_delayed_intersect_delay_3_x_mant;
    dir_delayed_intersect_delay_4_y_sign <= dir_delayed_intersect_delay_3_y_sign;
    dir_delayed_intersect_delay_4_y_exp <= dir_delayed_intersect_delay_3_y_exp;
    dir_delayed_intersect_delay_4_y_mant <= dir_delayed_intersect_delay_3_y_mant;
    dir_delayed_intersect_delay_4_z_sign <= dir_delayed_intersect_delay_3_z_sign;
    dir_delayed_intersect_delay_4_z_exp <= dir_delayed_intersect_delay_3_z_exp;
    dir_delayed_intersect_delay_4_z_mant <= dir_delayed_intersect_delay_3_z_mant;
    dir_delayed_intersect_delay_5_x_sign <= dir_delayed_intersect_delay_4_x_sign;
    dir_delayed_intersect_delay_5_x_exp <= dir_delayed_intersect_delay_4_x_exp;
    dir_delayed_intersect_delay_5_x_mant <= dir_delayed_intersect_delay_4_x_mant;
    dir_delayed_intersect_delay_5_y_sign <= dir_delayed_intersect_delay_4_y_sign;
    dir_delayed_intersect_delay_5_y_exp <= dir_delayed_intersect_delay_4_y_exp;
    dir_delayed_intersect_delay_5_y_mant <= dir_delayed_intersect_delay_4_y_mant;
    dir_delayed_intersect_delay_5_z_sign <= dir_delayed_intersect_delay_4_z_sign;
    dir_delayed_intersect_delay_5_z_exp <= dir_delayed_intersect_delay_4_z_exp;
    dir_delayed_intersect_delay_5_z_mant <= dir_delayed_intersect_delay_4_z_mant;
    dir_delayed_intersect_delay_6_x_sign <= dir_delayed_intersect_delay_5_x_sign;
    dir_delayed_intersect_delay_6_x_exp <= dir_delayed_intersect_delay_5_x_exp;
    dir_delayed_intersect_delay_6_x_mant <= dir_delayed_intersect_delay_5_x_mant;
    dir_delayed_intersect_delay_6_y_sign <= dir_delayed_intersect_delay_5_y_sign;
    dir_delayed_intersect_delay_6_y_exp <= dir_delayed_intersect_delay_5_y_exp;
    dir_delayed_intersect_delay_6_y_mant <= dir_delayed_intersect_delay_5_y_mant;
    dir_delayed_intersect_delay_6_z_sign <= dir_delayed_intersect_delay_5_z_sign;
    dir_delayed_intersect_delay_6_z_exp <= dir_delayed_intersect_delay_5_z_exp;
    dir_delayed_intersect_delay_6_z_mant <= dir_delayed_intersect_delay_5_z_mant;
    dir_delayed_intersect_delay_7_x_sign <= dir_delayed_intersect_delay_6_x_sign;
    dir_delayed_intersect_delay_7_x_exp <= dir_delayed_intersect_delay_6_x_exp;
    dir_delayed_intersect_delay_7_x_mant <= dir_delayed_intersect_delay_6_x_mant;
    dir_delayed_intersect_delay_7_y_sign <= dir_delayed_intersect_delay_6_y_sign;
    dir_delayed_intersect_delay_7_y_exp <= dir_delayed_intersect_delay_6_y_exp;
    dir_delayed_intersect_delay_7_y_mant <= dir_delayed_intersect_delay_6_y_mant;
    dir_delayed_intersect_delay_7_z_sign <= dir_delayed_intersect_delay_6_z_sign;
    dir_delayed_intersect_delay_7_z_exp <= dir_delayed_intersect_delay_6_z_exp;
    dir_delayed_intersect_delay_7_z_mant <= dir_delayed_intersect_delay_6_z_mant;
    dir_delayed_intersect_delay_8_x_sign <= dir_delayed_intersect_delay_7_x_sign;
    dir_delayed_intersect_delay_8_x_exp <= dir_delayed_intersect_delay_7_x_exp;
    dir_delayed_intersect_delay_8_x_mant <= dir_delayed_intersect_delay_7_x_mant;
    dir_delayed_intersect_delay_8_y_sign <= dir_delayed_intersect_delay_7_y_sign;
    dir_delayed_intersect_delay_8_y_exp <= dir_delayed_intersect_delay_7_y_exp;
    dir_delayed_intersect_delay_8_y_mant <= dir_delayed_intersect_delay_7_y_mant;
    dir_delayed_intersect_delay_8_z_sign <= dir_delayed_intersect_delay_7_z_sign;
    dir_delayed_intersect_delay_8_z_exp <= dir_delayed_intersect_delay_7_z_exp;
    dir_delayed_intersect_delay_8_z_mant <= dir_delayed_intersect_delay_7_z_mant;
    dir_delayed_intersect_delay_9_x_sign <= dir_delayed_intersect_delay_8_x_sign;
    dir_delayed_intersect_delay_9_x_exp <= dir_delayed_intersect_delay_8_x_exp;
    dir_delayed_intersect_delay_9_x_mant <= dir_delayed_intersect_delay_8_x_mant;
    dir_delayed_intersect_delay_9_y_sign <= dir_delayed_intersect_delay_8_y_sign;
    dir_delayed_intersect_delay_9_y_exp <= dir_delayed_intersect_delay_8_y_exp;
    dir_delayed_intersect_delay_9_y_mant <= dir_delayed_intersect_delay_8_y_mant;
    dir_delayed_intersect_delay_9_z_sign <= dir_delayed_intersect_delay_8_z_sign;
    dir_delayed_intersect_delay_9_z_exp <= dir_delayed_intersect_delay_8_z_exp;
    dir_delayed_intersect_delay_9_z_mant <= dir_delayed_intersect_delay_8_z_mant;
    dir_delayed_intersect_delay_10_x_sign <= dir_delayed_intersect_delay_9_x_sign;
    dir_delayed_intersect_delay_10_x_exp <= dir_delayed_intersect_delay_9_x_exp;
    dir_delayed_intersect_delay_10_x_mant <= dir_delayed_intersect_delay_9_x_mant;
    dir_delayed_intersect_delay_10_y_sign <= dir_delayed_intersect_delay_9_y_sign;
    dir_delayed_intersect_delay_10_y_exp <= dir_delayed_intersect_delay_9_y_exp;
    dir_delayed_intersect_delay_10_y_mant <= dir_delayed_intersect_delay_9_y_mant;
    dir_delayed_intersect_delay_10_z_sign <= dir_delayed_intersect_delay_9_z_sign;
    dir_delayed_intersect_delay_10_z_exp <= dir_delayed_intersect_delay_9_z_exp;
    dir_delayed_intersect_delay_10_z_mant <= dir_delayed_intersect_delay_9_z_mant;
    dir_delayed_intersect_delay_11_x_sign <= dir_delayed_intersect_delay_10_x_sign;
    dir_delayed_intersect_delay_11_x_exp <= dir_delayed_intersect_delay_10_x_exp;
    dir_delayed_intersect_delay_11_x_mant <= dir_delayed_intersect_delay_10_x_mant;
    dir_delayed_intersect_delay_11_y_sign <= dir_delayed_intersect_delay_10_y_sign;
    dir_delayed_intersect_delay_11_y_exp <= dir_delayed_intersect_delay_10_y_exp;
    dir_delayed_intersect_delay_11_y_mant <= dir_delayed_intersect_delay_10_y_mant;
    dir_delayed_intersect_delay_11_z_sign <= dir_delayed_intersect_delay_10_z_sign;
    dir_delayed_intersect_delay_11_z_exp <= dir_delayed_intersect_delay_10_z_exp;
    dir_delayed_intersect_delay_11_z_mant <= dir_delayed_intersect_delay_10_z_mant;
    dir_delayed_intersect_delay_12_x_sign <= dir_delayed_intersect_delay_11_x_sign;
    dir_delayed_intersect_delay_12_x_exp <= dir_delayed_intersect_delay_11_x_exp;
    dir_delayed_intersect_delay_12_x_mant <= dir_delayed_intersect_delay_11_x_mant;
    dir_delayed_intersect_delay_12_y_sign <= dir_delayed_intersect_delay_11_y_sign;
    dir_delayed_intersect_delay_12_y_exp <= dir_delayed_intersect_delay_11_y_exp;
    dir_delayed_intersect_delay_12_y_mant <= dir_delayed_intersect_delay_11_y_mant;
    dir_delayed_intersect_delay_12_z_sign <= dir_delayed_intersect_delay_11_z_sign;
    dir_delayed_intersect_delay_12_z_exp <= dir_delayed_intersect_delay_11_z_exp;
    dir_delayed_intersect_delay_12_z_mant <= dir_delayed_intersect_delay_11_z_mant;
    dir_delayed_intersect_delay_13_x_sign <= dir_delayed_intersect_delay_12_x_sign;
    dir_delayed_intersect_delay_13_x_exp <= dir_delayed_intersect_delay_12_x_exp;
    dir_delayed_intersect_delay_13_x_mant <= dir_delayed_intersect_delay_12_x_mant;
    dir_delayed_intersect_delay_13_y_sign <= dir_delayed_intersect_delay_12_y_sign;
    dir_delayed_intersect_delay_13_y_exp <= dir_delayed_intersect_delay_12_y_exp;
    dir_delayed_intersect_delay_13_y_mant <= dir_delayed_intersect_delay_12_y_mant;
    dir_delayed_intersect_delay_13_z_sign <= dir_delayed_intersect_delay_12_z_sign;
    dir_delayed_intersect_delay_13_z_exp <= dir_delayed_intersect_delay_12_z_exp;
    dir_delayed_intersect_delay_13_z_mant <= dir_delayed_intersect_delay_12_z_mant;
    dir_delayed_intersect_delay_14_x_sign <= dir_delayed_intersect_delay_13_x_sign;
    dir_delayed_intersect_delay_14_x_exp <= dir_delayed_intersect_delay_13_x_exp;
    dir_delayed_intersect_delay_14_x_mant <= dir_delayed_intersect_delay_13_x_mant;
    dir_delayed_intersect_delay_14_y_sign <= dir_delayed_intersect_delay_13_y_sign;
    dir_delayed_intersect_delay_14_y_exp <= dir_delayed_intersect_delay_13_y_exp;
    dir_delayed_intersect_delay_14_y_mant <= dir_delayed_intersect_delay_13_y_mant;
    dir_delayed_intersect_delay_14_z_sign <= dir_delayed_intersect_delay_13_z_sign;
    dir_delayed_intersect_delay_14_z_exp <= dir_delayed_intersect_delay_13_z_exp;
    dir_delayed_intersect_delay_14_z_mant <= dir_delayed_intersect_delay_13_z_mant;
    dir_delayed_dot_normal_x_sign <= dir_delayed_intersect_delay_14_x_sign;
    dir_delayed_dot_normal_x_exp <= dir_delayed_intersect_delay_14_x_exp;
    dir_delayed_dot_normal_x_mant <= dir_delayed_intersect_delay_14_x_mant;
    dir_delayed_dot_normal_y_sign <= dir_delayed_intersect_delay_14_y_sign;
    dir_delayed_dot_normal_y_exp <= dir_delayed_intersect_delay_14_y_exp;
    dir_delayed_dot_normal_y_mant <= dir_delayed_intersect_delay_14_y_mant;
    dir_delayed_dot_normal_z_sign <= dir_delayed_intersect_delay_14_z_sign;
    dir_delayed_dot_normal_z_exp <= dir_delayed_intersect_delay_14_z_exp;
    dir_delayed_dot_normal_z_mant <= dir_delayed_intersect_delay_14_z_mant;
    dir_dot_normal_vld_regNext <= dir_dot_normal_vld;
    dir_dot_normal_sign_regNext <= dir_dot_normal_sign;
    dir_dot_normal_exp_regNext <= dir_dot_normal_exp;
    dir_dot_normal_mant_regNext <= dir_dot_normal_mant;
    normal_delay_1_x_sign <= normal_x_sign;
    normal_delay_1_x_exp <= normal_x_exp;
    normal_delay_1_x_mant <= normal_x_mant;
    normal_delay_1_y_sign <= normal_y_sign;
    normal_delay_1_y_exp <= normal_y_exp;
    normal_delay_1_y_mant <= normal_y_mant;
    normal_delay_1_z_sign <= normal_z_sign;
    normal_delay_1_z_exp <= normal_z_exp;
    normal_delay_1_z_mant <= normal_z_mant;
    normal_delay_2_x_sign <= normal_delay_1_x_sign;
    normal_delay_2_x_exp <= normal_delay_1_x_exp;
    normal_delay_2_x_mant <= normal_delay_1_x_mant;
    normal_delay_2_y_sign <= normal_delay_1_y_sign;
    normal_delay_2_y_exp <= normal_delay_1_y_exp;
    normal_delay_2_y_mant <= normal_delay_1_y_mant;
    normal_delay_2_z_sign <= normal_delay_1_z_sign;
    normal_delay_2_z_exp <= normal_delay_1_z_exp;
    normal_delay_2_z_mant <= normal_delay_1_z_mant;
    normal_delay_3_x_sign <= normal_delay_2_x_sign;
    normal_delay_3_x_exp <= normal_delay_2_x_exp;
    normal_delay_3_x_mant <= normal_delay_2_x_mant;
    normal_delay_3_y_sign <= normal_delay_2_y_sign;
    normal_delay_3_y_exp <= normal_delay_2_y_exp;
    normal_delay_3_y_mant <= normal_delay_2_y_mant;
    normal_delay_3_z_sign <= normal_delay_2_z_sign;
    normal_delay_3_z_exp <= normal_delay_2_z_exp;
    normal_delay_3_z_mant <= normal_delay_2_z_mant;
    normal_delay_4_x_sign <= normal_delay_3_x_sign;
    normal_delay_4_x_exp <= normal_delay_3_x_exp;
    normal_delay_4_x_mant <= normal_delay_3_x_mant;
    normal_delay_4_y_sign <= normal_delay_3_y_sign;
    normal_delay_4_y_exp <= normal_delay_3_y_exp;
    normal_delay_4_y_mant <= normal_delay_3_y_mant;
    normal_delay_4_z_sign <= normal_delay_3_z_sign;
    normal_delay_4_z_exp <= normal_delay_3_z_exp;
    normal_delay_4_z_mant <= normal_delay_3_z_mant;
    normal_delay_5_x_sign <= normal_delay_4_x_sign;
    normal_delay_5_x_exp <= normal_delay_4_x_exp;
    normal_delay_5_x_mant <= normal_delay_4_x_mant;
    normal_delay_5_y_sign <= normal_delay_4_y_sign;
    normal_delay_5_y_exp <= normal_delay_4_y_exp;
    normal_delay_5_y_mant <= normal_delay_4_y_mant;
    normal_delay_5_z_sign <= normal_delay_4_z_sign;
    normal_delay_5_z_exp <= normal_delay_4_z_exp;
    normal_delay_5_z_mant <= normal_delay_4_z_mant;
    normal_delay_6_x_sign <= normal_delay_5_x_sign;
    normal_delay_6_x_exp <= normal_delay_5_x_exp;
    normal_delay_6_x_mant <= normal_delay_5_x_mant;
    normal_delay_6_y_sign <= normal_delay_5_y_sign;
    normal_delay_6_y_exp <= normal_delay_5_y_exp;
    normal_delay_6_y_mant <= normal_delay_5_y_mant;
    normal_delay_6_z_sign <= normal_delay_5_z_sign;
    normal_delay_6_z_exp <= normal_delay_5_z_exp;
    normal_delay_6_z_mant <= normal_delay_5_z_mant;
    normal_delayed_dir_mirror_x_sign <= normal_delay_6_x_sign;
    normal_delayed_dir_mirror_x_exp <= normal_delay_6_x_exp;
    normal_delayed_dir_mirror_x_mant <= normal_delay_6_x_mant;
    normal_delayed_dir_mirror_y_sign <= normal_delay_6_y_sign;
    normal_delayed_dir_mirror_y_exp <= normal_delay_6_y_exp;
    normal_delayed_dir_mirror_y_mant <= normal_delay_6_y_mant;
    normal_delayed_dir_mirror_z_sign <= normal_delay_6_z_sign;
    normal_delayed_dir_mirror_z_exp <= normal_delay_6_z_exp;
    normal_delayed_dir_mirror_z_mant <= normal_delay_6_z_mant;
    dir_delayed_dot_normal_delay_1_x_sign <= dir_delayed_dot_normal_x_sign;
    dir_delayed_dot_normal_delay_1_x_exp <= dir_delayed_dot_normal_x_exp;
    dir_delayed_dot_normal_delay_1_x_mant <= dir_delayed_dot_normal_x_mant;
    dir_delayed_dot_normal_delay_1_y_sign <= dir_delayed_dot_normal_y_sign;
    dir_delayed_dot_normal_delay_1_y_exp <= dir_delayed_dot_normal_y_exp;
    dir_delayed_dot_normal_delay_1_y_mant <= dir_delayed_dot_normal_y_mant;
    dir_delayed_dot_normal_delay_1_z_sign <= dir_delayed_dot_normal_z_sign;
    dir_delayed_dot_normal_delay_1_z_exp <= dir_delayed_dot_normal_z_exp;
    dir_delayed_dot_normal_delay_1_z_mant <= dir_delayed_dot_normal_z_mant;
    dir_delayed_dot_normal_delay_2_x_sign <= dir_delayed_dot_normal_delay_1_x_sign;
    dir_delayed_dot_normal_delay_2_x_exp <= dir_delayed_dot_normal_delay_1_x_exp;
    dir_delayed_dot_normal_delay_2_x_mant <= dir_delayed_dot_normal_delay_1_x_mant;
    dir_delayed_dot_normal_delay_2_y_sign <= dir_delayed_dot_normal_delay_1_y_sign;
    dir_delayed_dot_normal_delay_2_y_exp <= dir_delayed_dot_normal_delay_1_y_exp;
    dir_delayed_dot_normal_delay_2_y_mant <= dir_delayed_dot_normal_delay_1_y_mant;
    dir_delayed_dot_normal_delay_2_z_sign <= dir_delayed_dot_normal_delay_1_z_sign;
    dir_delayed_dot_normal_delay_2_z_exp <= dir_delayed_dot_normal_delay_1_z_exp;
    dir_delayed_dot_normal_delay_2_z_mant <= dir_delayed_dot_normal_delay_1_z_mant;
    dir_delayed_dot_normal_delay_3_x_sign <= dir_delayed_dot_normal_delay_2_x_sign;
    dir_delayed_dot_normal_delay_3_x_exp <= dir_delayed_dot_normal_delay_2_x_exp;
    dir_delayed_dot_normal_delay_3_x_mant <= dir_delayed_dot_normal_delay_2_x_mant;
    dir_delayed_dot_normal_delay_3_y_sign <= dir_delayed_dot_normal_delay_2_y_sign;
    dir_delayed_dot_normal_delay_3_y_exp <= dir_delayed_dot_normal_delay_2_y_exp;
    dir_delayed_dot_normal_delay_3_y_mant <= dir_delayed_dot_normal_delay_2_y_mant;
    dir_delayed_dot_normal_delay_3_z_sign <= dir_delayed_dot_normal_delay_2_z_sign;
    dir_delayed_dot_normal_delay_3_z_exp <= dir_delayed_dot_normal_delay_2_z_exp;
    dir_delayed_dot_normal_delay_3_z_mant <= dir_delayed_dot_normal_delay_2_z_mant;
    dir_delayed_dot_normal_delay_4_x_sign <= dir_delayed_dot_normal_delay_3_x_sign;
    dir_delayed_dot_normal_delay_4_x_exp <= dir_delayed_dot_normal_delay_3_x_exp;
    dir_delayed_dot_normal_delay_4_x_mant <= dir_delayed_dot_normal_delay_3_x_mant;
    dir_delayed_dot_normal_delay_4_y_sign <= dir_delayed_dot_normal_delay_3_y_sign;
    dir_delayed_dot_normal_delay_4_y_exp <= dir_delayed_dot_normal_delay_3_y_exp;
    dir_delayed_dot_normal_delay_4_y_mant <= dir_delayed_dot_normal_delay_3_y_mant;
    dir_delayed_dot_normal_delay_4_z_sign <= dir_delayed_dot_normal_delay_3_z_sign;
    dir_delayed_dot_normal_delay_4_z_exp <= dir_delayed_dot_normal_delay_3_z_exp;
    dir_delayed_dot_normal_delay_4_z_mant <= dir_delayed_dot_normal_delay_3_z_mant;
    dir_delayed_dot_normal_delay_5_x_sign <= dir_delayed_dot_normal_delay_4_x_sign;
    dir_delayed_dot_normal_delay_5_x_exp <= dir_delayed_dot_normal_delay_4_x_exp;
    dir_delayed_dot_normal_delay_5_x_mant <= dir_delayed_dot_normal_delay_4_x_mant;
    dir_delayed_dot_normal_delay_5_y_sign <= dir_delayed_dot_normal_delay_4_y_sign;
    dir_delayed_dot_normal_delay_5_y_exp <= dir_delayed_dot_normal_delay_4_y_exp;
    dir_delayed_dot_normal_delay_5_y_mant <= dir_delayed_dot_normal_delay_4_y_mant;
    dir_delayed_dot_normal_delay_5_z_sign <= dir_delayed_dot_normal_delay_4_z_sign;
    dir_delayed_dot_normal_delay_5_z_exp <= dir_delayed_dot_normal_delay_4_z_exp;
    dir_delayed_dot_normal_delay_5_z_mant <= dir_delayed_dot_normal_delay_4_z_mant;
    dir_delayed_dot_normal_delay_6_x_sign <= dir_delayed_dot_normal_delay_5_x_sign;
    dir_delayed_dot_normal_delay_6_x_exp <= dir_delayed_dot_normal_delay_5_x_exp;
    dir_delayed_dot_normal_delay_6_x_mant <= dir_delayed_dot_normal_delay_5_x_mant;
    dir_delayed_dot_normal_delay_6_y_sign <= dir_delayed_dot_normal_delay_5_y_sign;
    dir_delayed_dot_normal_delay_6_y_exp <= dir_delayed_dot_normal_delay_5_y_exp;
    dir_delayed_dot_normal_delay_6_y_mant <= dir_delayed_dot_normal_delay_5_y_mant;
    dir_delayed_dot_normal_delay_6_z_sign <= dir_delayed_dot_normal_delay_5_z_sign;
    dir_delayed_dot_normal_delay_6_z_exp <= dir_delayed_dot_normal_delay_5_z_exp;
    dir_delayed_dot_normal_delay_6_z_mant <= dir_delayed_dot_normal_delay_5_z_mant;
    dir_delayed_dot_normal_delay_7_x_sign <= dir_delayed_dot_normal_delay_6_x_sign;
    dir_delayed_dot_normal_delay_7_x_exp <= dir_delayed_dot_normal_delay_6_x_exp;
    dir_delayed_dot_normal_delay_7_x_mant <= dir_delayed_dot_normal_delay_6_x_mant;
    dir_delayed_dot_normal_delay_7_y_sign <= dir_delayed_dot_normal_delay_6_y_sign;
    dir_delayed_dot_normal_delay_7_y_exp <= dir_delayed_dot_normal_delay_6_y_exp;
    dir_delayed_dot_normal_delay_7_y_mant <= dir_delayed_dot_normal_delay_6_y_mant;
    dir_delayed_dot_normal_delay_7_z_sign <= dir_delayed_dot_normal_delay_6_z_sign;
    dir_delayed_dot_normal_delay_7_z_exp <= dir_delayed_dot_normal_delay_6_z_exp;
    dir_delayed_dot_normal_delay_7_z_mant <= dir_delayed_dot_normal_delay_6_z_mant;
    dir_delayed_dot_normal_delay_8_x_sign <= dir_delayed_dot_normal_delay_7_x_sign;
    dir_delayed_dot_normal_delay_8_x_exp <= dir_delayed_dot_normal_delay_7_x_exp;
    dir_delayed_dot_normal_delay_8_x_mant <= dir_delayed_dot_normal_delay_7_x_mant;
    dir_delayed_dot_normal_delay_8_y_sign <= dir_delayed_dot_normal_delay_7_y_sign;
    dir_delayed_dot_normal_delay_8_y_exp <= dir_delayed_dot_normal_delay_7_y_exp;
    dir_delayed_dot_normal_delay_8_y_mant <= dir_delayed_dot_normal_delay_7_y_mant;
    dir_delayed_dot_normal_delay_8_z_sign <= dir_delayed_dot_normal_delay_7_z_sign;
    dir_delayed_dot_normal_delay_8_z_exp <= dir_delayed_dot_normal_delay_7_z_exp;
    dir_delayed_dot_normal_delay_8_z_mant <= dir_delayed_dot_normal_delay_7_z_mant;
    dir_delayed_reflect_dir_x_sign <= dir_delayed_dot_normal_delay_8_x_sign;
    dir_delayed_reflect_dir_x_exp <= dir_delayed_dot_normal_delay_8_x_exp;
    dir_delayed_reflect_dir_x_mant <= dir_delayed_dot_normal_delay_8_x_mant;
    dir_delayed_reflect_dir_y_sign <= dir_delayed_dot_normal_delay_8_y_sign;
    dir_delayed_reflect_dir_y_exp <= dir_delayed_dot_normal_delay_8_y_exp;
    dir_delayed_reflect_dir_y_mant <= dir_delayed_dot_normal_delay_8_y_mant;
    dir_delayed_reflect_dir_z_sign <= dir_delayed_dot_normal_delay_8_z_sign;
    dir_delayed_reflect_dir_z_exp <= dir_delayed_dot_normal_delay_8_z_exp;
    dir_delayed_reflect_dir_z_mant <= dir_delayed_dot_normal_delay_8_z_mant;
    intersects_tca_delay_1_1_ <= intersects_tca;
    intersects_tca_delay_2_1_ <= intersects_tca_delay_1_1_;
    intersects_tca_delay_3_1_ <= intersects_tca_delay_2_1_;
    intersects_tca_delay_4 <= intersects_tca_delay_3_1_;
    intersects_tca_delay_5 <= intersects_tca_delay_4;
    intersects_tca_delay_6 <= intersects_tca_delay_5;
    intersects_tca_delay_7 <= intersects_tca_delay_6;
    intersects_tca_delay_8 <= intersects_tca_delay_7;
    intersects_tca_delay_9 <= intersects_tca_delay_8;
    intersects_tca_delay_10 <= intersects_tca_delay_9;
    intersects_tca_delay_11 <= intersects_tca_delay_10;
    intersects_tca_delay_12 <= intersects_tca_delay_11;
    intersects_tca_delay_13 <= intersects_tca_delay_12;
    intersects_tca_delay_14 <= intersects_tca_delay_13;
    intersects_tca_delay_15 <= intersects_tca_delay_14;
    intersects_tca_delay_16 <= intersects_tca_delay_15;
    intersects_tca_delay_17 <= intersects_tca_delay_16;
    intersects_tca_delay_18 <= intersects_tca_delay_17;
    intersects_tca_delay_19 <= intersects_tca_delay_18;
    intersects_tca_delay_20 <= intersects_tca_delay_19;
    intersects_tca_delay_21 <= intersects_tca_delay_20;
    intersects_tca_delay_22 <= intersects_tca_delay_21;
    intersects_tca_delay_23 <= intersects_tca_delay_22;
    intersects_tca_delay_24 <= intersects_tca_delay_23;
    intersects_tca_delay_25 <= intersects_tca_delay_24;
    intersects_tca_delay_26 <= intersects_tca_delay_25;
    intersects_tca_delay_27 <= intersects_tca_delay_26;
    intersects_tca_delay_28 <= intersects_tca_delay_27;
    intersects_tca_delay_29 <= intersects_tca_delay_28;
    intersects_tca_delay_30 <= intersects_tca_delay_29;
    intersects_tca_delay_31 <= intersects_tca_delay_30;
    intersects_tca_delay_32 <= intersects_tca_delay_31;
    intersects_tca_delay_33 <= intersects_tca_delay_32;
    intersects_tca_delay_34 <= intersects_tca_delay_33;
    intersects_tca_delay_35 <= intersects_tca_delay_34;
    intersects_tca_delayed <= intersects_tca_delay_35;
    intersects_d2_delay_1 <= intersects_d2;
    intersects_d2_delay_2 <= intersects_d2_delay_1;
    intersects_d2_delay_3 <= intersects_d2_delay_2;
    intersects_d2_delay_4 <= intersects_d2_delay_3;
    intersects_d2_delay_5 <= intersects_d2_delay_4;
    intersects_d2_delay_6 <= intersects_d2_delay_5;
    intersects_d2_delay_7 <= intersects_d2_delay_6;
    intersects_d2_delay_8 <= intersects_d2_delay_7;
    intersects_d2_delay_9 <= intersects_d2_delay_8;
    intersects_d2_delay_10 <= intersects_d2_delay_9;
    intersects_d2_delay_11 <= intersects_d2_delay_10;
    intersects_d2_delay_12 <= intersects_d2_delay_11;
    intersects_d2_delay_13 <= intersects_d2_delay_12;
    intersects_d2_delay_14 <= intersects_d2_delay_13;
    intersects_d2_delay_15 <= intersects_d2_delay_14;
    intersects_d2_delay_16 <= intersects_d2_delay_15;
    intersects_d2_delay_17 <= intersects_d2_delay_16;
    intersects_d2_delay_18 <= intersects_d2_delay_17;
    intersects_d2_delay_19 <= intersects_d2_delay_18;
    intersects_d2_delay_20 <= intersects_d2_delay_19;
    intersects_d2_delay_21 <= intersects_d2_delay_20;
    intersects_d2_delay_22 <= intersects_d2_delay_21;
    intersects_d2_delay_23 <= intersects_d2_delay_22;
    intersects_d2_delay_24 <= intersects_d2_delay_23;
    intersects_d2_delay_25 <= intersects_d2_delay_24;
    intersects_d2_delay_26 <= intersects_d2_delay_25;
    intersects_d2_delay_27 <= intersects_d2_delay_26;
    intersects_d2_delay_28 <= intersects_d2_delay_27;
    intersects_d2_delay_29 <= intersects_d2_delay_28;
    intersects_d2_delayed <= intersects_d2_delay_29;
    t_delay_1_sign <= t_sign;
    t_delay_1_exp <= t_exp;
    t_delay_1_mant <= t_mant;
    t_delay_2_sign <= t_delay_1_sign;
    t_delay_2_exp <= t_delay_1_exp;
    t_delay_2_mant <= t_delay_1_mant;
    t_delay_3_sign <= t_delay_2_sign;
    t_delay_3_exp <= t_delay_2_exp;
    t_delay_3_mant <= t_delay_2_mant;
    t_delay_4_sign <= t_delay_3_sign;
    t_delay_4_exp <= t_delay_3_exp;
    t_delay_4_mant <= t_delay_3_mant;
    t_delay_5_sign <= t_delay_4_sign;
    t_delay_5_exp <= t_delay_4_exp;
    t_delay_5_mant <= t_delay_4_mant;
    t_delay_6_sign <= t_delay_5_sign;
    t_delay_6_exp <= t_delay_5_exp;
    t_delay_6_mant <= t_delay_5_mant;
    t_delay_7_sign <= t_delay_6_sign;
    t_delay_7_exp <= t_delay_6_exp;
    t_delay_7_mant <= t_delay_6_mant;
    t_delay_8_sign <= t_delay_7_sign;
    t_delay_8_exp <= t_delay_7_exp;
    t_delay_8_mant <= t_delay_7_mant;
    t_delay_9_sign <= t_delay_8_sign;
    t_delay_9_exp <= t_delay_8_exp;
    t_delay_9_mant <= t_delay_8_mant;
    t_delay_10_sign <= t_delay_9_sign;
    t_delay_10_exp <= t_delay_9_exp;
    t_delay_10_mant <= t_delay_9_mant;
    t_delay_11_sign <= t_delay_10_sign;
    t_delay_11_exp <= t_delay_10_exp;
    t_delay_11_mant <= t_delay_10_mant;
    t_delay_12_sign <= t_delay_11_sign;
    t_delay_12_exp <= t_delay_11_exp;
    t_delay_12_mant <= t_delay_11_mant;
    t_delay_13_sign <= t_delay_12_sign;
    t_delay_13_exp <= t_delay_12_exp;
    t_delay_13_mant <= t_delay_12_mant;
    t_delay_14_sign <= t_delay_13_sign;
    t_delay_14_exp <= t_delay_13_exp;
    t_delay_14_mant <= t_delay_13_mant;
    t_delay_15_sign <= t_delay_14_sign;
    t_delay_15_exp <= t_delay_14_exp;
    t_delay_15_mant <= t_delay_14_mant;
    t_delay_16_sign <= t_delay_15_sign;
    t_delay_16_exp <= t_delay_15_exp;
    t_delay_16_mant <= t_delay_15_mant;
    t_delay_17_sign <= t_delay_16_sign;
    t_delay_17_exp <= t_delay_16_exp;
    t_delay_17_mant <= t_delay_16_mant;
    t_delay_18_sign <= t_delay_17_sign;
    t_delay_18_exp <= t_delay_17_exp;
    t_delay_18_mant <= t_delay_17_mant;
    t_delay_19_sign <= t_delay_18_sign;
    t_delay_19_exp <= t_delay_18_exp;
    t_delay_19_mant <= t_delay_18_mant;
    t_delay_20_sign <= t_delay_19_sign;
    t_delay_20_exp <= t_delay_19_exp;
    t_delay_20_mant <= t_delay_19_mant;
    t_delay_21_sign <= t_delay_20_sign;
    t_delay_21_exp <= t_delay_20_exp;
    t_delay_21_mant <= t_delay_20_mant;
    t_delay_22_sign <= t_delay_21_sign;
    t_delay_22_exp <= t_delay_21_exp;
    t_delay_22_mant <= t_delay_21_mant;
    t_delay_23_sign <= t_delay_22_sign;
    t_delay_23_exp <= t_delay_22_exp;
    t_delay_23_mant <= t_delay_22_mant;
    t_delay_24_sign <= t_delay_23_sign;
    t_delay_24_exp <= t_delay_23_exp;
    t_delay_24_mant <= t_delay_23_mant;
    t_delay_25_sign <= t_delay_24_sign;
    t_delay_25_exp <= t_delay_24_exp;
    t_delay_25_mant <= t_delay_24_mant;
    t_delayed_sign <= t_delay_25_sign;
    t_delayed_exp <= t_delay_25_exp;
    t_delayed_mant <= t_delay_25_mant;
    intersection_delay_1_x_sign <= intersection_x_sign;
    intersection_delay_1_x_exp <= intersection_x_exp;
    intersection_delay_1_x_mant <= intersection_x_mant;
    intersection_delay_1_y_sign <= intersection_y_sign;
    intersection_delay_1_y_exp <= intersection_y_exp;
    intersection_delay_1_y_mant <= intersection_y_mant;
    intersection_delay_1_z_sign <= intersection_z_sign;
    intersection_delay_1_z_exp <= intersection_z_exp;
    intersection_delay_1_z_mant <= intersection_z_mant;
    intersection_delay_2_x_sign <= intersection_delay_1_x_sign;
    intersection_delay_2_x_exp <= intersection_delay_1_x_exp;
    intersection_delay_2_x_mant <= intersection_delay_1_x_mant;
    intersection_delay_2_y_sign <= intersection_delay_1_y_sign;
    intersection_delay_2_y_exp <= intersection_delay_1_y_exp;
    intersection_delay_2_y_mant <= intersection_delay_1_y_mant;
    intersection_delay_2_z_sign <= intersection_delay_1_z_sign;
    intersection_delay_2_z_exp <= intersection_delay_1_z_exp;
    intersection_delay_2_z_mant <= intersection_delay_1_z_mant;
    intersection_delay_3_x_sign <= intersection_delay_2_x_sign;
    intersection_delay_3_x_exp <= intersection_delay_2_x_exp;
    intersection_delay_3_x_mant <= intersection_delay_2_x_mant;
    intersection_delay_3_y_sign <= intersection_delay_2_y_sign;
    intersection_delay_3_y_exp <= intersection_delay_2_y_exp;
    intersection_delay_3_y_mant <= intersection_delay_2_y_mant;
    intersection_delay_3_z_sign <= intersection_delay_2_z_sign;
    intersection_delay_3_z_exp <= intersection_delay_2_z_exp;
    intersection_delay_3_z_mant <= intersection_delay_2_z_mant;
    intersection_delay_4_x_sign <= intersection_delay_3_x_sign;
    intersection_delay_4_x_exp <= intersection_delay_3_x_exp;
    intersection_delay_4_x_mant <= intersection_delay_3_x_mant;
    intersection_delay_4_y_sign <= intersection_delay_3_y_sign;
    intersection_delay_4_y_exp <= intersection_delay_3_y_exp;
    intersection_delay_4_y_mant <= intersection_delay_3_y_mant;
    intersection_delay_4_z_sign <= intersection_delay_3_z_sign;
    intersection_delay_4_z_exp <= intersection_delay_3_z_exp;
    intersection_delay_4_z_mant <= intersection_delay_3_z_mant;
    intersection_delay_5_x_sign <= intersection_delay_4_x_sign;
    intersection_delay_5_x_exp <= intersection_delay_4_x_exp;
    intersection_delay_5_x_mant <= intersection_delay_4_x_mant;
    intersection_delay_5_y_sign <= intersection_delay_4_y_sign;
    intersection_delay_5_y_exp <= intersection_delay_4_y_exp;
    intersection_delay_5_y_mant <= intersection_delay_4_y_mant;
    intersection_delay_5_z_sign <= intersection_delay_4_z_sign;
    intersection_delay_5_z_exp <= intersection_delay_4_z_exp;
    intersection_delay_5_z_mant <= intersection_delay_4_z_mant;
    intersection_delay_6_x_sign <= intersection_delay_5_x_sign;
    intersection_delay_6_x_exp <= intersection_delay_5_x_exp;
    intersection_delay_6_x_mant <= intersection_delay_5_x_mant;
    intersection_delay_6_y_sign <= intersection_delay_5_y_sign;
    intersection_delay_6_y_exp <= intersection_delay_5_y_exp;
    intersection_delay_6_y_mant <= intersection_delay_5_y_mant;
    intersection_delay_6_z_sign <= intersection_delay_5_z_sign;
    intersection_delay_6_z_exp <= intersection_delay_5_z_exp;
    intersection_delay_6_z_mant <= intersection_delay_5_z_mant;
    intersection_delay_7_x_sign <= intersection_delay_6_x_sign;
    intersection_delay_7_x_exp <= intersection_delay_6_x_exp;
    intersection_delay_7_x_mant <= intersection_delay_6_x_mant;
    intersection_delay_7_y_sign <= intersection_delay_6_y_sign;
    intersection_delay_7_y_exp <= intersection_delay_6_y_exp;
    intersection_delay_7_y_mant <= intersection_delay_6_y_mant;
    intersection_delay_7_z_sign <= intersection_delay_6_z_sign;
    intersection_delay_7_z_exp <= intersection_delay_6_z_exp;
    intersection_delay_7_z_mant <= intersection_delay_6_z_mant;
    intersection_delay_8_x_sign <= intersection_delay_7_x_sign;
    intersection_delay_8_x_exp <= intersection_delay_7_x_exp;
    intersection_delay_8_x_mant <= intersection_delay_7_x_mant;
    intersection_delay_8_y_sign <= intersection_delay_7_y_sign;
    intersection_delay_8_y_exp <= intersection_delay_7_y_exp;
    intersection_delay_8_y_mant <= intersection_delay_7_y_mant;
    intersection_delay_8_z_sign <= intersection_delay_7_z_sign;
    intersection_delay_8_z_exp <= intersection_delay_7_z_exp;
    intersection_delay_8_z_mant <= intersection_delay_7_z_mant;
    intersection_delay_9_x_sign <= intersection_delay_8_x_sign;
    intersection_delay_9_x_exp <= intersection_delay_8_x_exp;
    intersection_delay_9_x_mant <= intersection_delay_8_x_mant;
    intersection_delay_9_y_sign <= intersection_delay_8_y_sign;
    intersection_delay_9_y_exp <= intersection_delay_8_y_exp;
    intersection_delay_9_y_mant <= intersection_delay_8_y_mant;
    intersection_delay_9_z_sign <= intersection_delay_8_z_sign;
    intersection_delay_9_z_exp <= intersection_delay_8_z_exp;
    intersection_delay_9_z_mant <= intersection_delay_8_z_mant;
    intersection_delay_10_x_sign <= intersection_delay_9_x_sign;
    intersection_delay_10_x_exp <= intersection_delay_9_x_exp;
    intersection_delay_10_x_mant <= intersection_delay_9_x_mant;
    intersection_delay_10_y_sign <= intersection_delay_9_y_sign;
    intersection_delay_10_y_exp <= intersection_delay_9_y_exp;
    intersection_delay_10_y_mant <= intersection_delay_9_y_mant;
    intersection_delay_10_z_sign <= intersection_delay_9_z_sign;
    intersection_delay_10_z_exp <= intersection_delay_9_z_exp;
    intersection_delay_10_z_mant <= intersection_delay_9_z_mant;
    intersection_delay_11_x_sign <= intersection_delay_10_x_sign;
    intersection_delay_11_x_exp <= intersection_delay_10_x_exp;
    intersection_delay_11_x_mant <= intersection_delay_10_x_mant;
    intersection_delay_11_y_sign <= intersection_delay_10_y_sign;
    intersection_delay_11_y_exp <= intersection_delay_10_y_exp;
    intersection_delay_11_y_mant <= intersection_delay_10_y_mant;
    intersection_delay_11_z_sign <= intersection_delay_10_z_sign;
    intersection_delay_11_z_exp <= intersection_delay_10_z_exp;
    intersection_delay_11_z_mant <= intersection_delay_10_z_mant;
    intersection_delay_12_x_sign <= intersection_delay_11_x_sign;
    intersection_delay_12_x_exp <= intersection_delay_11_x_exp;
    intersection_delay_12_x_mant <= intersection_delay_11_x_mant;
    intersection_delay_12_y_sign <= intersection_delay_11_y_sign;
    intersection_delay_12_y_exp <= intersection_delay_11_y_exp;
    intersection_delay_12_y_mant <= intersection_delay_11_y_mant;
    intersection_delay_12_z_sign <= intersection_delay_11_z_sign;
    intersection_delay_12_z_exp <= intersection_delay_11_z_exp;
    intersection_delay_12_z_mant <= intersection_delay_11_z_mant;
    intersection_delay_13_x_sign <= intersection_delay_12_x_sign;
    intersection_delay_13_x_exp <= intersection_delay_12_x_exp;
    intersection_delay_13_x_mant <= intersection_delay_12_x_mant;
    intersection_delay_13_y_sign <= intersection_delay_12_y_sign;
    intersection_delay_13_y_exp <= intersection_delay_12_y_exp;
    intersection_delay_13_y_mant <= intersection_delay_12_y_mant;
    intersection_delay_13_z_sign <= intersection_delay_12_z_sign;
    intersection_delay_13_z_exp <= intersection_delay_12_z_exp;
    intersection_delay_13_z_mant <= intersection_delay_12_z_mant;
    intersection_delay_14_x_sign <= intersection_delay_13_x_sign;
    intersection_delay_14_x_exp <= intersection_delay_13_x_exp;
    intersection_delay_14_x_mant <= intersection_delay_13_x_mant;
    intersection_delay_14_y_sign <= intersection_delay_13_y_sign;
    intersection_delay_14_y_exp <= intersection_delay_13_y_exp;
    intersection_delay_14_y_mant <= intersection_delay_13_y_mant;
    intersection_delay_14_z_sign <= intersection_delay_13_z_sign;
    intersection_delay_14_z_exp <= intersection_delay_13_z_exp;
    intersection_delay_14_z_mant <= intersection_delay_13_z_mant;
    intersection_delay_15_x_sign <= intersection_delay_14_x_sign;
    intersection_delay_15_x_exp <= intersection_delay_14_x_exp;
    intersection_delay_15_x_mant <= intersection_delay_14_x_mant;
    intersection_delay_15_y_sign <= intersection_delay_14_y_sign;
    intersection_delay_15_y_exp <= intersection_delay_14_y_exp;
    intersection_delay_15_y_mant <= intersection_delay_14_y_mant;
    intersection_delay_15_z_sign <= intersection_delay_14_z_sign;
    intersection_delay_15_z_exp <= intersection_delay_14_z_exp;
    intersection_delay_15_z_mant <= intersection_delay_14_z_mant;
    intersection_delay_16_x_sign <= intersection_delay_15_x_sign;
    intersection_delay_16_x_exp <= intersection_delay_15_x_exp;
    intersection_delay_16_x_mant <= intersection_delay_15_x_mant;
    intersection_delay_16_y_sign <= intersection_delay_15_y_sign;
    intersection_delay_16_y_exp <= intersection_delay_15_y_exp;
    intersection_delay_16_y_mant <= intersection_delay_15_y_mant;
    intersection_delay_16_z_sign <= intersection_delay_15_z_sign;
    intersection_delay_16_z_exp <= intersection_delay_15_z_exp;
    intersection_delay_16_z_mant <= intersection_delay_15_z_mant;
    intersection_delay_17_x_sign <= intersection_delay_16_x_sign;
    intersection_delay_17_x_exp <= intersection_delay_16_x_exp;
    intersection_delay_17_x_mant <= intersection_delay_16_x_mant;
    intersection_delay_17_y_sign <= intersection_delay_16_y_sign;
    intersection_delay_17_y_exp <= intersection_delay_16_y_exp;
    intersection_delay_17_y_mant <= intersection_delay_16_y_mant;
    intersection_delay_17_z_sign <= intersection_delay_16_z_sign;
    intersection_delay_17_z_exp <= intersection_delay_16_z_exp;
    intersection_delay_17_z_mant <= intersection_delay_16_z_mant;
    intersection_delay_18_x_sign <= intersection_delay_17_x_sign;
    intersection_delay_18_x_exp <= intersection_delay_17_x_exp;
    intersection_delay_18_x_mant <= intersection_delay_17_x_mant;
    intersection_delay_18_y_sign <= intersection_delay_17_y_sign;
    intersection_delay_18_y_exp <= intersection_delay_17_y_exp;
    intersection_delay_18_y_mant <= intersection_delay_17_y_mant;
    intersection_delay_18_z_sign <= intersection_delay_17_z_sign;
    intersection_delay_18_z_exp <= intersection_delay_17_z_exp;
    intersection_delay_18_z_mant <= intersection_delay_17_z_mant;
    intersection_delay_19_x_sign <= intersection_delay_18_x_sign;
    intersection_delay_19_x_exp <= intersection_delay_18_x_exp;
    intersection_delay_19_x_mant <= intersection_delay_18_x_mant;
    intersection_delay_19_y_sign <= intersection_delay_18_y_sign;
    intersection_delay_19_y_exp <= intersection_delay_18_y_exp;
    intersection_delay_19_y_mant <= intersection_delay_18_y_mant;
    intersection_delay_19_z_sign <= intersection_delay_18_z_sign;
    intersection_delay_19_z_exp <= intersection_delay_18_z_exp;
    intersection_delay_19_z_mant <= intersection_delay_18_z_mant;
    intersection_delay_20_x_sign <= intersection_delay_19_x_sign;
    intersection_delay_20_x_exp <= intersection_delay_19_x_exp;
    intersection_delay_20_x_mant <= intersection_delay_19_x_mant;
    intersection_delay_20_y_sign <= intersection_delay_19_y_sign;
    intersection_delay_20_y_exp <= intersection_delay_19_y_exp;
    intersection_delay_20_y_mant <= intersection_delay_19_y_mant;
    intersection_delay_20_z_sign <= intersection_delay_19_z_sign;
    intersection_delay_20_z_exp <= intersection_delay_19_z_exp;
    intersection_delay_20_z_mant <= intersection_delay_19_z_mant;
    intersection_delay_21_x_sign <= intersection_delay_20_x_sign;
    intersection_delay_21_x_exp <= intersection_delay_20_x_exp;
    intersection_delay_21_x_mant <= intersection_delay_20_x_mant;
    intersection_delay_21_y_sign <= intersection_delay_20_y_sign;
    intersection_delay_21_y_exp <= intersection_delay_20_y_exp;
    intersection_delay_21_y_mant <= intersection_delay_20_y_mant;
    intersection_delay_21_z_sign <= intersection_delay_20_z_sign;
    intersection_delay_21_z_exp <= intersection_delay_20_z_exp;
    intersection_delay_21_z_mant <= intersection_delay_20_z_mant;
    intersection_delayed_x_sign <= intersection_delay_21_x_sign;
    intersection_delayed_x_exp <= intersection_delay_21_x_exp;
    intersection_delayed_x_mant <= intersection_delay_21_x_mant;
    intersection_delayed_y_sign <= intersection_delay_21_y_sign;
    intersection_delayed_y_exp <= intersection_delay_21_y_exp;
    intersection_delayed_y_mant <= intersection_delay_21_y_mant;
    intersection_delayed_z_sign <= intersection_delay_21_z_sign;
    intersection_delayed_z_exp <= intersection_delay_21_z_exp;
    intersection_delayed_z_mant <= intersection_delay_21_z_mant;
    normal_delayed_dir_mirror_delay_1_x_sign <= normal_delayed_dir_mirror_x_sign;
    normal_delayed_dir_mirror_delay_1_x_exp <= normal_delayed_dir_mirror_x_exp;
    normal_delayed_dir_mirror_delay_1_x_mant <= normal_delayed_dir_mirror_x_mant;
    normal_delayed_dir_mirror_delay_1_y_sign <= normal_delayed_dir_mirror_y_sign;
    normal_delayed_dir_mirror_delay_1_y_exp <= normal_delayed_dir_mirror_y_exp;
    normal_delayed_dir_mirror_delay_1_y_mant <= normal_delayed_dir_mirror_y_mant;
    normal_delayed_dir_mirror_delay_1_z_sign <= normal_delayed_dir_mirror_z_sign;
    normal_delayed_dir_mirror_delay_1_z_exp <= normal_delayed_dir_mirror_z_exp;
    normal_delayed_dir_mirror_delay_1_z_mant <= normal_delayed_dir_mirror_z_mant;
    normal_delayed_dir_mirror_delay_2_x_sign <= normal_delayed_dir_mirror_delay_1_x_sign;
    normal_delayed_dir_mirror_delay_2_x_exp <= normal_delayed_dir_mirror_delay_1_x_exp;
    normal_delayed_dir_mirror_delay_2_x_mant <= normal_delayed_dir_mirror_delay_1_x_mant;
    normal_delayed_dir_mirror_delay_2_y_sign <= normal_delayed_dir_mirror_delay_1_y_sign;
    normal_delayed_dir_mirror_delay_2_y_exp <= normal_delayed_dir_mirror_delay_1_y_exp;
    normal_delayed_dir_mirror_delay_2_y_mant <= normal_delayed_dir_mirror_delay_1_y_mant;
    normal_delayed_dir_mirror_delay_2_z_sign <= normal_delayed_dir_mirror_delay_1_z_sign;
    normal_delayed_dir_mirror_delay_2_z_exp <= normal_delayed_dir_mirror_delay_1_z_exp;
    normal_delayed_dir_mirror_delay_2_z_mant <= normal_delayed_dir_mirror_delay_1_z_mant;
    normal_delayed_dir_mirror_delay_3_x_sign <= normal_delayed_dir_mirror_delay_2_x_sign;
    normal_delayed_dir_mirror_delay_3_x_exp <= normal_delayed_dir_mirror_delay_2_x_exp;
    normal_delayed_dir_mirror_delay_3_x_mant <= normal_delayed_dir_mirror_delay_2_x_mant;
    normal_delayed_dir_mirror_delay_3_y_sign <= normal_delayed_dir_mirror_delay_2_y_sign;
    normal_delayed_dir_mirror_delay_3_y_exp <= normal_delayed_dir_mirror_delay_2_y_exp;
    normal_delayed_dir_mirror_delay_3_y_mant <= normal_delayed_dir_mirror_delay_2_y_mant;
    normal_delayed_dir_mirror_delay_3_z_sign <= normal_delayed_dir_mirror_delay_2_z_sign;
    normal_delayed_dir_mirror_delay_3_z_exp <= normal_delayed_dir_mirror_delay_2_z_exp;
    normal_delayed_dir_mirror_delay_3_z_mant <= normal_delayed_dir_mirror_delay_2_z_mant;
    normal_delayed_result_x_sign <= normal_delayed_dir_mirror_delay_3_x_sign;
    normal_delayed_result_x_exp <= normal_delayed_dir_mirror_delay_3_x_exp;
    normal_delayed_result_x_mant <= normal_delayed_dir_mirror_delay_3_x_mant;
    normal_delayed_result_y_sign <= normal_delayed_dir_mirror_delay_3_y_sign;
    normal_delayed_result_y_exp <= normal_delayed_dir_mirror_delay_3_y_exp;
    normal_delayed_result_y_mant <= normal_delayed_dir_mirror_delay_3_y_mant;
    normal_delayed_result_z_sign <= normal_delayed_dir_mirror_delay_3_z_sign;
    normal_delayed_result_z_exp <= normal_delayed_dir_mirror_delay_3_z_exp;
    normal_delayed_result_z_mant <= normal_delayed_dir_mirror_delay_3_z_mant;
    origin_delayed_intersect_delay_1_x_sign <= origin_delayed_intersect_x_sign;
    origin_delayed_intersect_delay_1_x_exp <= origin_delayed_intersect_x_exp;
    origin_delayed_intersect_delay_1_x_mant <= origin_delayed_intersect_x_mant;
    origin_delayed_intersect_delay_1_y_sign <= origin_delayed_intersect_y_sign;
    origin_delayed_intersect_delay_1_y_exp <= origin_delayed_intersect_y_exp;
    origin_delayed_intersect_delay_1_y_mant <= origin_delayed_intersect_y_mant;
    origin_delayed_intersect_delay_1_z_sign <= origin_delayed_intersect_z_sign;
    origin_delayed_intersect_delay_1_z_exp <= origin_delayed_intersect_z_exp;
    origin_delayed_intersect_delay_1_z_mant <= origin_delayed_intersect_z_mant;
    origin_delayed_intersect_delay_2_x_sign <= origin_delayed_intersect_delay_1_x_sign;
    origin_delayed_intersect_delay_2_x_exp <= origin_delayed_intersect_delay_1_x_exp;
    origin_delayed_intersect_delay_2_x_mant <= origin_delayed_intersect_delay_1_x_mant;
    origin_delayed_intersect_delay_2_y_sign <= origin_delayed_intersect_delay_1_y_sign;
    origin_delayed_intersect_delay_2_y_exp <= origin_delayed_intersect_delay_1_y_exp;
    origin_delayed_intersect_delay_2_y_mant <= origin_delayed_intersect_delay_1_y_mant;
    origin_delayed_intersect_delay_2_z_sign <= origin_delayed_intersect_delay_1_z_sign;
    origin_delayed_intersect_delay_2_z_exp <= origin_delayed_intersect_delay_1_z_exp;
    origin_delayed_intersect_delay_2_z_mant <= origin_delayed_intersect_delay_1_z_mant;
    origin_delayed_intersect_delay_3_x_sign <= origin_delayed_intersect_delay_2_x_sign;
    origin_delayed_intersect_delay_3_x_exp <= origin_delayed_intersect_delay_2_x_exp;
    origin_delayed_intersect_delay_3_x_mant <= origin_delayed_intersect_delay_2_x_mant;
    origin_delayed_intersect_delay_3_y_sign <= origin_delayed_intersect_delay_2_y_sign;
    origin_delayed_intersect_delay_3_y_exp <= origin_delayed_intersect_delay_2_y_exp;
    origin_delayed_intersect_delay_3_y_mant <= origin_delayed_intersect_delay_2_y_mant;
    origin_delayed_intersect_delay_3_z_sign <= origin_delayed_intersect_delay_2_z_sign;
    origin_delayed_intersect_delay_3_z_exp <= origin_delayed_intersect_delay_2_z_exp;
    origin_delayed_intersect_delay_3_z_mant <= origin_delayed_intersect_delay_2_z_mant;
    origin_delayed_intersect_delay_4_x_sign <= origin_delayed_intersect_delay_3_x_sign;
    origin_delayed_intersect_delay_4_x_exp <= origin_delayed_intersect_delay_3_x_exp;
    origin_delayed_intersect_delay_4_x_mant <= origin_delayed_intersect_delay_3_x_mant;
    origin_delayed_intersect_delay_4_y_sign <= origin_delayed_intersect_delay_3_y_sign;
    origin_delayed_intersect_delay_4_y_exp <= origin_delayed_intersect_delay_3_y_exp;
    origin_delayed_intersect_delay_4_y_mant <= origin_delayed_intersect_delay_3_y_mant;
    origin_delayed_intersect_delay_4_z_sign <= origin_delayed_intersect_delay_3_z_sign;
    origin_delayed_intersect_delay_4_z_exp <= origin_delayed_intersect_delay_3_z_exp;
    origin_delayed_intersect_delay_4_z_mant <= origin_delayed_intersect_delay_3_z_mant;
    origin_delayed_intersect_delay_5_x_sign <= origin_delayed_intersect_delay_4_x_sign;
    origin_delayed_intersect_delay_5_x_exp <= origin_delayed_intersect_delay_4_x_exp;
    origin_delayed_intersect_delay_5_x_mant <= origin_delayed_intersect_delay_4_x_mant;
    origin_delayed_intersect_delay_5_y_sign <= origin_delayed_intersect_delay_4_y_sign;
    origin_delayed_intersect_delay_5_y_exp <= origin_delayed_intersect_delay_4_y_exp;
    origin_delayed_intersect_delay_5_y_mant <= origin_delayed_intersect_delay_4_y_mant;
    origin_delayed_intersect_delay_5_z_sign <= origin_delayed_intersect_delay_4_z_sign;
    origin_delayed_intersect_delay_5_z_exp <= origin_delayed_intersect_delay_4_z_exp;
    origin_delayed_intersect_delay_5_z_mant <= origin_delayed_intersect_delay_4_z_mant;
    origin_delayed_intersect_delay_6_x_sign <= origin_delayed_intersect_delay_5_x_sign;
    origin_delayed_intersect_delay_6_x_exp <= origin_delayed_intersect_delay_5_x_exp;
    origin_delayed_intersect_delay_6_x_mant <= origin_delayed_intersect_delay_5_x_mant;
    origin_delayed_intersect_delay_6_y_sign <= origin_delayed_intersect_delay_5_y_sign;
    origin_delayed_intersect_delay_6_y_exp <= origin_delayed_intersect_delay_5_y_exp;
    origin_delayed_intersect_delay_6_y_mant <= origin_delayed_intersect_delay_5_y_mant;
    origin_delayed_intersect_delay_6_z_sign <= origin_delayed_intersect_delay_5_z_sign;
    origin_delayed_intersect_delay_6_z_exp <= origin_delayed_intersect_delay_5_z_exp;
    origin_delayed_intersect_delay_6_z_mant <= origin_delayed_intersect_delay_5_z_mant;
    origin_delayed_intersect_delay_7_x_sign <= origin_delayed_intersect_delay_6_x_sign;
    origin_delayed_intersect_delay_7_x_exp <= origin_delayed_intersect_delay_6_x_exp;
    origin_delayed_intersect_delay_7_x_mant <= origin_delayed_intersect_delay_6_x_mant;
    origin_delayed_intersect_delay_7_y_sign <= origin_delayed_intersect_delay_6_y_sign;
    origin_delayed_intersect_delay_7_y_exp <= origin_delayed_intersect_delay_6_y_exp;
    origin_delayed_intersect_delay_7_y_mant <= origin_delayed_intersect_delay_6_y_mant;
    origin_delayed_intersect_delay_7_z_sign <= origin_delayed_intersect_delay_6_z_sign;
    origin_delayed_intersect_delay_7_z_exp <= origin_delayed_intersect_delay_6_z_exp;
    origin_delayed_intersect_delay_7_z_mant <= origin_delayed_intersect_delay_6_z_mant;
    origin_delayed_intersect_delay_8_x_sign <= origin_delayed_intersect_delay_7_x_sign;
    origin_delayed_intersect_delay_8_x_exp <= origin_delayed_intersect_delay_7_x_exp;
    origin_delayed_intersect_delay_8_x_mant <= origin_delayed_intersect_delay_7_x_mant;
    origin_delayed_intersect_delay_8_y_sign <= origin_delayed_intersect_delay_7_y_sign;
    origin_delayed_intersect_delay_8_y_exp <= origin_delayed_intersect_delay_7_y_exp;
    origin_delayed_intersect_delay_8_y_mant <= origin_delayed_intersect_delay_7_y_mant;
    origin_delayed_intersect_delay_8_z_sign <= origin_delayed_intersect_delay_7_z_sign;
    origin_delayed_intersect_delay_8_z_exp <= origin_delayed_intersect_delay_7_z_exp;
    origin_delayed_intersect_delay_8_z_mant <= origin_delayed_intersect_delay_7_z_mant;
    origin_delayed_intersect_delay_9_x_sign <= origin_delayed_intersect_delay_8_x_sign;
    origin_delayed_intersect_delay_9_x_exp <= origin_delayed_intersect_delay_8_x_exp;
    origin_delayed_intersect_delay_9_x_mant <= origin_delayed_intersect_delay_8_x_mant;
    origin_delayed_intersect_delay_9_y_sign <= origin_delayed_intersect_delay_8_y_sign;
    origin_delayed_intersect_delay_9_y_exp <= origin_delayed_intersect_delay_8_y_exp;
    origin_delayed_intersect_delay_9_y_mant <= origin_delayed_intersect_delay_8_y_mant;
    origin_delayed_intersect_delay_9_z_sign <= origin_delayed_intersect_delay_8_z_sign;
    origin_delayed_intersect_delay_9_z_exp <= origin_delayed_intersect_delay_8_z_exp;
    origin_delayed_intersect_delay_9_z_mant <= origin_delayed_intersect_delay_8_z_mant;
    origin_delayed_intersect_delay_10_x_sign <= origin_delayed_intersect_delay_9_x_sign;
    origin_delayed_intersect_delay_10_x_exp <= origin_delayed_intersect_delay_9_x_exp;
    origin_delayed_intersect_delay_10_x_mant <= origin_delayed_intersect_delay_9_x_mant;
    origin_delayed_intersect_delay_10_y_sign <= origin_delayed_intersect_delay_9_y_sign;
    origin_delayed_intersect_delay_10_y_exp <= origin_delayed_intersect_delay_9_y_exp;
    origin_delayed_intersect_delay_10_y_mant <= origin_delayed_intersect_delay_9_y_mant;
    origin_delayed_intersect_delay_10_z_sign <= origin_delayed_intersect_delay_9_z_sign;
    origin_delayed_intersect_delay_10_z_exp <= origin_delayed_intersect_delay_9_z_exp;
    origin_delayed_intersect_delay_10_z_mant <= origin_delayed_intersect_delay_9_z_mant;
    origin_delayed_intersect_delay_11_x_sign <= origin_delayed_intersect_delay_10_x_sign;
    origin_delayed_intersect_delay_11_x_exp <= origin_delayed_intersect_delay_10_x_exp;
    origin_delayed_intersect_delay_11_x_mant <= origin_delayed_intersect_delay_10_x_mant;
    origin_delayed_intersect_delay_11_y_sign <= origin_delayed_intersect_delay_10_y_sign;
    origin_delayed_intersect_delay_11_y_exp <= origin_delayed_intersect_delay_10_y_exp;
    origin_delayed_intersect_delay_11_y_mant <= origin_delayed_intersect_delay_10_y_mant;
    origin_delayed_intersect_delay_11_z_sign <= origin_delayed_intersect_delay_10_z_sign;
    origin_delayed_intersect_delay_11_z_exp <= origin_delayed_intersect_delay_10_z_exp;
    origin_delayed_intersect_delay_11_z_mant <= origin_delayed_intersect_delay_10_z_mant;
    origin_delayed_intersect_delay_12_x_sign <= origin_delayed_intersect_delay_11_x_sign;
    origin_delayed_intersect_delay_12_x_exp <= origin_delayed_intersect_delay_11_x_exp;
    origin_delayed_intersect_delay_12_x_mant <= origin_delayed_intersect_delay_11_x_mant;
    origin_delayed_intersect_delay_12_y_sign <= origin_delayed_intersect_delay_11_y_sign;
    origin_delayed_intersect_delay_12_y_exp <= origin_delayed_intersect_delay_11_y_exp;
    origin_delayed_intersect_delay_12_y_mant <= origin_delayed_intersect_delay_11_y_mant;
    origin_delayed_intersect_delay_12_z_sign <= origin_delayed_intersect_delay_11_z_sign;
    origin_delayed_intersect_delay_12_z_exp <= origin_delayed_intersect_delay_11_z_exp;
    origin_delayed_intersect_delay_12_z_mant <= origin_delayed_intersect_delay_11_z_mant;
    origin_delayed_intersect_delay_13_x_sign <= origin_delayed_intersect_delay_12_x_sign;
    origin_delayed_intersect_delay_13_x_exp <= origin_delayed_intersect_delay_12_x_exp;
    origin_delayed_intersect_delay_13_x_mant <= origin_delayed_intersect_delay_12_x_mant;
    origin_delayed_intersect_delay_13_y_sign <= origin_delayed_intersect_delay_12_y_sign;
    origin_delayed_intersect_delay_13_y_exp <= origin_delayed_intersect_delay_12_y_exp;
    origin_delayed_intersect_delay_13_y_mant <= origin_delayed_intersect_delay_12_y_mant;
    origin_delayed_intersect_delay_13_z_sign <= origin_delayed_intersect_delay_12_z_sign;
    origin_delayed_intersect_delay_13_z_exp <= origin_delayed_intersect_delay_12_z_exp;
    origin_delayed_intersect_delay_13_z_mant <= origin_delayed_intersect_delay_12_z_mant;
    origin_delayed_intersect_delay_14_x_sign <= origin_delayed_intersect_delay_13_x_sign;
    origin_delayed_intersect_delay_14_x_exp <= origin_delayed_intersect_delay_13_x_exp;
    origin_delayed_intersect_delay_14_x_mant <= origin_delayed_intersect_delay_13_x_mant;
    origin_delayed_intersect_delay_14_y_sign <= origin_delayed_intersect_delay_13_y_sign;
    origin_delayed_intersect_delay_14_y_exp <= origin_delayed_intersect_delay_13_y_exp;
    origin_delayed_intersect_delay_14_y_mant <= origin_delayed_intersect_delay_13_y_mant;
    origin_delayed_intersect_delay_14_z_sign <= origin_delayed_intersect_delay_13_z_sign;
    origin_delayed_intersect_delay_14_z_exp <= origin_delayed_intersect_delay_13_z_exp;
    origin_delayed_intersect_delay_14_z_mant <= origin_delayed_intersect_delay_13_z_mant;
    origin_delayed_intersect_delay_15_x_sign <= origin_delayed_intersect_delay_14_x_sign;
    origin_delayed_intersect_delay_15_x_exp <= origin_delayed_intersect_delay_14_x_exp;
    origin_delayed_intersect_delay_15_x_mant <= origin_delayed_intersect_delay_14_x_mant;
    origin_delayed_intersect_delay_15_y_sign <= origin_delayed_intersect_delay_14_y_sign;
    origin_delayed_intersect_delay_15_y_exp <= origin_delayed_intersect_delay_14_y_exp;
    origin_delayed_intersect_delay_15_y_mant <= origin_delayed_intersect_delay_14_y_mant;
    origin_delayed_intersect_delay_15_z_sign <= origin_delayed_intersect_delay_14_z_sign;
    origin_delayed_intersect_delay_15_z_exp <= origin_delayed_intersect_delay_14_z_exp;
    origin_delayed_intersect_delay_15_z_mant <= origin_delayed_intersect_delay_14_z_mant;
    origin_delayed_intersect_delay_16_x_sign <= origin_delayed_intersect_delay_15_x_sign;
    origin_delayed_intersect_delay_16_x_exp <= origin_delayed_intersect_delay_15_x_exp;
    origin_delayed_intersect_delay_16_x_mant <= origin_delayed_intersect_delay_15_x_mant;
    origin_delayed_intersect_delay_16_y_sign <= origin_delayed_intersect_delay_15_y_sign;
    origin_delayed_intersect_delay_16_y_exp <= origin_delayed_intersect_delay_15_y_exp;
    origin_delayed_intersect_delay_16_y_mant <= origin_delayed_intersect_delay_15_y_mant;
    origin_delayed_intersect_delay_16_z_sign <= origin_delayed_intersect_delay_15_z_sign;
    origin_delayed_intersect_delay_16_z_exp <= origin_delayed_intersect_delay_15_z_exp;
    origin_delayed_intersect_delay_16_z_mant <= origin_delayed_intersect_delay_15_z_mant;
    origin_delayed_intersect_delay_17_x_sign <= origin_delayed_intersect_delay_16_x_sign;
    origin_delayed_intersect_delay_17_x_exp <= origin_delayed_intersect_delay_16_x_exp;
    origin_delayed_intersect_delay_17_x_mant <= origin_delayed_intersect_delay_16_x_mant;
    origin_delayed_intersect_delay_17_y_sign <= origin_delayed_intersect_delay_16_y_sign;
    origin_delayed_intersect_delay_17_y_exp <= origin_delayed_intersect_delay_16_y_exp;
    origin_delayed_intersect_delay_17_y_mant <= origin_delayed_intersect_delay_16_y_mant;
    origin_delayed_intersect_delay_17_z_sign <= origin_delayed_intersect_delay_16_z_sign;
    origin_delayed_intersect_delay_17_z_exp <= origin_delayed_intersect_delay_16_z_exp;
    origin_delayed_intersect_delay_17_z_mant <= origin_delayed_intersect_delay_16_z_mant;
    origin_delayed_intersect_delay_18_x_sign <= origin_delayed_intersect_delay_17_x_sign;
    origin_delayed_intersect_delay_18_x_exp <= origin_delayed_intersect_delay_17_x_exp;
    origin_delayed_intersect_delay_18_x_mant <= origin_delayed_intersect_delay_17_x_mant;
    origin_delayed_intersect_delay_18_y_sign <= origin_delayed_intersect_delay_17_y_sign;
    origin_delayed_intersect_delay_18_y_exp <= origin_delayed_intersect_delay_17_y_exp;
    origin_delayed_intersect_delay_18_y_mant <= origin_delayed_intersect_delay_17_y_mant;
    origin_delayed_intersect_delay_18_z_sign <= origin_delayed_intersect_delay_17_z_sign;
    origin_delayed_intersect_delay_18_z_exp <= origin_delayed_intersect_delay_17_z_exp;
    origin_delayed_intersect_delay_18_z_mant <= origin_delayed_intersect_delay_17_z_mant;
    origin_delayed_intersect_delay_19_x_sign <= origin_delayed_intersect_delay_18_x_sign;
    origin_delayed_intersect_delay_19_x_exp <= origin_delayed_intersect_delay_18_x_exp;
    origin_delayed_intersect_delay_19_x_mant <= origin_delayed_intersect_delay_18_x_mant;
    origin_delayed_intersect_delay_19_y_sign <= origin_delayed_intersect_delay_18_y_sign;
    origin_delayed_intersect_delay_19_y_exp <= origin_delayed_intersect_delay_18_y_exp;
    origin_delayed_intersect_delay_19_y_mant <= origin_delayed_intersect_delay_18_y_mant;
    origin_delayed_intersect_delay_19_z_sign <= origin_delayed_intersect_delay_18_z_sign;
    origin_delayed_intersect_delay_19_z_exp <= origin_delayed_intersect_delay_18_z_exp;
    origin_delayed_intersect_delay_19_z_mant <= origin_delayed_intersect_delay_18_z_mant;
    origin_delayed_intersect_delay_20_x_sign <= origin_delayed_intersect_delay_19_x_sign;
    origin_delayed_intersect_delay_20_x_exp <= origin_delayed_intersect_delay_19_x_exp;
    origin_delayed_intersect_delay_20_x_mant <= origin_delayed_intersect_delay_19_x_mant;
    origin_delayed_intersect_delay_20_y_sign <= origin_delayed_intersect_delay_19_y_sign;
    origin_delayed_intersect_delay_20_y_exp <= origin_delayed_intersect_delay_19_y_exp;
    origin_delayed_intersect_delay_20_y_mant <= origin_delayed_intersect_delay_19_y_mant;
    origin_delayed_intersect_delay_20_z_sign <= origin_delayed_intersect_delay_19_z_sign;
    origin_delayed_intersect_delay_20_z_exp <= origin_delayed_intersect_delay_19_z_exp;
    origin_delayed_intersect_delay_20_z_mant <= origin_delayed_intersect_delay_19_z_mant;
    origin_delayed_intersect_delay_21_x_sign <= origin_delayed_intersect_delay_20_x_sign;
    origin_delayed_intersect_delay_21_x_exp <= origin_delayed_intersect_delay_20_x_exp;
    origin_delayed_intersect_delay_21_x_mant <= origin_delayed_intersect_delay_20_x_mant;
    origin_delayed_intersect_delay_21_y_sign <= origin_delayed_intersect_delay_20_y_sign;
    origin_delayed_intersect_delay_21_y_exp <= origin_delayed_intersect_delay_20_y_exp;
    origin_delayed_intersect_delay_21_y_mant <= origin_delayed_intersect_delay_20_y_mant;
    origin_delayed_intersect_delay_21_z_sign <= origin_delayed_intersect_delay_20_z_sign;
    origin_delayed_intersect_delay_21_z_exp <= origin_delayed_intersect_delay_20_z_exp;
    origin_delayed_intersect_delay_21_z_mant <= origin_delayed_intersect_delay_20_z_mant;
    origin_delayed_intersect_delay_22_x_sign <= origin_delayed_intersect_delay_21_x_sign;
    origin_delayed_intersect_delay_22_x_exp <= origin_delayed_intersect_delay_21_x_exp;
    origin_delayed_intersect_delay_22_x_mant <= origin_delayed_intersect_delay_21_x_mant;
    origin_delayed_intersect_delay_22_y_sign <= origin_delayed_intersect_delay_21_y_sign;
    origin_delayed_intersect_delay_22_y_exp <= origin_delayed_intersect_delay_21_y_exp;
    origin_delayed_intersect_delay_22_y_mant <= origin_delayed_intersect_delay_21_y_mant;
    origin_delayed_intersect_delay_22_z_sign <= origin_delayed_intersect_delay_21_z_sign;
    origin_delayed_intersect_delay_22_z_exp <= origin_delayed_intersect_delay_21_z_exp;
    origin_delayed_intersect_delay_22_z_mant <= origin_delayed_intersect_delay_21_z_mant;
    origin_delayed_intersect_delay_23_x_sign <= origin_delayed_intersect_delay_22_x_sign;
    origin_delayed_intersect_delay_23_x_exp <= origin_delayed_intersect_delay_22_x_exp;
    origin_delayed_intersect_delay_23_x_mant <= origin_delayed_intersect_delay_22_x_mant;
    origin_delayed_intersect_delay_23_y_sign <= origin_delayed_intersect_delay_22_y_sign;
    origin_delayed_intersect_delay_23_y_exp <= origin_delayed_intersect_delay_22_y_exp;
    origin_delayed_intersect_delay_23_y_mant <= origin_delayed_intersect_delay_22_y_mant;
    origin_delayed_intersect_delay_23_z_sign <= origin_delayed_intersect_delay_22_z_sign;
    origin_delayed_intersect_delay_23_z_exp <= origin_delayed_intersect_delay_22_z_exp;
    origin_delayed_intersect_delay_23_z_mant <= origin_delayed_intersect_delay_22_z_mant;
    origin_delayed_intersect_delay_24_x_sign <= origin_delayed_intersect_delay_23_x_sign;
    origin_delayed_intersect_delay_24_x_exp <= origin_delayed_intersect_delay_23_x_exp;
    origin_delayed_intersect_delay_24_x_mant <= origin_delayed_intersect_delay_23_x_mant;
    origin_delayed_intersect_delay_24_y_sign <= origin_delayed_intersect_delay_23_y_sign;
    origin_delayed_intersect_delay_24_y_exp <= origin_delayed_intersect_delay_23_y_exp;
    origin_delayed_intersect_delay_24_y_mant <= origin_delayed_intersect_delay_23_y_mant;
    origin_delayed_intersect_delay_24_z_sign <= origin_delayed_intersect_delay_23_z_sign;
    origin_delayed_intersect_delay_24_z_exp <= origin_delayed_intersect_delay_23_z_exp;
    origin_delayed_intersect_delay_24_z_mant <= origin_delayed_intersect_delay_23_z_mant;
    origin_delayed_intersect_delay_25_x_sign <= origin_delayed_intersect_delay_24_x_sign;
    origin_delayed_intersect_delay_25_x_exp <= origin_delayed_intersect_delay_24_x_exp;
    origin_delayed_intersect_delay_25_x_mant <= origin_delayed_intersect_delay_24_x_mant;
    origin_delayed_intersect_delay_25_y_sign <= origin_delayed_intersect_delay_24_y_sign;
    origin_delayed_intersect_delay_25_y_exp <= origin_delayed_intersect_delay_24_y_exp;
    origin_delayed_intersect_delay_25_y_mant <= origin_delayed_intersect_delay_24_y_mant;
    origin_delayed_intersect_delay_25_z_sign <= origin_delayed_intersect_delay_24_z_sign;
    origin_delayed_intersect_delay_25_z_exp <= origin_delayed_intersect_delay_24_z_exp;
    origin_delayed_intersect_delay_25_z_mant <= origin_delayed_intersect_delay_24_z_mant;
    origin_delayed_result_x_sign <= origin_delayed_intersect_delay_25_x_sign;
    origin_delayed_result_x_exp <= origin_delayed_intersect_delay_25_x_exp;
    origin_delayed_result_x_mant <= origin_delayed_intersect_delay_25_x_mant;
    origin_delayed_result_y_sign <= origin_delayed_intersect_delay_25_y_sign;
    origin_delayed_result_y_exp <= origin_delayed_intersect_delay_25_y_exp;
    origin_delayed_result_y_mant <= origin_delayed_intersect_delay_25_y_mant;
    origin_delayed_result_z_sign <= origin_delayed_intersect_delay_25_z_sign;
    origin_delayed_result_z_exp <= origin_delayed_intersect_delay_25_z_exp;
    origin_delayed_result_z_mant <= origin_delayed_intersect_delay_25_z_mant;
    dir_delayed_reflect_dir_delay_1_x_sign <= dir_delayed_reflect_dir_x_sign;
    dir_delayed_reflect_dir_delay_1_x_exp <= dir_delayed_reflect_dir_x_exp;
    dir_delayed_reflect_dir_delay_1_x_mant <= dir_delayed_reflect_dir_x_mant;
    dir_delayed_reflect_dir_delay_1_y_sign <= dir_delayed_reflect_dir_y_sign;
    dir_delayed_reflect_dir_delay_1_y_exp <= dir_delayed_reflect_dir_y_exp;
    dir_delayed_reflect_dir_delay_1_y_mant <= dir_delayed_reflect_dir_y_mant;
    dir_delayed_reflect_dir_delay_1_z_sign <= dir_delayed_reflect_dir_z_sign;
    dir_delayed_reflect_dir_delay_1_z_exp <= dir_delayed_reflect_dir_z_exp;
    dir_delayed_reflect_dir_delay_1_z_mant <= dir_delayed_reflect_dir_z_mant;
    dir_delayed_result_x_sign <= dir_delayed_reflect_dir_delay_1_x_sign;
    dir_delayed_result_x_exp <= dir_delayed_reflect_dir_delay_1_x_exp;
    dir_delayed_result_x_mant <= dir_delayed_reflect_dir_delay_1_x_mant;
    dir_delayed_result_y_sign <= dir_delayed_reflect_dir_delay_1_y_sign;
    dir_delayed_result_y_exp <= dir_delayed_reflect_dir_delay_1_y_exp;
    dir_delayed_result_y_mant <= dir_delayed_reflect_dir_delay_1_y_mant;
    dir_delayed_result_z_sign <= dir_delayed_reflect_dir_delay_1_z_sign;
    dir_delayed_result_z_exp <= dir_delayed_reflect_dir_delay_1_z_exp;
    dir_delayed_result_z_mant <= dir_delayed_reflect_dir_delay_1_z_mant;
  end

endmodule


//DotProduct_11_ remplaced by DotProduct


//Fpxx2SInt_2_ remplaced by Fpxx2SInt

module PanoCore (
      input  [11:0] io_pix_x,
      input  [10:0] io_pix_y,
      output [7:0] io_pixel_out_r,
      output [7:0] io_pixel_out_g,
      output [7:0] io_pixel_out_b,
      input   clk,
      input   reset);
  wire  _zz_7_;
  wire  rt_u_cam_sweep_io_ray_origin_x_sign;
  wire [5:0] rt_u_cam_sweep_io_ray_origin_x_exp;
  wire [12:0] rt_u_cam_sweep_io_ray_origin_x_mant;
  wire  rt_u_cam_sweep_io_ray_origin_y_sign;
  wire [5:0] rt_u_cam_sweep_io_ray_origin_y_exp;
  wire [12:0] rt_u_cam_sweep_io_ray_origin_y_mant;
  wire  rt_u_cam_sweep_io_ray_origin_z_sign;
  wire [5:0] rt_u_cam_sweep_io_ray_origin_z_exp;
  wire [12:0] rt_u_cam_sweep_io_ray_origin_z_mant;
  wire  rt_u_cam_sweep_io_ray_direction_x_sign;
  wire [5:0] rt_u_cam_sweep_io_ray_direction_x_exp;
  wire [12:0] rt_u_cam_sweep_io_ray_direction_x_mant;
  wire  rt_u_cam_sweep_io_ray_direction_y_sign;
  wire [5:0] rt_u_cam_sweep_io_ray_direction_y_exp;
  wire [12:0] rt_u_cam_sweep_io_ray_direction_y_mant;
  wire  rt_u_cam_sweep_io_ray_direction_z_sign;
  wire [5:0] rt_u_cam_sweep_io_ray_direction_z_exp;
  wire [12:0] rt_u_cam_sweep_io_ray_direction_z_mant;
  wire  rt_u_ray_dir_rot_x_io_result_vld;
  wire  rt_u_ray_dir_rot_x_io_result_x_sign;
  wire [5:0] rt_u_ray_dir_rot_x_io_result_x_exp;
  wire [12:0] rt_u_ray_dir_rot_x_io_result_x_mant;
  wire  rt_u_ray_dir_rot_x_io_result_y_sign;
  wire [5:0] rt_u_ray_dir_rot_x_io_result_y_exp;
  wire [12:0] rt_u_ray_dir_rot_x_io_result_y_mant;
  wire  rt_u_ray_dir_rot_x_io_result_z_sign;
  wire [5:0] rt_u_ray_dir_rot_x_io_result_z_exp;
  wire [12:0] rt_u_ray_dir_rot_x_io_result_z_mant;
  wire  rt_u_ray_dir_rot_y_io_result_vld;
  wire  rt_u_ray_dir_rot_y_io_result_x_sign;
  wire [5:0] rt_u_ray_dir_rot_y_io_result_x_exp;
  wire [12:0] rt_u_ray_dir_rot_y_io_result_x_mant;
  wire  rt_u_ray_dir_rot_y_io_result_y_sign;
  wire [5:0] rt_u_ray_dir_rot_y_io_result_y_exp;
  wire [12:0] rt_u_ray_dir_rot_y_io_result_y_mant;
  wire  rt_u_ray_dir_rot_y_io_result_z_sign;
  wire [5:0] rt_u_ray_dir_rot_y_io_result_z_exp;
  wire [12:0] rt_u_ray_dir_rot_y_io_result_z_mant;
  wire  rt_u_normalize_ray_io_result_vld;
  wire  rt_u_normalize_ray_io_result_x_sign;
  wire [5:0] rt_u_normalize_ray_io_result_x_exp;
  wire [12:0] rt_u_normalize_ray_io_result_x_mant;
  wire  rt_u_normalize_ray_io_result_y_sign;
  wire [5:0] rt_u_normalize_ray_io_result_y_exp;
  wire [12:0] rt_u_normalize_ray_io_result_y_mant;
  wire  rt_u_normalize_ray_io_result_z_sign;
  wire [5:0] rt_u_normalize_ray_io_result_z_exp;
  wire [12:0] rt_u_normalize_ray_io_result_z_mant;
  wire  rt_u_sphere_intersect_io_early_intersects_vld;
  wire  rt_u_sphere_intersect_io_early_intersects;
  wire  rt_u_sphere_intersect_io_early_normal_vld;
  wire  rt_u_sphere_intersect_io_early_normal_x_sign;
  wire [5:0] rt_u_sphere_intersect_io_early_normal_x_exp;
  wire [12:0] rt_u_sphere_intersect_io_early_normal_x_mant;
  wire  rt_u_sphere_intersect_io_early_normal_y_sign;
  wire [5:0] rt_u_sphere_intersect_io_early_normal_y_exp;
  wire [12:0] rt_u_sphere_intersect_io_early_normal_y_mant;
  wire  rt_u_sphere_intersect_io_early_normal_z_sign;
  wire [5:0] rt_u_sphere_intersect_io_early_normal_z_exp;
  wire [12:0] rt_u_sphere_intersect_io_early_normal_z_mant;
  wire  rt_u_sphere_intersect_io_result_vld;
  wire  rt_u_sphere_intersect_io_result_intersects;
  wire  rt_u_sphere_intersect_io_result_t_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_t_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_t_mant;
  wire  rt_u_sphere_intersect_io_result_intersection_x_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_intersection_x_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_intersection_x_mant;
  wire  rt_u_sphere_intersect_io_result_intersection_y_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_intersection_y_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_intersection_y_mant;
  wire  rt_u_sphere_intersect_io_result_intersection_z_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_intersection_z_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_intersection_z_mant;
  wire  rt_u_sphere_intersect_io_result_normal_x_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_normal_x_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_normal_x_mant;
  wire  rt_u_sphere_intersect_io_result_normal_y_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_normal_y_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_normal_y_mant;
  wire  rt_u_sphere_intersect_io_result_normal_z_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_normal_z_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_normal_z_mant;
  wire  rt_u_sphere_intersect_io_result_reflect_ray_origin_x_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_reflect_ray_origin_x_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_reflect_ray_origin_x_mant;
  wire  rt_u_sphere_intersect_io_result_reflect_ray_origin_y_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_reflect_ray_origin_y_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_reflect_ray_origin_y_mant;
  wire  rt_u_sphere_intersect_io_result_reflect_ray_origin_z_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_reflect_ray_origin_z_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_reflect_ray_origin_z_mant;
  wire  rt_u_sphere_intersect_io_result_reflect_ray_direction_x_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_reflect_ray_direction_x_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_reflect_ray_direction_x_mant;
  wire  rt_u_sphere_intersect_io_result_reflect_ray_direction_y_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_reflect_ray_direction_y_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_reflect_ray_direction_y_mant;
  wire  rt_u_sphere_intersect_io_result_reflect_ray_direction_z_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_reflect_ray_direction_z_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_reflect_ray_direction_z_mant;
  wire  rt_u_sphere_intersect_io_result_ray_origin_x_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_ray_origin_x_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_ray_origin_x_mant;
  wire  rt_u_sphere_intersect_io_result_ray_origin_y_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_ray_origin_y_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_ray_origin_y_mant;
  wire  rt_u_sphere_intersect_io_result_ray_origin_z_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_ray_origin_z_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_ray_origin_z_mant;
  wire  rt_u_sphere_intersect_io_result_ray_direction_x_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_ray_direction_x_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_ray_direction_x_mant;
  wire  rt_u_sphere_intersect_io_result_ray_direction_y_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_ray_direction_y_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_ray_direction_y_mant;
  wire  rt_u_sphere_intersect_io_result_ray_direction_z_sign;
  wire [5:0] rt_u_sphere_intersect_io_result_ray_direction_z_exp;
  wire [12:0] rt_u_sphere_intersect_io_result_ray_direction_z_mant;
  wire  rt_u_plane_intersect_io_result_vld;
  wire  rt_u_plane_intersect_io_result_intersects;
  wire  rt_u_plane_intersect_io_result_t_sign;
  wire [5:0] rt_u_plane_intersect_io_result_t_exp;
  wire [12:0] rt_u_plane_intersect_io_result_t_mant;
  wire  rt_u_plane_intersect_io_result_intersection_x_sign;
  wire [5:0] rt_u_plane_intersect_io_result_intersection_x_exp;
  wire [12:0] rt_u_plane_intersect_io_result_intersection_x_mant;
  wire  rt_u_plane_intersect_io_result_intersection_y_sign;
  wire [5:0] rt_u_plane_intersect_io_result_intersection_y_exp;
  wire [12:0] rt_u_plane_intersect_io_result_intersection_y_mant;
  wire  rt_u_plane_intersect_io_result_intersection_z_sign;
  wire [5:0] rt_u_plane_intersect_io_result_intersection_z_exp;
  wire [12:0] rt_u_plane_intersect_io_result_intersection_z_mant;
  wire  rt_u_plane_x_int_io_result_vld;
  wire [19:0] rt_u_plane_x_int_io_result;
  wire  rt_u_plane_x_int_io_result_ovfl;
  wire  rt_u_plane_z_int_io_result_vld;
  wire [19:0] rt_u_plane_z_int_io_result;
  wire  rt_u_plane_z_int_io_result_ovfl;
  wire  rt_u_shadow_sphere_intersect_io_early_intersects_vld;
  wire  rt_u_shadow_sphere_intersect_io_early_intersects;
  wire  rt_u_shadow_sphere_intersect_io_early_normal_vld;
  wire  rt_u_shadow_sphere_intersect_io_early_normal_x_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_early_normal_x_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_early_normal_x_mant;
  wire  rt_u_shadow_sphere_intersect_io_early_normal_y_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_early_normal_y_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_early_normal_y_mant;
  wire  rt_u_shadow_sphere_intersect_io_early_normal_z_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_early_normal_z_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_early_normal_z_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_vld;
  wire  rt_u_shadow_sphere_intersect_io_result_intersects;
  wire  rt_u_shadow_sphere_intersect_io_result_t_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_t_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_t_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_intersection_x_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_intersection_x_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_intersection_x_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_intersection_y_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_intersection_y_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_intersection_y_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_intersection_z_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_intersection_z_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_intersection_z_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_normal_x_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_normal_x_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_normal_x_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_normal_y_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_normal_y_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_normal_y_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_normal_z_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_normal_z_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_normal_z_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_x_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_x_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_x_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_y_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_y_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_y_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_z_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_z_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_z_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_x_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_x_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_x_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_y_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_y_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_y_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_z_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_z_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_z_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_ray_origin_x_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_ray_origin_x_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_ray_origin_x_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_ray_origin_y_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_ray_origin_y_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_ray_origin_y_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_ray_origin_z_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_ray_origin_z_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_ray_origin_z_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_ray_direction_x_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_ray_direction_x_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_ray_direction_x_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_ray_direction_y_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_ray_direction_y_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_ray_direction_y_mant;
  wire  rt_u_shadow_sphere_intersect_io_result_ray_direction_z_sign;
  wire [5:0] rt_u_shadow_sphere_intersect_io_result_ray_direction_z_exp;
  wire [12:0] rt_u_shadow_sphere_intersect_io_result_ray_direction_z_mant;
  wire  rt_u_dot_spot_light_io_result_vld;
  wire  rt_u_dot_spot_light_io_result_sign;
  wire [5:0] rt_u_dot_spot_light_io_result_exp;
  wire [12:0] rt_u_dot_spot_light_io_result_mant;
  wire  rt_u_spot_light_int_io_result_vld;
  wire [19:0] rt_u_spot_light_int_io_result;
  wire  rt_u_spot_light_int_io_result_ovfl;
  wire [7:0] _zz_8_;
  wire [7:0] _zz_9_;
  wire [7:0] _zz_10_;
  wire [7:0] _zz_11_;
  wire [8:0] _zz_12_;
  wire [9:0] _zz_13_;
  wire [17:0] _zz_14_;
  wire [9:0] _zz_15_;
  wire [17:0] _zz_16_;
  wire [9:0] _zz_17_;
  wire [17:0] _zz_18_;
  wire [7:0] _zz_19_;
  wire [8:0] _zz_20_;
  wire [6:0] _zz_21_;
  wire [8:0] _zz_22_;
  wire [8:0] _zz_23_;
  wire [6:0] _zz_24_;
  wire [8:0] _zz_25_;
  wire [8:0] _zz_26_;
  wire [6:0] _zz_27_;
  wire [8:0] _zz_28_;
  wire [7:0] _zz_29_;
  wire [7:0] _zz_30_;
  wire [7:0] _zz_31_;
  reg  rt_ray_origin_x_sign;
  reg [5:0] rt_ray_origin_x_exp;
  reg [12:0] rt_ray_origin_x_mant;
  reg  rt_ray_origin_y_sign;
  reg [5:0] rt_ray_origin_y_exp;
  reg [12:0] rt_ray_origin_y_mant;
  wire  rt_ray_origin_z_sign;
  wire [5:0] rt_ray_origin_z_exp;
  wire [12:0] rt_ray_origin_z_mant;
  wire  rt_ray_direction_x_sign;
  wire [5:0] rt_ray_direction_x_exp;
  wire [12:0] rt_ray_direction_x_mant;
  wire  rt_ray_direction_y_sign;
  wire [5:0] rt_ray_direction_y_exp;
  wire [12:0] rt_ray_direction_y_mant;
  wire  rt_ray_direction_z_sign;
  wire [5:0] rt_ray_direction_z_exp;
  wire [12:0] rt_ray_direction_z_mant;
  wire  rt_plane_origin_x_sign;
  wire [5:0] rt_plane_origin_x_exp;
  wire [12:0] rt_plane_origin_x_mant;
  wire  rt_plane_origin_y_sign;
  wire [5:0] rt_plane_origin_y_exp;
  wire [12:0] rt_plane_origin_y_mant;
  wire  rt_plane_origin_z_sign;
  wire [5:0] rt_plane_origin_z_exp;
  wire [12:0] rt_plane_origin_z_mant;
  wire  rt_plane_normal_x_sign;
  wire [5:0] rt_plane_normal_x_exp;
  wire [12:0] rt_plane_normal_x_mant;
  wire  rt_plane_normal_y_sign;
  wire [5:0] rt_plane_normal_y_exp;
  wire [12:0] rt_plane_normal_y_mant;
  wire  rt_plane_normal_z_sign;
  wire [5:0] rt_plane_normal_z_exp;
  wire [12:0] rt_plane_normal_z_mant;
  wire  rt_sphere_center_x_sign;
  wire [5:0] rt_sphere_center_x_exp;
  wire [12:0] rt_sphere_center_x_mant;
  wire  rt_sphere_center_y_sign;
  wire [5:0] rt_sphere_center_y_exp;
  wire [12:0] rt_sphere_center_y_mant;
  wire  rt_sphere_center_z_sign;
  wire [5:0] rt_sphere_center_z_exp;
  wire [12:0] rt_sphere_center_z_mant;
  wire  rt_sphere_radius2_sign;
  wire [5:0] rt_sphere_radius2_exp;
  wire [12:0] rt_sphere_radius2_mant;
  wire  rt_shadow_ray_direction_x_sign;
  wire [5:0] rt_shadow_ray_direction_x_exp;
  wire [12:0] rt_shadow_ray_direction_x_mant;
  wire  rt_shadow_ray_direction_y_sign;
  wire [5:0] rt_shadow_ray_direction_y_exp;
  wire [12:0] rt_shadow_ray_direction_y_mant;
  wire  rt_shadow_ray_direction_z_sign;
  wire [5:0] rt_shadow_ray_direction_z_exp;
  wire [12:0] rt_shadow_ray_direction_z_mant;
  reg  rt_sphere_center_x_regNext_sign;
  reg [5:0] rt_sphere_center_x_regNext_exp;
  reg [12:0] rt_sphere_center_x_regNext_mant;
  reg  rt_sphere_center_y_regNext_sign;
  reg [5:0] rt_sphere_center_y_regNext_exp;
  reg [12:0] rt_sphere_center_y_regNext_mant;
  wire  rt_rot_x_sin_sign;
  wire [5:0] rt_rot_x_sin_exp;
  wire [12:0] rt_rot_x_sin_mant;
  wire  rt_rot_x_cos_sign;
  wire [5:0] rt_rot_x_cos_exp;
  wire [12:0] rt_rot_x_cos_mant;
  wire  rt_ray_dir_rot_x_vld;
  wire  rt_ray_dir_rot_x_x_sign;
  wire [5:0] rt_ray_dir_rot_x_x_exp;
  wire [12:0] rt_ray_dir_rot_x_x_mant;
  wire  rt_ray_dir_rot_x_y_sign;
  wire [5:0] rt_ray_dir_rot_x_y_exp;
  wire [12:0] rt_ray_dir_rot_x_y_mant;
  wire  rt_ray_dir_rot_x_z_sign;
  wire [5:0] rt_ray_dir_rot_x_z_exp;
  wire [12:0] rt_ray_dir_rot_x_z_mant;
  wire  rt_rot_y_sin_sign;
  wire [5:0] rt_rot_y_sin_exp;
  wire [12:0] rt_rot_y_sin_mant;
  wire  rt_rot_y_cos_sign;
  wire [5:0] rt_rot_y_cos_exp;
  wire [12:0] rt_rot_y_cos_mant;
  wire  rt_ray_dir_rot_y_vld;
  wire  rt_ray_dir_rot_y_x_sign;
  wire [5:0] rt_ray_dir_rot_y_x_exp;
  wire [12:0] rt_ray_dir_rot_y_x_mant;
  wire  rt_ray_dir_rot_y_y_sign;
  wire [5:0] rt_ray_dir_rot_y_y_exp;
  wire [12:0] rt_ray_dir_rot_y_y_mant;
  wire  rt_ray_dir_rot_y_z_sign;
  wire [5:0] rt_ray_dir_rot_y_z_exp;
  wire [12:0] rt_ray_dir_rot_y_z_mant;
  wire  rt_ray_normalized_vld;
  wire  rt_ray_normalized_origin_x_sign;
  wire [5:0] rt_ray_normalized_origin_x_exp;
  wire [12:0] rt_ray_normalized_origin_x_mant;
  wire  rt_ray_normalized_origin_y_sign;
  wire [5:0] rt_ray_normalized_origin_y_exp;
  wire [12:0] rt_ray_normalized_origin_y_mant;
  wire  rt_ray_normalized_origin_z_sign;
  wire [5:0] rt_ray_normalized_origin_z_exp;
  wire [12:0] rt_ray_normalized_origin_z_mant;
  wire  rt_ray_normalized_direction_x_sign;
  wire [5:0] rt_ray_normalized_direction_x_exp;
  wire [12:0] rt_ray_normalized_direction_x_mant;
  wire  rt_ray_normalized_direction_y_sign;
  wire [5:0] rt_ray_normalized_direction_y_exp;
  wire [12:0] rt_ray_normalized_direction_y_mant;
  wire  rt_ray_normalized_direction_z_sign;
  wire [5:0] rt_ray_normalized_direction_z_exp;
  wire [12:0] rt_ray_normalized_direction_z_mant;
  wire  rt_sphere_result_vld;
  wire  rt_sphere_intersects;
  wire  rt_sphere_reflect_ray_origin_x_sign;
  wire [5:0] rt_sphere_reflect_ray_origin_x_exp;
  wire [12:0] rt_sphere_reflect_ray_origin_x_mant;
  wire  rt_sphere_reflect_ray_origin_y_sign;
  wire [5:0] rt_sphere_reflect_ray_origin_y_exp;
  wire [12:0] rt_sphere_reflect_ray_origin_y_mant;
  wire  rt_sphere_reflect_ray_origin_z_sign;
  wire [5:0] rt_sphere_reflect_ray_origin_z_exp;
  wire [12:0] rt_sphere_reflect_ray_origin_z_mant;
  wire  rt_sphere_reflect_ray_direction_x_sign;
  wire [5:0] rt_sphere_reflect_ray_direction_x_exp;
  wire [12:0] rt_sphere_reflect_ray_direction_x_mant;
  wire  rt_sphere_reflect_ray_direction_y_sign;
  wire [5:0] rt_sphere_reflect_ray_direction_y_exp;
  wire [12:0] rt_sphere_reflect_ray_direction_y_mant;
  wire  rt_sphere_reflect_ray_direction_z_sign;
  wire [5:0] rt_sphere_reflect_ray_direction_z_exp;
  wire [12:0] rt_sphere_reflect_ray_direction_z_mant;
  wire  rt_sphere_ray_origin_x_sign;
  wire [5:0] rt_sphere_ray_origin_x_exp;
  wire [12:0] rt_sphere_ray_origin_x_mant;
  wire  rt_sphere_ray_origin_y_sign;
  wire [5:0] rt_sphere_ray_origin_y_exp;
  wire [12:0] rt_sphere_ray_origin_y_mant;
  wire  rt_sphere_ray_origin_z_sign;
  wire [5:0] rt_sphere_ray_origin_z_exp;
  wire [12:0] rt_sphere_ray_origin_z_mant;
  wire  rt_sphere_ray_direction_x_sign;
  wire [5:0] rt_sphere_ray_direction_x_exp;
  wire [12:0] rt_sphere_ray_direction_x_mant;
  wire  rt_sphere_ray_direction_y_sign;
  wire [5:0] rt_sphere_ray_direction_y_exp;
  wire [12:0] rt_sphere_ray_direction_y_mant;
  wire  rt_sphere_ray_direction_z_sign;
  wire [5:0] rt_sphere_ray_direction_z_exp;
  wire [12:0] rt_sphere_ray_direction_z_mant;
  wire  rt_plane_ray_origin_x_sign;
  wire [5:0] rt_plane_ray_origin_x_exp;
  wire [12:0] rt_plane_ray_origin_x_mant;
  wire  rt_plane_ray_origin_y_sign;
  wire [5:0] rt_plane_ray_origin_y_exp;
  wire [12:0] rt_plane_ray_origin_y_mant;
  wire  rt_plane_ray_origin_z_sign;
  wire [5:0] rt_plane_ray_origin_z_exp;
  wire [12:0] rt_plane_ray_origin_z_mant;
  wire  rt_plane_ray_direction_x_sign;
  wire [5:0] rt_plane_ray_direction_x_exp;
  wire [12:0] rt_plane_ray_direction_x_mant;
  wire  rt_plane_ray_direction_y_sign;
  wire [5:0] rt_plane_ray_direction_y_exp;
  wire [12:0] rt_plane_ray_direction_y_mant;
  wire  rt_plane_ray_direction_z_sign;
  wire [5:0] rt_plane_ray_direction_z_exp;
  wire [12:0] rt_plane_ray_direction_z_mant;
  wire  rt_plane_intersect_vld;
  wire  rt_plane_intersects;
  wire  rt_plane_intersect_t_sign;
  wire [5:0] rt_plane_intersect_t_exp;
  wire [12:0] rt_plane_intersect_t_mant;
  wire  rt_plane_intersection_x_sign;
  wire [5:0] rt_plane_intersection_x_exp;
  wire [12:0] rt_plane_intersection_x_mant;
  wire  rt_plane_intersection_y_sign;
  wire [5:0] rt_plane_intersection_y_exp;
  wire [12:0] rt_plane_intersection_y_mant;
  wire  rt_plane_intersection_z_sign;
  wire [5:0] rt_plane_intersection_z_exp;
  wire [12:0] rt_plane_intersection_z_mant;
  wire  rt_plane_intersection_x_abs_sign;
  wire [5:0] rt_plane_intersection_x_abs_exp;
  wire [12:0] rt_plane_intersection_x_abs_mant;
  wire  rt_plane_intersection_z_abs_sign;
  wire [5:0] rt_plane_intersection_z_abs_exp;
  wire [12:0] rt_plane_intersection_z_abs_mant;
  wire  rt_plane_intersect_vld_delayed;
  wire [19:0] rt_plane_x_int_delayed_1;
  wire  rt_plane_intersection_z_vld_delayed;
  wire [19:0] rt_plane_z_int_delayed_0;
  reg  rt_plane_intersection_x_sign_delayed;
  reg  rt_plane_intersection_z_sign_delayed;
  wire  rt_checker_color;
  reg  rt_plane_intersects_delayed;
  wire  rt_plane_in_bounds;
  wire  rt_plane_intersects_final;
  wire  rt_shadow_ray_origin_x_sign;
  wire [5:0] rt_shadow_ray_origin_x_exp;
  wire [12:0] rt_shadow_ray_origin_x_mant;
  wire  rt_shadow_ray_origin_y_sign;
  wire [5:0] rt_shadow_ray_origin_y_exp;
  wire [12:0] rt_shadow_ray_origin_y_mant;
  wire  rt_shadow_ray_origin_z_sign;
  wire [5:0] rt_shadow_ray_origin_z_exp;
  wire [12:0] rt_shadow_ray_origin_z_mant;
  wire  rt_shadow_ray_direction_x_sign_1_;
  wire [5:0] rt_shadow_ray_direction_x_exp_1_;
  wire [12:0] rt_shadow_ray_direction_x_mant_1_;
  wire  rt_shadow_ray_direction_y_sign_1_;
  wire [5:0] rt_shadow_ray_direction_y_exp_1_;
  wire [12:0] rt_shadow_ray_direction_y_mant_1_;
  wire  rt_shadow_ray_direction_z_sign_1_;
  wire [5:0] rt_shadow_ray_direction_z_exp_1_;
  wire [12:0] rt_shadow_ray_direction_z_mant_1_;
  wire  rt_spot_light_final_delayed_vld;
  wire  rt_shadow_sphere_intersects_delayed_1;
  wire  rt_spot_light_vld;
  wire  rt_spot_light_sign;
  wire [5:0] rt_spot_light_exp;
  wire [12:0] rt_spot_light_mant;
  wire  rt_spot_light_int_vld;
  wire [19:0] rt_spot_light_int_full;
  reg  rt_spot_light_sign_regNext;
  wire [8:0] rt_spot_light_int;
  reg  rt_spot_light_e2_vld;
  reg [8:0] rt_spot_light_e2;
  reg  rt_spot_light_e4_vld;
  reg [8:0] rt_spot_light_e4;
  reg  rt_spot_light_final_vld;
  reg [8:0] rt_spot_light_e8;
  wire [7:0] rt_spot_light_final;
  reg  rt_plane_intersects_final_delay_1;
  reg  rt_plane_intersects_final_delay_2;
  reg  rt_plane_intersects_final_delay_3;
  reg  rt_plane_intersects_final_delay_4;
  reg  rt_plane_intersects_final_delay_5;
  reg  rt_plane_intersects_final_delay_6;
  reg  rt_plane_intersects_final_delay_7;
  reg  rt_plane_intersects_final_delay_8;
  reg  rt_plane_intersects_final_delay_9;
  reg  rt_plane_intersects_final_delay_10;
  reg  rt_plane_intersects_final_delay_11;
  reg  rt_plane_x_int_delayed_2;
  reg  rt_checker_color_delay_1;
  reg  rt_checker_color_delay_2;
  reg  rt_checker_color_delay_3;
  reg  rt_checker_color_delay_4;
  reg  rt_checker_color_delay_5;
  reg  rt_checker_color_delay_6;
  reg  rt_checker_color_delay_7;
  reg  rt_checker_color_delay_8;
  reg  rt_checker_color_delay_9;
  reg  rt_checker_color_delay_10;
  reg  rt_checker_color_delay_11;
  reg  rt_checker_color_delayed;
  reg  rt_sphere_intersects_delay_1;
  reg  rt_sphere_intersects_delay_2;
  reg  rt_sphere_intersects_delay_3;
  reg  rt_sphere_intersects_delay_4;
  reg  rt_sphere_intersects_delay_5;
  reg  rt_sphere_intersects_delay_6;
  reg  rt_sphere_intersects_delay_7;
  reg  rt_sphere_intersects_delay_8;
  reg  rt_sphere_intersects_delay_9;
  reg  rt_sphere_intersects_delay_10;
  reg  rt_sphere_intersects_delay_11;
  reg  rt_sphere_intersects_delay_12;
  reg  rt_sphere_intersects_delay_13;
  reg  rt_sphere_intersects_delay_14;
  reg  rt_sphere_intersects_delay_15;
  reg  rt_sphere_intersects_delay_16;
  reg  rt_sphere_intersects_delay_17;
  reg  rt_sphere_intersects_delay_18;
  reg  rt_sphere_intersects_delay_19;
  reg  rt_sphere_intersects_delay_20;
  reg  rt_sphere_intersects_delay_21;
  reg  rt_sphere_intersects_delay_22;
  reg  rt_sphere_intersects_delay_23;
  reg  rt_sphere_intersects_delay_24;
  reg  rt_sphere_intersects_delay_25;
  reg  rt_sphere_intersects_delay_26;
  reg  rt_sphere_intersects_delay_27;
  reg  rt_sphere_intersects_delay_28;
  reg  rt_sphere_intersects_delay_29;
  reg  rt_sphere_intersects_delay_30;
  reg  rt_sphere_intersects_delayed;
  reg [7:0] rt_spot_light_final_delay_1;
  reg [7:0] rt_spot_light_final_delay_2;
  reg [7:0] rt_spot_light_final_delay_3;
  reg [7:0] rt_spot_light_final_delay_4;
  reg [7:0] rt_spot_light_final_delay_5;
  reg [7:0] rt_spot_light_final_delay_6;
  reg [7:0] rt_spot_light_final_delay_7;
  reg [7:0] rt_spot_light_final_delay_8;
  reg [7:0] rt_spot_light_final_delay_9;
  reg [7:0] rt_spot_light_final_delay_10;
  reg [7:0] rt_spot_light_final_delay_11;
  reg [7:0] rt_spot_light_final_delay_12;
  reg [7:0] rt_spot_light_final_delay_13;
  reg [7:0] rt_spot_light_final_delay_14;
  reg [7:0] rt_spot_light_final_delay_15;
  reg [7:0] rt_spot_light_final_delay_16;
  reg [7:0] rt_spot_light_final_delay_17;
  reg [7:0] rt_spot_light_final_delay_18;
  reg [7:0] rt_spot_light_final_delay_19;
  reg [7:0] rt_spot_light_final_delay_20;
  reg [7:0] rt_spot_light_final_delayed;
  wire [7:0] rt_sky_r;
  wire [7:0] rt_sky_g;
  wire [7:0] rt_sky_b;
  wire [7:0] rt_yellow_r;
  wire [7:0] rt_yellow_g;
  wire [7:0] rt_yellow_b;
  wire [7:0] rt_red_r;
  wire [7:0] rt_red_g;
  wire [7:0] rt_red_b;
  wire [7:0] rt_green_r;
  wire [7:0] rt_green_g;
  wire [7:0] rt_green_b;
  wire [7:0] rt_shadow_red_r;
  wire [7:0] rt_shadow_red_g;
  wire [7:0] rt_shadow_red_b;
  wire [7:0] rt_shadow_green_r;
  wire [7:0] rt_shadow_green_g;
  wire [7:0] rt_shadow_green_b;
  wire [7:0] rt_yellow_red_r;
  wire [7:0] rt_yellow_red_g;
  wire [7:0] rt_yellow_red_b;
  wire [7:0] rt_yellow_green_r;
  wire [7:0] rt_yellow_green_g;
  wire [7:0] rt_yellow_green_b;
  wire [7:0] rt_yellow_shadow_red_r;
  wire [7:0] rt_yellow_shadow_red_g;
  wire [7:0] rt_yellow_shadow_red_b;
  wire [7:0] rt_yellow_shadow_green_r;
  wire [7:0] rt_yellow_shadow_green_g;
  wire [7:0] rt_yellow_shadow_green_b;
  wire [7:0] rt_yellow_sky_r;
  wire [7:0] rt_yellow_sky_g;
  wire [7:0] rt_yellow_sky_b;
  reg [7:0] rt_color_r;
  reg [7:0] rt_color_g;
  reg [7:0] rt_color_b;
  reg [7:0] _zz_1_;
  reg [7:0] _zz_2_;
  reg [7:0] _zz_3_;
  wire [8:0] _zz_4_;
  wire [8:0] _zz_5_;
  wire [8:0] _zz_6_;
  assign _zz_8_ = rt_plane_x_int_delayed_1[19 : 12];
  assign _zz_9_ = (8'b00010000);
  assign _zz_10_ = rt_plane_z_int_delayed_0[19 : 12];
  assign _zz_11_ = (8'b00011100);
  assign _zz_12_ = rt_spot_light_int_full[12 : 4];
  assign _zz_13_ = (_zz_14_ >>> 8);
  assign _zz_14_ = (rt_spot_light_int * rt_spot_light_int);
  assign _zz_15_ = (_zz_16_ >>> 8);
  assign _zz_16_ = (rt_spot_light_e2 * rt_spot_light_e2);
  assign _zz_17_ = (_zz_18_ >>> 8);
  assign _zz_18_ = (rt_spot_light_e4 * rt_spot_light_e4);
  assign _zz_19_ = rt_spot_light_e8[7:0];
  assign _zz_20_ = {1'd0, _zz_1_};
  assign _zz_21_ = (rt_spot_light_final_delayed >>> 1);
  assign _zz_22_ = {2'd0, _zz_21_};
  assign _zz_23_ = {1'd0, _zz_2_};
  assign _zz_24_ = (rt_spot_light_final_delayed >>> 1);
  assign _zz_25_ = {2'd0, _zz_24_};
  assign _zz_26_ = {1'd0, _zz_3_};
  assign _zz_27_ = (rt_spot_light_final_delayed >>> 1);
  assign _zz_28_ = {2'd0, _zz_27_};
  assign _zz_29_ = _zz_4_[7:0];
  assign _zz_30_ = _zz_5_[7:0];
  assign _zz_31_ = _zz_6_[7:0];
  CamSweep rt_u_cam_sweep ( 
    .io_pix_x(io_pix_x),
    .io_pix_y(io_pix_y),
    .io_ray_origin_x_sign(rt_u_cam_sweep_io_ray_origin_x_sign),
    .io_ray_origin_x_exp(rt_u_cam_sweep_io_ray_origin_x_exp),
    .io_ray_origin_x_mant(rt_u_cam_sweep_io_ray_origin_x_mant),
    .io_ray_origin_y_sign(rt_u_cam_sweep_io_ray_origin_y_sign),
    .io_ray_origin_y_exp(rt_u_cam_sweep_io_ray_origin_y_exp),
    .io_ray_origin_y_mant(rt_u_cam_sweep_io_ray_origin_y_mant),
    .io_ray_origin_z_sign(rt_u_cam_sweep_io_ray_origin_z_sign),
    .io_ray_origin_z_exp(rt_u_cam_sweep_io_ray_origin_z_exp),
    .io_ray_origin_z_mant(rt_u_cam_sweep_io_ray_origin_z_mant),
    .io_ray_direction_x_sign(rt_u_cam_sweep_io_ray_direction_x_sign),
    .io_ray_direction_x_exp(rt_u_cam_sweep_io_ray_direction_x_exp),
    .io_ray_direction_x_mant(rt_u_cam_sweep_io_ray_direction_x_mant),
    .io_ray_direction_y_sign(rt_u_cam_sweep_io_ray_direction_y_sign),
    .io_ray_direction_y_exp(rt_u_cam_sweep_io_ray_direction_y_exp),
    .io_ray_direction_y_mant(rt_u_cam_sweep_io_ray_direction_y_mant),
    .io_ray_direction_z_sign(rt_u_cam_sweep_io_ray_direction_z_sign),
    .io_ray_direction_z_exp(rt_u_cam_sweep_io_ray_direction_z_exp),
    .io_ray_direction_z_mant(rt_u_cam_sweep_io_ray_direction_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  RotateX rt_u_ray_dir_rot_x ( 
    .io_op_vld(_zz_7_),
    .io_op_x_sign(rt_ray_direction_x_sign),
    .io_op_x_exp(rt_ray_direction_x_exp),
    .io_op_x_mant(rt_ray_direction_x_mant),
    .io_op_y_sign(rt_ray_direction_y_sign),
    .io_op_y_exp(rt_ray_direction_y_exp),
    .io_op_y_mant(rt_ray_direction_y_mant),
    .io_op_z_sign(rt_ray_direction_z_sign),
    .io_op_z_exp(rt_ray_direction_z_exp),
    .io_op_z_mant(rt_ray_direction_z_mant),
    .io_sin_sign(rt_rot_x_sin_sign),
    .io_sin_exp(rt_rot_x_sin_exp),
    .io_sin_mant(rt_rot_x_sin_mant),
    .io_cos_sign(rt_rot_x_cos_sign),
    .io_cos_exp(rt_rot_x_cos_exp),
    .io_cos_mant(rt_rot_x_cos_mant),
    .io_result_vld(rt_u_ray_dir_rot_x_io_result_vld),
    .io_result_x_sign(rt_u_ray_dir_rot_x_io_result_x_sign),
    .io_result_x_exp(rt_u_ray_dir_rot_x_io_result_x_exp),
    .io_result_x_mant(rt_u_ray_dir_rot_x_io_result_x_mant),
    .io_result_y_sign(rt_u_ray_dir_rot_x_io_result_y_sign),
    .io_result_y_exp(rt_u_ray_dir_rot_x_io_result_y_exp),
    .io_result_y_mant(rt_u_ray_dir_rot_x_io_result_y_mant),
    .io_result_z_sign(rt_u_ray_dir_rot_x_io_result_z_sign),
    .io_result_z_exp(rt_u_ray_dir_rot_x_io_result_z_exp),
    .io_result_z_mant(rt_u_ray_dir_rot_x_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  RotateY rt_u_ray_dir_rot_y ( 
    .io_op_vld(rt_ray_dir_rot_x_vld),
    .io_op_x_sign(rt_ray_dir_rot_x_x_sign),
    .io_op_x_exp(rt_ray_dir_rot_x_x_exp),
    .io_op_x_mant(rt_ray_dir_rot_x_x_mant),
    .io_op_y_sign(rt_ray_dir_rot_x_y_sign),
    .io_op_y_exp(rt_ray_dir_rot_x_y_exp),
    .io_op_y_mant(rt_ray_dir_rot_x_y_mant),
    .io_op_z_sign(rt_ray_dir_rot_x_z_sign),
    .io_op_z_exp(rt_ray_dir_rot_x_z_exp),
    .io_op_z_mant(rt_ray_dir_rot_x_z_mant),
    .io_sin_sign(rt_rot_y_sin_sign),
    .io_sin_exp(rt_rot_y_sin_exp),
    .io_sin_mant(rt_rot_y_sin_mant),
    .io_cos_sign(rt_rot_y_cos_sign),
    .io_cos_exp(rt_rot_y_cos_exp),
    .io_cos_mant(rt_rot_y_cos_mant),
    .io_result_vld(rt_u_ray_dir_rot_y_io_result_vld),
    .io_result_x_sign(rt_u_ray_dir_rot_y_io_result_x_sign),
    .io_result_x_exp(rt_u_ray_dir_rot_y_io_result_x_exp),
    .io_result_x_mant(rt_u_ray_dir_rot_y_io_result_x_mant),
    .io_result_y_sign(rt_u_ray_dir_rot_y_io_result_y_sign),
    .io_result_y_exp(rt_u_ray_dir_rot_y_io_result_y_exp),
    .io_result_y_mant(rt_u_ray_dir_rot_y_io_result_y_mant),
    .io_result_z_sign(rt_u_ray_dir_rot_y_io_result_z_sign),
    .io_result_z_exp(rt_u_ray_dir_rot_y_io_result_z_exp),
    .io_result_z_mant(rt_u_ray_dir_rot_y_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  Normalize_2_ rt_u_normalize_ray ( 
    .io_op_vld(rt_ray_dir_rot_y_vld),
    .io_op_x_sign(rt_ray_dir_rot_y_x_sign),
    .io_op_x_exp(rt_ray_dir_rot_y_x_exp),
    .io_op_x_mant(rt_ray_dir_rot_y_x_mant),
    .io_op_y_sign(rt_ray_dir_rot_y_y_sign),
    .io_op_y_exp(rt_ray_dir_rot_y_y_exp),
    .io_op_y_mant(rt_ray_dir_rot_y_y_mant),
    .io_op_z_sign(rt_ray_dir_rot_y_z_sign),
    .io_op_z_exp(rt_ray_dir_rot_y_z_exp),
    .io_op_z_mant(rt_ray_dir_rot_y_z_mant),
    .io_result_vld(rt_u_normalize_ray_io_result_vld),
    .io_result_x_sign(rt_u_normalize_ray_io_result_x_sign),
    .io_result_x_exp(rt_u_normalize_ray_io_result_x_exp),
    .io_result_x_mant(rt_u_normalize_ray_io_result_x_mant),
    .io_result_y_sign(rt_u_normalize_ray_io_result_y_sign),
    .io_result_y_exp(rt_u_normalize_ray_io_result_y_exp),
    .io_result_y_mant(rt_u_normalize_ray_io_result_y_mant),
    .io_result_z_sign(rt_u_normalize_ray_io_result_z_sign),
    .io_result_z_exp(rt_u_normalize_ray_io_result_z_exp),
    .io_result_z_mant(rt_u_normalize_ray_io_result_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  SphereIntersect rt_u_sphere_intersect ( 
    .io_op_vld(rt_ray_normalized_vld),
    .io_sphere_center_x_sign(rt_sphere_center_x_sign),
    .io_sphere_center_x_exp(rt_sphere_center_x_exp),
    .io_sphere_center_x_mant(rt_sphere_center_x_mant),
    .io_sphere_center_y_sign(rt_sphere_center_y_sign),
    .io_sphere_center_y_exp(rt_sphere_center_y_exp),
    .io_sphere_center_y_mant(rt_sphere_center_y_mant),
    .io_sphere_center_z_sign(rt_sphere_center_z_sign),
    .io_sphere_center_z_exp(rt_sphere_center_z_exp),
    .io_sphere_center_z_mant(rt_sphere_center_z_mant),
    .io_sphere_radius2_sign(rt_sphere_radius2_sign),
    .io_sphere_radius2_exp(rt_sphere_radius2_exp),
    .io_sphere_radius2_mant(rt_sphere_radius2_mant),
    .io_ray_origin_x_sign(rt_ray_normalized_origin_x_sign),
    .io_ray_origin_x_exp(rt_ray_normalized_origin_x_exp),
    .io_ray_origin_x_mant(rt_ray_normalized_origin_x_mant),
    .io_ray_origin_y_sign(rt_ray_normalized_origin_y_sign),
    .io_ray_origin_y_exp(rt_ray_normalized_origin_y_exp),
    .io_ray_origin_y_mant(rt_ray_normalized_origin_y_mant),
    .io_ray_origin_z_sign(rt_ray_normalized_origin_z_sign),
    .io_ray_origin_z_exp(rt_ray_normalized_origin_z_exp),
    .io_ray_origin_z_mant(rt_ray_normalized_origin_z_mant),
    .io_ray_direction_x_sign(rt_ray_normalized_direction_x_sign),
    .io_ray_direction_x_exp(rt_ray_normalized_direction_x_exp),
    .io_ray_direction_x_mant(rt_ray_normalized_direction_x_mant),
    .io_ray_direction_y_sign(rt_ray_normalized_direction_y_sign),
    .io_ray_direction_y_exp(rt_ray_normalized_direction_y_exp),
    .io_ray_direction_y_mant(rt_ray_normalized_direction_y_mant),
    .io_ray_direction_z_sign(rt_ray_normalized_direction_z_sign),
    .io_ray_direction_z_exp(rt_ray_normalized_direction_z_exp),
    .io_ray_direction_z_mant(rt_ray_normalized_direction_z_mant),
    .io_early_intersects_vld(rt_u_sphere_intersect_io_early_intersects_vld),
    .io_early_intersects(rt_u_sphere_intersect_io_early_intersects),
    .io_early_normal_vld(rt_u_sphere_intersect_io_early_normal_vld),
    .io_early_normal_x_sign(rt_u_sphere_intersect_io_early_normal_x_sign),
    .io_early_normal_x_exp(rt_u_sphere_intersect_io_early_normal_x_exp),
    .io_early_normal_x_mant(rt_u_sphere_intersect_io_early_normal_x_mant),
    .io_early_normal_y_sign(rt_u_sphere_intersect_io_early_normal_y_sign),
    .io_early_normal_y_exp(rt_u_sphere_intersect_io_early_normal_y_exp),
    .io_early_normal_y_mant(rt_u_sphere_intersect_io_early_normal_y_mant),
    .io_early_normal_z_sign(rt_u_sphere_intersect_io_early_normal_z_sign),
    .io_early_normal_z_exp(rt_u_sphere_intersect_io_early_normal_z_exp),
    .io_early_normal_z_mant(rt_u_sphere_intersect_io_early_normal_z_mant),
    .io_result_vld(rt_u_sphere_intersect_io_result_vld),
    .io_result_intersects(rt_u_sphere_intersect_io_result_intersects),
    .io_result_t_sign(rt_u_sphere_intersect_io_result_t_sign),
    .io_result_t_exp(rt_u_sphere_intersect_io_result_t_exp),
    .io_result_t_mant(rt_u_sphere_intersect_io_result_t_mant),
    .io_result_intersection_x_sign(rt_u_sphere_intersect_io_result_intersection_x_sign),
    .io_result_intersection_x_exp(rt_u_sphere_intersect_io_result_intersection_x_exp),
    .io_result_intersection_x_mant(rt_u_sphere_intersect_io_result_intersection_x_mant),
    .io_result_intersection_y_sign(rt_u_sphere_intersect_io_result_intersection_y_sign),
    .io_result_intersection_y_exp(rt_u_sphere_intersect_io_result_intersection_y_exp),
    .io_result_intersection_y_mant(rt_u_sphere_intersect_io_result_intersection_y_mant),
    .io_result_intersection_z_sign(rt_u_sphere_intersect_io_result_intersection_z_sign),
    .io_result_intersection_z_exp(rt_u_sphere_intersect_io_result_intersection_z_exp),
    .io_result_intersection_z_mant(rt_u_sphere_intersect_io_result_intersection_z_mant),
    .io_result_normal_x_sign(rt_u_sphere_intersect_io_result_normal_x_sign),
    .io_result_normal_x_exp(rt_u_sphere_intersect_io_result_normal_x_exp),
    .io_result_normal_x_mant(rt_u_sphere_intersect_io_result_normal_x_mant),
    .io_result_normal_y_sign(rt_u_sphere_intersect_io_result_normal_y_sign),
    .io_result_normal_y_exp(rt_u_sphere_intersect_io_result_normal_y_exp),
    .io_result_normal_y_mant(rt_u_sphere_intersect_io_result_normal_y_mant),
    .io_result_normal_z_sign(rt_u_sphere_intersect_io_result_normal_z_sign),
    .io_result_normal_z_exp(rt_u_sphere_intersect_io_result_normal_z_exp),
    .io_result_normal_z_mant(rt_u_sphere_intersect_io_result_normal_z_mant),
    .io_result_reflect_ray_origin_x_sign(rt_u_sphere_intersect_io_result_reflect_ray_origin_x_sign),
    .io_result_reflect_ray_origin_x_exp(rt_u_sphere_intersect_io_result_reflect_ray_origin_x_exp),
    .io_result_reflect_ray_origin_x_mant(rt_u_sphere_intersect_io_result_reflect_ray_origin_x_mant),
    .io_result_reflect_ray_origin_y_sign(rt_u_sphere_intersect_io_result_reflect_ray_origin_y_sign),
    .io_result_reflect_ray_origin_y_exp(rt_u_sphere_intersect_io_result_reflect_ray_origin_y_exp),
    .io_result_reflect_ray_origin_y_mant(rt_u_sphere_intersect_io_result_reflect_ray_origin_y_mant),
    .io_result_reflect_ray_origin_z_sign(rt_u_sphere_intersect_io_result_reflect_ray_origin_z_sign),
    .io_result_reflect_ray_origin_z_exp(rt_u_sphere_intersect_io_result_reflect_ray_origin_z_exp),
    .io_result_reflect_ray_origin_z_mant(rt_u_sphere_intersect_io_result_reflect_ray_origin_z_mant),
    .io_result_reflect_ray_direction_x_sign(rt_u_sphere_intersect_io_result_reflect_ray_direction_x_sign),
    .io_result_reflect_ray_direction_x_exp(rt_u_sphere_intersect_io_result_reflect_ray_direction_x_exp),
    .io_result_reflect_ray_direction_x_mant(rt_u_sphere_intersect_io_result_reflect_ray_direction_x_mant),
    .io_result_reflect_ray_direction_y_sign(rt_u_sphere_intersect_io_result_reflect_ray_direction_y_sign),
    .io_result_reflect_ray_direction_y_exp(rt_u_sphere_intersect_io_result_reflect_ray_direction_y_exp),
    .io_result_reflect_ray_direction_y_mant(rt_u_sphere_intersect_io_result_reflect_ray_direction_y_mant),
    .io_result_reflect_ray_direction_z_sign(rt_u_sphere_intersect_io_result_reflect_ray_direction_z_sign),
    .io_result_reflect_ray_direction_z_exp(rt_u_sphere_intersect_io_result_reflect_ray_direction_z_exp),
    .io_result_reflect_ray_direction_z_mant(rt_u_sphere_intersect_io_result_reflect_ray_direction_z_mant),
    .io_result_ray_origin_x_sign(rt_u_sphere_intersect_io_result_ray_origin_x_sign),
    .io_result_ray_origin_x_exp(rt_u_sphere_intersect_io_result_ray_origin_x_exp),
    .io_result_ray_origin_x_mant(rt_u_sphere_intersect_io_result_ray_origin_x_mant),
    .io_result_ray_origin_y_sign(rt_u_sphere_intersect_io_result_ray_origin_y_sign),
    .io_result_ray_origin_y_exp(rt_u_sphere_intersect_io_result_ray_origin_y_exp),
    .io_result_ray_origin_y_mant(rt_u_sphere_intersect_io_result_ray_origin_y_mant),
    .io_result_ray_origin_z_sign(rt_u_sphere_intersect_io_result_ray_origin_z_sign),
    .io_result_ray_origin_z_exp(rt_u_sphere_intersect_io_result_ray_origin_z_exp),
    .io_result_ray_origin_z_mant(rt_u_sphere_intersect_io_result_ray_origin_z_mant),
    .io_result_ray_direction_x_sign(rt_u_sphere_intersect_io_result_ray_direction_x_sign),
    .io_result_ray_direction_x_exp(rt_u_sphere_intersect_io_result_ray_direction_x_exp),
    .io_result_ray_direction_x_mant(rt_u_sphere_intersect_io_result_ray_direction_x_mant),
    .io_result_ray_direction_y_sign(rt_u_sphere_intersect_io_result_ray_direction_y_sign),
    .io_result_ray_direction_y_exp(rt_u_sphere_intersect_io_result_ray_direction_y_exp),
    .io_result_ray_direction_y_mant(rt_u_sphere_intersect_io_result_ray_direction_y_mant),
    .io_result_ray_direction_z_sign(rt_u_sphere_intersect_io_result_ray_direction_z_sign),
    .io_result_ray_direction_z_exp(rt_u_sphere_intersect_io_result_ray_direction_z_exp),
    .io_result_ray_direction_z_mant(rt_u_sphere_intersect_io_result_ray_direction_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  PlaneIntersect rt_u_plane_intersect ( 
    .io_op_vld(rt_sphere_result_vld),
    .io_plane_origin_x_sign(rt_plane_origin_x_sign),
    .io_plane_origin_x_exp(rt_plane_origin_x_exp),
    .io_plane_origin_x_mant(rt_plane_origin_x_mant),
    .io_plane_origin_y_sign(rt_plane_origin_y_sign),
    .io_plane_origin_y_exp(rt_plane_origin_y_exp),
    .io_plane_origin_y_mant(rt_plane_origin_y_mant),
    .io_plane_origin_z_sign(rt_plane_origin_z_sign),
    .io_plane_origin_z_exp(rt_plane_origin_z_exp),
    .io_plane_origin_z_mant(rt_plane_origin_z_mant),
    .io_plane_normal_x_sign(rt_plane_normal_x_sign),
    .io_plane_normal_x_exp(rt_plane_normal_x_exp),
    .io_plane_normal_x_mant(rt_plane_normal_x_mant),
    .io_plane_normal_y_sign(rt_plane_normal_y_sign),
    .io_plane_normal_y_exp(rt_plane_normal_y_exp),
    .io_plane_normal_y_mant(rt_plane_normal_y_mant),
    .io_plane_normal_z_sign(rt_plane_normal_z_sign),
    .io_plane_normal_z_exp(rt_plane_normal_z_exp),
    .io_plane_normal_z_mant(rt_plane_normal_z_mant),
    .io_ray_origin_x_sign(rt_plane_ray_origin_x_sign),
    .io_ray_origin_x_exp(rt_plane_ray_origin_x_exp),
    .io_ray_origin_x_mant(rt_plane_ray_origin_x_mant),
    .io_ray_origin_y_sign(rt_plane_ray_origin_y_sign),
    .io_ray_origin_y_exp(rt_plane_ray_origin_y_exp),
    .io_ray_origin_y_mant(rt_plane_ray_origin_y_mant),
    .io_ray_origin_z_sign(rt_plane_ray_origin_z_sign),
    .io_ray_origin_z_exp(rt_plane_ray_origin_z_exp),
    .io_ray_origin_z_mant(rt_plane_ray_origin_z_mant),
    .io_ray_direction_x_sign(rt_plane_ray_direction_x_sign),
    .io_ray_direction_x_exp(rt_plane_ray_direction_x_exp),
    .io_ray_direction_x_mant(rt_plane_ray_direction_x_mant),
    .io_ray_direction_y_sign(rt_plane_ray_direction_y_sign),
    .io_ray_direction_y_exp(rt_plane_ray_direction_y_exp),
    .io_ray_direction_y_mant(rt_plane_ray_direction_y_mant),
    .io_ray_direction_z_sign(rt_plane_ray_direction_z_sign),
    .io_ray_direction_z_exp(rt_plane_ray_direction_z_exp),
    .io_ray_direction_z_mant(rt_plane_ray_direction_z_mant),
    .io_result_vld(rt_u_plane_intersect_io_result_vld),
    .io_result_intersects(rt_u_plane_intersect_io_result_intersects),
    .io_result_t_sign(rt_u_plane_intersect_io_result_t_sign),
    .io_result_t_exp(rt_u_plane_intersect_io_result_t_exp),
    .io_result_t_mant(rt_u_plane_intersect_io_result_t_mant),
    .io_result_intersection_x_sign(rt_u_plane_intersect_io_result_intersection_x_sign),
    .io_result_intersection_x_exp(rt_u_plane_intersect_io_result_intersection_x_exp),
    .io_result_intersection_x_mant(rt_u_plane_intersect_io_result_intersection_x_mant),
    .io_result_intersection_y_sign(rt_u_plane_intersect_io_result_intersection_y_sign),
    .io_result_intersection_y_exp(rt_u_plane_intersect_io_result_intersection_y_exp),
    .io_result_intersection_y_mant(rt_u_plane_intersect_io_result_intersection_y_mant),
    .io_result_intersection_z_sign(rt_u_plane_intersect_io_result_intersection_z_sign),
    .io_result_intersection_z_exp(rt_u_plane_intersect_io_result_intersection_z_exp),
    .io_result_intersection_z_mant(rt_u_plane_intersect_io_result_intersection_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  Fpxx2SInt rt_u_plane_x_int ( 
    .p0_vld(rt_plane_intersect_vld),
    .sign_p0(rt_plane_intersection_x_abs_sign),
    .op_p0_exp(rt_plane_intersection_x_abs_exp),
    .op_p0_mant(rt_plane_intersection_x_abs_mant),
    .io_result_vld(rt_u_plane_x_int_io_result_vld),
    .io_result(rt_u_plane_x_int_io_result),
    .io_result_ovfl(rt_u_plane_x_int_io_result_ovfl),
    .clk(clk),
    .reset(reset) 
  );
  Fpxx2SInt rt_u_plane_z_int ( 
    .p0_vld(rt_plane_intersect_vld),
    .sign_p0(rt_plane_intersection_z_abs_sign),
    .op_p0_exp(rt_plane_intersection_z_abs_exp),
    .op_p0_mant(rt_plane_intersection_z_abs_mant),
    .io_result_vld(rt_u_plane_z_int_io_result_vld),
    .io_result(rt_u_plane_z_int_io_result),
    .io_result_ovfl(rt_u_plane_z_int_io_result_ovfl),
    .clk(clk),
    .reset(reset) 
  );
  SphereIntersect_1_ rt_u_shadow_sphere_intersect ( 
    .io_op_vld(rt_plane_intersect_vld),
    .io_sphere_center_x_sign(rt_sphere_center_x_sign),
    .io_sphere_center_x_exp(rt_sphere_center_x_exp),
    .io_sphere_center_x_mant(rt_sphere_center_x_mant),
    .io_sphere_center_y_sign(rt_sphere_center_y_sign),
    .io_sphere_center_y_exp(rt_sphere_center_y_exp),
    .io_sphere_center_y_mant(rt_sphere_center_y_mant),
    .io_sphere_center_z_sign(rt_sphere_center_z_sign),
    .io_sphere_center_z_exp(rt_sphere_center_z_exp),
    .io_sphere_center_z_mant(rt_sphere_center_z_mant),
    .io_sphere_radius2_sign(rt_sphere_radius2_sign),
    .io_sphere_radius2_exp(rt_sphere_radius2_exp),
    .io_sphere_radius2_mant(rt_sphere_radius2_mant),
    .io_ray_origin_x_sign(rt_shadow_ray_origin_x_sign),
    .io_ray_origin_x_exp(rt_shadow_ray_origin_x_exp),
    .io_ray_origin_x_mant(rt_shadow_ray_origin_x_mant),
    .io_ray_origin_y_sign(rt_shadow_ray_origin_y_sign),
    .io_ray_origin_y_exp(rt_shadow_ray_origin_y_exp),
    .io_ray_origin_y_mant(rt_shadow_ray_origin_y_mant),
    .io_ray_origin_z_sign(rt_shadow_ray_origin_z_sign),
    .io_ray_origin_z_exp(rt_shadow_ray_origin_z_exp),
    .io_ray_origin_z_mant(rt_shadow_ray_origin_z_mant),
    .io_ray_direction_x_sign(rt_shadow_ray_direction_x_sign_1_),
    .io_ray_direction_x_exp(rt_shadow_ray_direction_x_exp_1_),
    .io_ray_direction_x_mant(rt_shadow_ray_direction_x_mant_1_),
    .io_ray_direction_y_sign(rt_shadow_ray_direction_y_sign_1_),
    .io_ray_direction_y_exp(rt_shadow_ray_direction_y_exp_1_),
    .io_ray_direction_y_mant(rt_shadow_ray_direction_y_mant_1_),
    .io_ray_direction_z_sign(rt_shadow_ray_direction_z_sign_1_),
    .io_ray_direction_z_exp(rt_shadow_ray_direction_z_exp_1_),
    .io_ray_direction_z_mant(rt_shadow_ray_direction_z_mant_1_),
    .io_early_intersects_vld(rt_u_shadow_sphere_intersect_io_early_intersects_vld),
    .io_early_intersects(rt_u_shadow_sphere_intersect_io_early_intersects),
    .io_early_normal_vld(rt_u_shadow_sphere_intersect_io_early_normal_vld),
    .io_early_normal_x_sign(rt_u_shadow_sphere_intersect_io_early_normal_x_sign),
    .io_early_normal_x_exp(rt_u_shadow_sphere_intersect_io_early_normal_x_exp),
    .io_early_normal_x_mant(rt_u_shadow_sphere_intersect_io_early_normal_x_mant),
    .io_early_normal_y_sign(rt_u_shadow_sphere_intersect_io_early_normal_y_sign),
    .io_early_normal_y_exp(rt_u_shadow_sphere_intersect_io_early_normal_y_exp),
    .io_early_normal_y_mant(rt_u_shadow_sphere_intersect_io_early_normal_y_mant),
    .io_early_normal_z_sign(rt_u_shadow_sphere_intersect_io_early_normal_z_sign),
    .io_early_normal_z_exp(rt_u_shadow_sphere_intersect_io_early_normal_z_exp),
    .io_early_normal_z_mant(rt_u_shadow_sphere_intersect_io_early_normal_z_mant),
    .io_result_vld(rt_u_shadow_sphere_intersect_io_result_vld),
    .io_result_intersects(rt_u_shadow_sphere_intersect_io_result_intersects),
    .io_result_t_sign(rt_u_shadow_sphere_intersect_io_result_t_sign),
    .io_result_t_exp(rt_u_shadow_sphere_intersect_io_result_t_exp),
    .io_result_t_mant(rt_u_shadow_sphere_intersect_io_result_t_mant),
    .io_result_intersection_x_sign(rt_u_shadow_sphere_intersect_io_result_intersection_x_sign),
    .io_result_intersection_x_exp(rt_u_shadow_sphere_intersect_io_result_intersection_x_exp),
    .io_result_intersection_x_mant(rt_u_shadow_sphere_intersect_io_result_intersection_x_mant),
    .io_result_intersection_y_sign(rt_u_shadow_sphere_intersect_io_result_intersection_y_sign),
    .io_result_intersection_y_exp(rt_u_shadow_sphere_intersect_io_result_intersection_y_exp),
    .io_result_intersection_y_mant(rt_u_shadow_sphere_intersect_io_result_intersection_y_mant),
    .io_result_intersection_z_sign(rt_u_shadow_sphere_intersect_io_result_intersection_z_sign),
    .io_result_intersection_z_exp(rt_u_shadow_sphere_intersect_io_result_intersection_z_exp),
    .io_result_intersection_z_mant(rt_u_shadow_sphere_intersect_io_result_intersection_z_mant),
    .io_result_normal_x_sign(rt_u_shadow_sphere_intersect_io_result_normal_x_sign),
    .io_result_normal_x_exp(rt_u_shadow_sphere_intersect_io_result_normal_x_exp),
    .io_result_normal_x_mant(rt_u_shadow_sphere_intersect_io_result_normal_x_mant),
    .io_result_normal_y_sign(rt_u_shadow_sphere_intersect_io_result_normal_y_sign),
    .io_result_normal_y_exp(rt_u_shadow_sphere_intersect_io_result_normal_y_exp),
    .io_result_normal_y_mant(rt_u_shadow_sphere_intersect_io_result_normal_y_mant),
    .io_result_normal_z_sign(rt_u_shadow_sphere_intersect_io_result_normal_z_sign),
    .io_result_normal_z_exp(rt_u_shadow_sphere_intersect_io_result_normal_z_exp),
    .io_result_normal_z_mant(rt_u_shadow_sphere_intersect_io_result_normal_z_mant),
    .io_result_reflect_ray_origin_x_sign(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_x_sign),
    .io_result_reflect_ray_origin_x_exp(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_x_exp),
    .io_result_reflect_ray_origin_x_mant(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_x_mant),
    .io_result_reflect_ray_origin_y_sign(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_y_sign),
    .io_result_reflect_ray_origin_y_exp(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_y_exp),
    .io_result_reflect_ray_origin_y_mant(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_y_mant),
    .io_result_reflect_ray_origin_z_sign(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_z_sign),
    .io_result_reflect_ray_origin_z_exp(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_z_exp),
    .io_result_reflect_ray_origin_z_mant(rt_u_shadow_sphere_intersect_io_result_reflect_ray_origin_z_mant),
    .io_result_reflect_ray_direction_x_sign(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_x_sign),
    .io_result_reflect_ray_direction_x_exp(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_x_exp),
    .io_result_reflect_ray_direction_x_mant(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_x_mant),
    .io_result_reflect_ray_direction_y_sign(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_y_sign),
    .io_result_reflect_ray_direction_y_exp(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_y_exp),
    .io_result_reflect_ray_direction_y_mant(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_y_mant),
    .io_result_reflect_ray_direction_z_sign(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_z_sign),
    .io_result_reflect_ray_direction_z_exp(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_z_exp),
    .io_result_reflect_ray_direction_z_mant(rt_u_shadow_sphere_intersect_io_result_reflect_ray_direction_z_mant),
    .io_result_ray_origin_x_sign(rt_u_shadow_sphere_intersect_io_result_ray_origin_x_sign),
    .io_result_ray_origin_x_exp(rt_u_shadow_sphere_intersect_io_result_ray_origin_x_exp),
    .io_result_ray_origin_x_mant(rt_u_shadow_sphere_intersect_io_result_ray_origin_x_mant),
    .io_result_ray_origin_y_sign(rt_u_shadow_sphere_intersect_io_result_ray_origin_y_sign),
    .io_result_ray_origin_y_exp(rt_u_shadow_sphere_intersect_io_result_ray_origin_y_exp),
    .io_result_ray_origin_y_mant(rt_u_shadow_sphere_intersect_io_result_ray_origin_y_mant),
    .io_result_ray_origin_z_sign(rt_u_shadow_sphere_intersect_io_result_ray_origin_z_sign),
    .io_result_ray_origin_z_exp(rt_u_shadow_sphere_intersect_io_result_ray_origin_z_exp),
    .io_result_ray_origin_z_mant(rt_u_shadow_sphere_intersect_io_result_ray_origin_z_mant),
    .io_result_ray_direction_x_sign(rt_u_shadow_sphere_intersect_io_result_ray_direction_x_sign),
    .io_result_ray_direction_x_exp(rt_u_shadow_sphere_intersect_io_result_ray_direction_x_exp),
    .io_result_ray_direction_x_mant(rt_u_shadow_sphere_intersect_io_result_ray_direction_x_mant),
    .io_result_ray_direction_y_sign(rt_u_shadow_sphere_intersect_io_result_ray_direction_y_sign),
    .io_result_ray_direction_y_exp(rt_u_shadow_sphere_intersect_io_result_ray_direction_y_exp),
    .io_result_ray_direction_y_mant(rt_u_shadow_sphere_intersect_io_result_ray_direction_y_mant),
    .io_result_ray_direction_z_sign(rt_u_shadow_sphere_intersect_io_result_ray_direction_z_sign),
    .io_result_ray_direction_z_exp(rt_u_shadow_sphere_intersect_io_result_ray_direction_z_exp),
    .io_result_ray_direction_z_mant(rt_u_shadow_sphere_intersect_io_result_ray_direction_z_mant),
    .clk(clk),
    .reset(reset) 
  );
  DotProduct rt_u_dot_spot_light ( 
    .io_op_vld(rt_sphere_result_vld),
    .io_op_a_x_sign(rt_sphere_reflect_ray_direction_x_sign),
    .io_op_a_x_exp(rt_sphere_reflect_ray_direction_x_exp),
    .io_op_a_x_mant(rt_sphere_reflect_ray_direction_x_mant),
    .io_op_a_y_sign(rt_sphere_reflect_ray_direction_y_sign),
    .io_op_a_y_exp(rt_sphere_reflect_ray_direction_y_exp),
    .io_op_a_y_mant(rt_sphere_reflect_ray_direction_y_mant),
    .io_op_a_z_sign(rt_sphere_reflect_ray_direction_z_sign),
    .io_op_a_z_exp(rt_sphere_reflect_ray_direction_z_exp),
    .io_op_a_z_mant(rt_sphere_reflect_ray_direction_z_mant),
    .io_op_b_x_sign(rt_shadow_ray_direction_x_sign),
    .io_op_b_x_exp(rt_shadow_ray_direction_x_exp),
    .io_op_b_x_mant(rt_shadow_ray_direction_x_mant),
    .io_op_b_y_sign(rt_shadow_ray_direction_y_sign),
    .io_op_b_y_exp(rt_shadow_ray_direction_y_exp),
    .io_op_b_y_mant(rt_shadow_ray_direction_y_mant),
    .io_op_b_z_sign(rt_shadow_ray_direction_z_sign),
    .io_op_b_z_exp(rt_shadow_ray_direction_z_exp),
    .io_op_b_z_mant(rt_shadow_ray_direction_z_mant),
    .io_result_vld(rt_u_dot_spot_light_io_result_vld),
    .io_result_sign(rt_u_dot_spot_light_io_result_sign),
    .io_result_exp(rt_u_dot_spot_light_io_result_exp),
    .io_result_mant(rt_u_dot_spot_light_io_result_mant),
    .clk(clk),
    .reset(reset) 
  );
  Fpxx2SInt rt_u_spot_light_int ( 
    .p0_vld(rt_spot_light_vld),
    .sign_p0(rt_spot_light_sign),
    .op_p0_exp(rt_spot_light_exp),
    .op_p0_mant(rt_spot_light_mant),
    .io_result_vld(rt_u_spot_light_int_io_result_vld),
    .io_result(rt_u_spot_light_int_io_result),
    .io_result_ovfl(rt_u_spot_light_int_io_result_ovfl),
    .clk(clk),
    .reset(reset) 
  );
  always @ (*) begin
    rt_ray_origin_x_sign = rt_u_cam_sweep_io_ray_origin_x_sign;
    rt_ray_origin_x_exp = rt_u_cam_sweep_io_ray_origin_x_exp;
    rt_ray_origin_x_mant = rt_u_cam_sweep_io_ray_origin_x_mant;
    rt_ray_origin_y_sign = rt_u_cam_sweep_io_ray_origin_y_sign;
    rt_ray_origin_y_exp = rt_u_cam_sweep_io_ray_origin_y_exp;
    rt_ray_origin_y_mant = rt_u_cam_sweep_io_ray_origin_y_mant;
    if(1'b1)begin
      rt_ray_origin_x_sign = rt_sphere_center_x_regNext_sign;
      rt_ray_origin_x_exp = rt_sphere_center_x_regNext_exp;
      rt_ray_origin_x_mant = rt_sphere_center_x_regNext_mant;
      rt_ray_origin_y_sign = rt_sphere_center_y_regNext_sign;
      rt_ray_origin_y_exp = rt_sphere_center_y_regNext_exp;
      rt_ray_origin_y_mant = rt_sphere_center_y_regNext_mant;
    end
  end

  assign rt_ray_origin_z_sign = rt_u_cam_sweep_io_ray_origin_z_sign;
  assign rt_ray_origin_z_exp = rt_u_cam_sweep_io_ray_origin_z_exp;
  assign rt_ray_origin_z_mant = rt_u_cam_sweep_io_ray_origin_z_mant;
  assign rt_ray_direction_x_sign = rt_u_cam_sweep_io_ray_direction_x_sign;
  assign rt_ray_direction_x_exp = rt_u_cam_sweep_io_ray_direction_x_exp;
  assign rt_ray_direction_x_mant = rt_u_cam_sweep_io_ray_direction_x_mant;
  assign rt_ray_direction_y_sign = rt_u_cam_sweep_io_ray_direction_y_sign;
  assign rt_ray_direction_y_exp = rt_u_cam_sweep_io_ray_direction_y_exp;
  assign rt_ray_direction_y_mant = rt_u_cam_sweep_io_ray_direction_y_mant;
  assign rt_ray_direction_z_sign = rt_u_cam_sweep_io_ray_direction_z_sign;
  assign rt_ray_direction_z_exp = rt_u_cam_sweep_io_ray_direction_z_exp;
  assign rt_ray_direction_z_mant = rt_u_cam_sweep_io_ray_direction_z_mant;
  assign rt_plane_origin_x_sign = 1'b0;
  assign rt_plane_origin_x_exp = (6'b000000);
  assign rt_plane_origin_x_mant = (13'b0000000000000);
  assign rt_plane_origin_y_sign = 1'b0;
  assign rt_plane_origin_y_exp = (6'b000000);
  assign rt_plane_origin_y_mant = (13'b0000000000000);
  assign rt_plane_origin_z_sign = 1'b0;
  assign rt_plane_origin_z_exp = (6'b000000);
  assign rt_plane_origin_z_mant = (13'b0000000000000);
  assign rt_plane_normal_x_sign = 1'b0;
  assign rt_plane_normal_x_exp = (6'b000000);
  assign rt_plane_normal_x_mant = (13'b0000000000000);
  assign rt_plane_normal_y_sign = 1'b0;
  assign rt_plane_normal_y_exp = (6'b011111);
  assign rt_plane_normal_y_mant = (13'b0000000000000);
  assign rt_plane_normal_z_sign = 1'b0;
  assign rt_plane_normal_z_exp = (6'b000000);
  assign rt_plane_normal_z_mant = (13'b0000000000000);
  assign rt_sphere_center_x_sign = 1'b0;
  assign rt_sphere_center_x_exp = (6'b100000);
  assign rt_sphere_center_x_mant = (13'b1000000000000);
  assign rt_sphere_center_y_sign = 1'b0;
  assign rt_sphere_center_y_exp = (6'b100000);
  assign rt_sphere_center_y_mant = (13'b1000000000000);
  assign rt_sphere_center_z_sign = 1'b0;
  assign rt_sphere_center_z_exp = (6'b100010);
  assign rt_sphere_center_z_mant = (13'b0100000000000);
  assign rt_sphere_radius2_sign = 1'b0;
  assign rt_sphere_radius2_exp = (6'b100010);
  assign rt_sphere_radius2_mant = (13'b0010000000000);
  assign rt_shadow_ray_direction_x_sign = 1'b0;
  assign rt_shadow_ray_direction_x_exp = (6'b011101);
  assign rt_shadow_ray_direction_x_mant = (13'b1011111011101);
  assign rt_shadow_ray_direction_y_sign = 1'b0;
  assign rt_shadow_ray_direction_y_exp = (6'b011110);
  assign rt_shadow_ray_direction_y_mant = (13'b1011111011101);
  assign rt_shadow_ray_direction_z_sign = 1'b0;
  assign rt_shadow_ray_direction_z_exp = (6'b011100);
  assign rt_shadow_ray_direction_z_mant = (13'b1011111011101);
  assign rt_rot_x_sin_sign = 1'b0;
  assign rt_rot_x_sin_exp = (6'b011101);
  assign rt_rot_x_sin_mant = (13'b0101100011111);
  assign rt_rot_x_cos_sign = 1'b0;
  assign rt_rot_x_cos_exp = (6'b011110);
  assign rt_rot_x_cos_mant = (13'b1110001000010);
  assign _zz_7_ = 1'b1;
  assign rt_ray_dir_rot_x_vld = rt_u_ray_dir_rot_x_io_result_vld;
  assign rt_ray_dir_rot_x_x_sign = rt_u_ray_dir_rot_x_io_result_x_sign;
  assign rt_ray_dir_rot_x_x_exp = rt_u_ray_dir_rot_x_io_result_x_exp;
  assign rt_ray_dir_rot_x_x_mant = rt_u_ray_dir_rot_x_io_result_x_mant;
  assign rt_ray_dir_rot_x_y_sign = rt_u_ray_dir_rot_x_io_result_y_sign;
  assign rt_ray_dir_rot_x_y_exp = rt_u_ray_dir_rot_x_io_result_y_exp;
  assign rt_ray_dir_rot_x_y_mant = rt_u_ray_dir_rot_x_io_result_y_mant;
  assign rt_ray_dir_rot_x_z_sign = rt_u_ray_dir_rot_x_io_result_z_sign;
  assign rt_ray_dir_rot_x_z_exp = rt_u_ray_dir_rot_x_io_result_z_exp;
  assign rt_ray_dir_rot_x_z_mant = rt_u_ray_dir_rot_x_io_result_z_mant;
  assign rt_rot_y_sin_sign = 1'b0;
  assign rt_rot_y_sin_exp = (6'b011100);
  assign rt_rot_y_sin_mant = (13'b0101111000100);
  assign rt_rot_y_cos_sign = 1'b0;
  assign rt_rot_y_cos_exp = (6'b011110);
  assign rt_rot_y_cos_mant = (13'b1111100001110);
  assign rt_ray_dir_rot_y_vld = rt_u_ray_dir_rot_y_io_result_vld;
  assign rt_ray_dir_rot_y_x_sign = rt_u_ray_dir_rot_y_io_result_x_sign;
  assign rt_ray_dir_rot_y_x_exp = rt_u_ray_dir_rot_y_io_result_x_exp;
  assign rt_ray_dir_rot_y_x_mant = rt_u_ray_dir_rot_y_io_result_x_mant;
  assign rt_ray_dir_rot_y_y_sign = rt_u_ray_dir_rot_y_io_result_y_sign;
  assign rt_ray_dir_rot_y_y_exp = rt_u_ray_dir_rot_y_io_result_y_exp;
  assign rt_ray_dir_rot_y_y_mant = rt_u_ray_dir_rot_y_io_result_y_mant;
  assign rt_ray_dir_rot_y_z_sign = rt_u_ray_dir_rot_y_io_result_z_sign;
  assign rt_ray_dir_rot_y_z_exp = rt_u_ray_dir_rot_y_io_result_z_exp;
  assign rt_ray_dir_rot_y_z_mant = rt_u_ray_dir_rot_y_io_result_z_mant;
  assign rt_ray_normalized_origin_x_sign = rt_ray_origin_x_sign;
  assign rt_ray_normalized_origin_x_exp = rt_ray_origin_x_exp;
  assign rt_ray_normalized_origin_x_mant = rt_ray_origin_x_mant;
  assign rt_ray_normalized_origin_y_sign = rt_ray_origin_y_sign;
  assign rt_ray_normalized_origin_y_exp = rt_ray_origin_y_exp;
  assign rt_ray_normalized_origin_y_mant = rt_ray_origin_y_mant;
  assign rt_ray_normalized_origin_z_sign = rt_ray_origin_z_sign;
  assign rt_ray_normalized_origin_z_exp = rt_ray_origin_z_exp;
  assign rt_ray_normalized_origin_z_mant = rt_ray_origin_z_mant;
  assign rt_ray_normalized_vld = rt_u_normalize_ray_io_result_vld;
  assign rt_ray_normalized_direction_x_sign = rt_u_normalize_ray_io_result_x_sign;
  assign rt_ray_normalized_direction_x_exp = rt_u_normalize_ray_io_result_x_exp;
  assign rt_ray_normalized_direction_x_mant = rt_u_normalize_ray_io_result_x_mant;
  assign rt_ray_normalized_direction_y_sign = rt_u_normalize_ray_io_result_y_sign;
  assign rt_ray_normalized_direction_y_exp = rt_u_normalize_ray_io_result_y_exp;
  assign rt_ray_normalized_direction_y_mant = rt_u_normalize_ray_io_result_y_mant;
  assign rt_ray_normalized_direction_z_sign = rt_u_normalize_ray_io_result_z_sign;
  assign rt_ray_normalized_direction_z_exp = rt_u_normalize_ray_io_result_z_exp;
  assign rt_ray_normalized_direction_z_mant = rt_u_normalize_ray_io_result_z_mant;
  assign rt_sphere_result_vld = rt_u_sphere_intersect_io_result_vld;
  assign rt_sphere_intersects = rt_u_sphere_intersect_io_result_intersects;
  assign rt_sphere_reflect_ray_origin_x_sign = rt_u_sphere_intersect_io_result_reflect_ray_origin_x_sign;
  assign rt_sphere_reflect_ray_origin_x_exp = rt_u_sphere_intersect_io_result_reflect_ray_origin_x_exp;
  assign rt_sphere_reflect_ray_origin_x_mant = rt_u_sphere_intersect_io_result_reflect_ray_origin_x_mant;
  assign rt_sphere_reflect_ray_origin_y_sign = rt_u_sphere_intersect_io_result_reflect_ray_origin_y_sign;
  assign rt_sphere_reflect_ray_origin_y_exp = rt_u_sphere_intersect_io_result_reflect_ray_origin_y_exp;
  assign rt_sphere_reflect_ray_origin_y_mant = rt_u_sphere_intersect_io_result_reflect_ray_origin_y_mant;
  assign rt_sphere_reflect_ray_origin_z_sign = rt_u_sphere_intersect_io_result_reflect_ray_origin_z_sign;
  assign rt_sphere_reflect_ray_origin_z_exp = rt_u_sphere_intersect_io_result_reflect_ray_origin_z_exp;
  assign rt_sphere_reflect_ray_origin_z_mant = rt_u_sphere_intersect_io_result_reflect_ray_origin_z_mant;
  assign rt_sphere_reflect_ray_direction_x_sign = rt_u_sphere_intersect_io_result_reflect_ray_direction_x_sign;
  assign rt_sphere_reflect_ray_direction_x_exp = rt_u_sphere_intersect_io_result_reflect_ray_direction_x_exp;
  assign rt_sphere_reflect_ray_direction_x_mant = rt_u_sphere_intersect_io_result_reflect_ray_direction_x_mant;
  assign rt_sphere_reflect_ray_direction_y_sign = rt_u_sphere_intersect_io_result_reflect_ray_direction_y_sign;
  assign rt_sphere_reflect_ray_direction_y_exp = rt_u_sphere_intersect_io_result_reflect_ray_direction_y_exp;
  assign rt_sphere_reflect_ray_direction_y_mant = rt_u_sphere_intersect_io_result_reflect_ray_direction_y_mant;
  assign rt_sphere_reflect_ray_direction_z_sign = rt_u_sphere_intersect_io_result_reflect_ray_direction_z_sign;
  assign rt_sphere_reflect_ray_direction_z_exp = rt_u_sphere_intersect_io_result_reflect_ray_direction_z_exp;
  assign rt_sphere_reflect_ray_direction_z_mant = rt_u_sphere_intersect_io_result_reflect_ray_direction_z_mant;
  assign rt_sphere_ray_origin_x_sign = rt_u_sphere_intersect_io_result_ray_origin_x_sign;
  assign rt_sphere_ray_origin_x_exp = rt_u_sphere_intersect_io_result_ray_origin_x_exp;
  assign rt_sphere_ray_origin_x_mant = rt_u_sphere_intersect_io_result_ray_origin_x_mant;
  assign rt_sphere_ray_origin_y_sign = rt_u_sphere_intersect_io_result_ray_origin_y_sign;
  assign rt_sphere_ray_origin_y_exp = rt_u_sphere_intersect_io_result_ray_origin_y_exp;
  assign rt_sphere_ray_origin_y_mant = rt_u_sphere_intersect_io_result_ray_origin_y_mant;
  assign rt_sphere_ray_origin_z_sign = rt_u_sphere_intersect_io_result_ray_origin_z_sign;
  assign rt_sphere_ray_origin_z_exp = rt_u_sphere_intersect_io_result_ray_origin_z_exp;
  assign rt_sphere_ray_origin_z_mant = rt_u_sphere_intersect_io_result_ray_origin_z_mant;
  assign rt_sphere_ray_direction_x_sign = rt_u_sphere_intersect_io_result_ray_direction_x_sign;
  assign rt_sphere_ray_direction_x_exp = rt_u_sphere_intersect_io_result_ray_direction_x_exp;
  assign rt_sphere_ray_direction_x_mant = rt_u_sphere_intersect_io_result_ray_direction_x_mant;
  assign rt_sphere_ray_direction_y_sign = rt_u_sphere_intersect_io_result_ray_direction_y_sign;
  assign rt_sphere_ray_direction_y_exp = rt_u_sphere_intersect_io_result_ray_direction_y_exp;
  assign rt_sphere_ray_direction_y_mant = rt_u_sphere_intersect_io_result_ray_direction_y_mant;
  assign rt_sphere_ray_direction_z_sign = rt_u_sphere_intersect_io_result_ray_direction_z_sign;
  assign rt_sphere_ray_direction_z_exp = rt_u_sphere_intersect_io_result_ray_direction_z_exp;
  assign rt_sphere_ray_direction_z_mant = rt_u_sphere_intersect_io_result_ray_direction_z_mant;
  assign rt_plane_ray_origin_x_sign = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_x_sign : rt_sphere_ray_origin_x_sign);
  assign rt_plane_ray_origin_x_exp = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_x_exp : rt_sphere_ray_origin_x_exp);
  assign rt_plane_ray_origin_x_mant = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_x_mant : rt_sphere_ray_origin_x_mant);
  assign rt_plane_ray_origin_y_sign = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_y_sign : rt_sphere_ray_origin_y_sign);
  assign rt_plane_ray_origin_y_exp = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_y_exp : rt_sphere_ray_origin_y_exp);
  assign rt_plane_ray_origin_y_mant = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_y_mant : rt_sphere_ray_origin_y_mant);
  assign rt_plane_ray_origin_z_sign = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_z_sign : rt_sphere_ray_origin_z_sign);
  assign rt_plane_ray_origin_z_exp = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_z_exp : rt_sphere_ray_origin_z_exp);
  assign rt_plane_ray_origin_z_mant = (rt_sphere_intersects ? rt_sphere_reflect_ray_origin_z_mant : rt_sphere_ray_origin_z_mant);
  assign rt_plane_ray_direction_x_sign = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_x_sign : rt_sphere_ray_direction_x_sign);
  assign rt_plane_ray_direction_x_exp = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_x_exp : rt_sphere_ray_direction_x_exp);
  assign rt_plane_ray_direction_x_mant = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_x_mant : rt_sphere_ray_direction_x_mant);
  assign rt_plane_ray_direction_y_sign = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_y_sign : rt_sphere_ray_direction_y_sign);
  assign rt_plane_ray_direction_y_exp = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_y_exp : rt_sphere_ray_direction_y_exp);
  assign rt_plane_ray_direction_y_mant = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_y_mant : rt_sphere_ray_direction_y_mant);
  assign rt_plane_ray_direction_z_sign = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_z_sign : rt_sphere_ray_direction_z_sign);
  assign rt_plane_ray_direction_z_exp = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_z_exp : rt_sphere_ray_direction_z_exp);
  assign rt_plane_ray_direction_z_mant = (rt_sphere_intersects ? rt_sphere_reflect_ray_direction_z_mant : rt_sphere_ray_direction_z_mant);
  assign rt_plane_intersect_vld = rt_u_plane_intersect_io_result_vld;
  assign rt_plane_intersects = rt_u_plane_intersect_io_result_intersects;
  assign rt_plane_intersect_t_sign = rt_u_plane_intersect_io_result_t_sign;
  assign rt_plane_intersect_t_exp = rt_u_plane_intersect_io_result_t_exp;
  assign rt_plane_intersect_t_mant = rt_u_plane_intersect_io_result_t_mant;
  assign rt_plane_intersection_x_sign = rt_u_plane_intersect_io_result_intersection_x_sign;
  assign rt_plane_intersection_x_exp = rt_u_plane_intersect_io_result_intersection_x_exp;
  assign rt_plane_intersection_x_mant = rt_u_plane_intersect_io_result_intersection_x_mant;
  assign rt_plane_intersection_y_sign = rt_u_plane_intersect_io_result_intersection_y_sign;
  assign rt_plane_intersection_y_exp = rt_u_plane_intersect_io_result_intersection_y_exp;
  assign rt_plane_intersection_y_mant = rt_u_plane_intersect_io_result_intersection_y_mant;
  assign rt_plane_intersection_z_sign = rt_u_plane_intersect_io_result_intersection_z_sign;
  assign rt_plane_intersection_z_exp = rt_u_plane_intersect_io_result_intersection_z_exp;
  assign rt_plane_intersection_z_mant = rt_u_plane_intersect_io_result_intersection_z_mant;
  assign rt_plane_intersection_x_abs_sign = 1'b0;
  assign rt_plane_intersection_x_abs_exp = rt_plane_intersection_x_exp;
  assign rt_plane_intersection_x_abs_mant = rt_plane_intersection_x_mant;
  assign rt_plane_intersection_z_abs_sign = 1'b0;
  assign rt_plane_intersection_z_abs_exp = rt_plane_intersection_z_exp;
  assign rt_plane_intersection_z_abs_mant = rt_plane_intersection_z_mant;
  assign rt_plane_intersect_vld_delayed = rt_u_plane_x_int_io_result_vld;
  assign rt_plane_x_int_delayed_1 = rt_u_plane_x_int_io_result;
  assign rt_plane_intersection_z_vld_delayed = rt_u_plane_z_int_io_result_vld;
  assign rt_plane_z_int_delayed_0 = rt_u_plane_z_int_io_result;
  assign rt_checker_color = (((rt_plane_x_int_delayed_1[14] ^ rt_plane_z_int_delayed_0[14]) ^ rt_plane_intersection_x_sign_delayed) ^ rt_plane_intersection_z_sign_delayed);
  assign rt_plane_in_bounds = (($signed(_zz_8_) < $signed(_zz_9_)) && ($signed(_zz_10_) < $signed(_zz_11_)));
  assign rt_plane_intersects_final = (rt_plane_in_bounds && rt_plane_intersects_delayed);
  assign rt_shadow_ray_origin_x_sign = rt_plane_intersection_x_sign;
  assign rt_shadow_ray_origin_x_exp = rt_plane_intersection_x_exp;
  assign rt_shadow_ray_origin_x_mant = rt_plane_intersection_x_mant;
  assign rt_shadow_ray_origin_y_sign = rt_plane_intersection_y_sign;
  assign rt_shadow_ray_origin_y_exp = rt_plane_intersection_y_exp;
  assign rt_shadow_ray_origin_y_mant = rt_plane_intersection_y_mant;
  assign rt_shadow_ray_origin_z_sign = rt_plane_intersection_z_sign;
  assign rt_shadow_ray_origin_z_exp = rt_plane_intersection_z_exp;
  assign rt_shadow_ray_origin_z_mant = rt_plane_intersection_z_mant;
  assign rt_shadow_ray_direction_x_sign_1_ = rt_shadow_ray_direction_x_sign;
  assign rt_shadow_ray_direction_x_exp_1_ = rt_shadow_ray_direction_x_exp;
  assign rt_shadow_ray_direction_x_mant_1_ = rt_shadow_ray_direction_x_mant;
  assign rt_shadow_ray_direction_y_sign_1_ = rt_shadow_ray_direction_y_sign;
  assign rt_shadow_ray_direction_y_exp_1_ = rt_shadow_ray_direction_y_exp;
  assign rt_shadow_ray_direction_y_mant_1_ = rt_shadow_ray_direction_y_mant;
  assign rt_shadow_ray_direction_z_sign_1_ = rt_shadow_ray_direction_z_sign;
  assign rt_shadow_ray_direction_z_exp_1_ = rt_shadow_ray_direction_z_exp;
  assign rt_shadow_ray_direction_z_mant_1_ = rt_shadow_ray_direction_z_mant;
  assign rt_spot_light_final_delayed_vld = rt_u_shadow_sphere_intersect_io_early_intersects_vld;
  assign rt_shadow_sphere_intersects_delayed_1 = rt_u_shadow_sphere_intersect_io_early_intersects;
  assign rt_spot_light_vld = rt_u_dot_spot_light_io_result_vld;
  assign rt_spot_light_sign = rt_u_dot_spot_light_io_result_sign;
  assign rt_spot_light_exp = rt_u_dot_spot_light_io_result_exp;
  assign rt_spot_light_mant = rt_u_dot_spot_light_io_result_mant;
  assign rt_spot_light_int_vld = rt_u_spot_light_int_io_result_vld;
  assign rt_spot_light_int_full = rt_u_spot_light_int_io_result;
  assign rt_spot_light_int = (rt_spot_light_sign_regNext ? (9'b000000000) : _zz_12_);
  assign rt_spot_light_final = (rt_spot_light_e8[8] ? (8'b11111111) : _zz_19_);
  assign rt_sky_r = (8'b00000000);
  assign rt_sky_g = (8'b00000000);
  assign rt_sky_b = (8'b11100101);
  assign rt_yellow_r = (8'b11100101);
  assign rt_yellow_g = (8'b11100101);
  assign rt_yellow_b = (8'b00000000);
  assign rt_red_r = (8'b11100101);
  assign rt_red_g = (8'b00000000);
  assign rt_red_b = (8'b00000000);
  assign rt_green_r = (8'b00000000);
  assign rt_green_g = (8'b11100101);
  assign rt_green_b = (8'b00000000);
  assign rt_shadow_red_r = (8'b01110010);
  assign rt_shadow_red_g = (8'b00000000);
  assign rt_shadow_red_b = (8'b00000000);
  assign rt_shadow_green_r = (8'b00000000);
  assign rt_shadow_green_g = (8'b01110010);
  assign rt_shadow_green_b = (8'b00000000);
  assign rt_yellow_red_r = (8'b11100101);
  assign rt_yellow_red_g = (8'b01110010);
  assign rt_yellow_red_b = (8'b00000000);
  assign rt_yellow_green_r = (8'b01110010);
  assign rt_yellow_green_g = (8'b11100101);
  assign rt_yellow_green_b = (8'b00000000);
  assign rt_yellow_shadow_red_r = (8'b10101100);
  assign rt_yellow_shadow_red_g = (8'b01110010);
  assign rt_yellow_shadow_red_b = (8'b00000000);
  assign rt_yellow_shadow_green_r = (8'b01110010);
  assign rt_yellow_shadow_green_g = (8'b10101100);
  assign rt_yellow_shadow_green_b = (8'b01110010);
  assign rt_yellow_sky_r = (8'b01110010);
  assign rt_yellow_sky_g = (8'b01110010);
  assign rt_yellow_sky_b = (8'b11100101);
  always @ (*) begin
    if((rt_sphere_intersects_delayed && (! rt_plane_x_int_delayed_2)))begin
      rt_color_r = rt_yellow_sky_r;
      rt_color_g = rt_yellow_sky_g;
      rt_color_b = rt_yellow_sky_b;
    end else begin
      if((rt_sphere_intersects_delayed && rt_plane_x_int_delayed_2))begin
        if(rt_shadow_sphere_intersects_delayed_1)begin
          rt_color_r = (rt_checker_color_delayed ? rt_yellow_shadow_red_r : rt_yellow_shadow_green_r);
          rt_color_g = (rt_checker_color_delayed ? rt_yellow_shadow_red_g : rt_yellow_shadow_green_g);
          rt_color_b = (rt_checker_color_delayed ? rt_yellow_shadow_red_b : rt_yellow_shadow_green_b);
        end else begin
          rt_color_r = (rt_checker_color_delayed ? rt_yellow_red_r : rt_yellow_green_r);
          rt_color_g = (rt_checker_color_delayed ? rt_yellow_red_g : rt_yellow_green_g);
          rt_color_b = (rt_checker_color_delayed ? rt_yellow_red_b : rt_yellow_green_b);
        end
      end
    end
    if(rt_sphere_intersects_delayed)begin
      rt_color_r = (_zz_4_[8] ? (8'b11111111) : _zz_29_);
      rt_color_g = (_zz_5_[8] ? (8'b11111111) : _zz_30_);
      rt_color_b = (_zz_6_[8] ? (8'b11111111) : _zz_31_);
    end else begin
      if(rt_plane_x_int_delayed_2)begin
        if(rt_shadow_sphere_intersects_delayed_1)begin
          rt_color_r = (rt_checker_color_delayed ? rt_shadow_red_r : rt_shadow_green_r);
          rt_color_g = (rt_checker_color_delayed ? rt_shadow_red_g : rt_shadow_green_g);
          rt_color_b = (rt_checker_color_delayed ? rt_shadow_red_b : rt_shadow_green_b);
        end else begin
          rt_color_r = (rt_checker_color_delayed ? rt_red_r : rt_green_r);
          rt_color_g = (rt_checker_color_delayed ? rt_red_g : rt_green_g);
          rt_color_b = (rt_checker_color_delayed ? rt_red_b : rt_green_b);
        end
      end else begin
        rt_color_r = rt_sky_r;
        rt_color_g = rt_sky_g;
        rt_color_b = rt_sky_b;
      end
    end
  end

  always @ (*) begin
    if((! rt_plane_x_int_delayed_2))begin
      _zz_1_ = rt_yellow_sky_r;
      _zz_2_ = rt_yellow_sky_g;
      _zz_3_ = rt_yellow_sky_b;
    end else begin
      if(rt_shadow_sphere_intersects_delayed_1)begin
        _zz_1_ = (rt_checker_color_delayed ? rt_yellow_shadow_red_r : rt_yellow_shadow_green_r);
        _zz_2_ = (rt_checker_color_delayed ? rt_yellow_shadow_red_g : rt_yellow_shadow_green_g);
        _zz_3_ = (rt_checker_color_delayed ? rt_yellow_shadow_red_b : rt_yellow_shadow_green_b);
      end else begin
        _zz_1_ = (rt_checker_color_delayed ? rt_yellow_red_r : rt_yellow_green_r);
        _zz_2_ = (rt_checker_color_delayed ? rt_yellow_red_g : rt_yellow_green_g);
        _zz_3_ = (rt_checker_color_delayed ? rt_yellow_red_b : rt_yellow_green_b);
      end
    end
  end

  assign _zz_4_ = (_zz_20_ + _zz_22_);
  assign _zz_5_ = (_zz_23_ + _zz_25_);
  assign _zz_6_ = (_zz_26_ + _zz_28_);
  assign io_pixel_out_r = rt_color_r;
  assign io_pixel_out_g = rt_color_g;
  assign io_pixel_out_b = rt_color_b;
  always @ (posedge clk) begin
    rt_sphere_center_x_regNext_sign <= rt_sphere_center_x_sign;
    rt_sphere_center_x_regNext_exp <= rt_sphere_center_x_exp;
    rt_sphere_center_x_regNext_mant <= rt_sphere_center_x_mant;
    rt_sphere_center_y_regNext_sign <= rt_sphere_center_y_sign;
    rt_sphere_center_y_regNext_exp <= rt_sphere_center_y_exp;
    rt_sphere_center_y_regNext_mant <= rt_sphere_center_y_mant;
  end

  always @ (posedge clk) begin
    rt_plane_intersection_x_sign_delayed <= rt_plane_intersection_x_sign;
    rt_plane_intersection_z_sign_delayed <= rt_plane_intersection_z_sign;
    rt_plane_intersects_delayed <= rt_plane_intersects;
    rt_spot_light_sign_regNext <= rt_spot_light_sign;
    rt_spot_light_e2_vld <= rt_spot_light_int_vld;
    rt_spot_light_e2 <= _zz_13_[8:0];
    rt_spot_light_e4_vld <= rt_spot_light_e2_vld;
    rt_spot_light_e4 <= _zz_15_[8:0];
    rt_spot_light_final_vld <= rt_spot_light_e4_vld;
    rt_spot_light_e8 <= _zz_17_[8:0];
    rt_plane_intersects_final_delay_1 <= rt_plane_intersects_final;
    rt_plane_intersects_final_delay_2 <= rt_plane_intersects_final_delay_1;
    rt_plane_intersects_final_delay_3 <= rt_plane_intersects_final_delay_2;
    rt_plane_intersects_final_delay_4 <= rt_plane_intersects_final_delay_3;
    rt_plane_intersects_final_delay_5 <= rt_plane_intersects_final_delay_4;
    rt_plane_intersects_final_delay_6 <= rt_plane_intersects_final_delay_5;
    rt_plane_intersects_final_delay_7 <= rt_plane_intersects_final_delay_6;
    rt_plane_intersects_final_delay_8 <= rt_plane_intersects_final_delay_7;
    rt_plane_intersects_final_delay_9 <= rt_plane_intersects_final_delay_8;
    rt_plane_intersects_final_delay_10 <= rt_plane_intersects_final_delay_9;
    rt_plane_intersects_final_delay_11 <= rt_plane_intersects_final_delay_10;
    rt_plane_x_int_delayed_2 <= rt_plane_intersects_final_delay_11;
    rt_checker_color_delay_1 <= rt_checker_color;
    rt_checker_color_delay_2 <= rt_checker_color_delay_1;
    rt_checker_color_delay_3 <= rt_checker_color_delay_2;
    rt_checker_color_delay_4 <= rt_checker_color_delay_3;
    rt_checker_color_delay_5 <= rt_checker_color_delay_4;
    rt_checker_color_delay_6 <= rt_checker_color_delay_5;
    rt_checker_color_delay_7 <= rt_checker_color_delay_6;
    rt_checker_color_delay_8 <= rt_checker_color_delay_7;
    rt_checker_color_delay_9 <= rt_checker_color_delay_8;
    rt_checker_color_delay_10 <= rt_checker_color_delay_9;
    rt_checker_color_delay_11 <= rt_checker_color_delay_10;
    rt_checker_color_delayed <= rt_checker_color_delay_11;
    rt_sphere_intersects_delay_1 <= rt_sphere_intersects;
    rt_sphere_intersects_delay_2 <= rt_sphere_intersects_delay_1;
    rt_sphere_intersects_delay_3 <= rt_sphere_intersects_delay_2;
    rt_sphere_intersects_delay_4 <= rt_sphere_intersects_delay_3;
    rt_sphere_intersects_delay_5 <= rt_sphere_intersects_delay_4;
    rt_sphere_intersects_delay_6 <= rt_sphere_intersects_delay_5;
    rt_sphere_intersects_delay_7 <= rt_sphere_intersects_delay_6;
    rt_sphere_intersects_delay_8 <= rt_sphere_intersects_delay_7;
    rt_sphere_intersects_delay_9 <= rt_sphere_intersects_delay_8;
    rt_sphere_intersects_delay_10 <= rt_sphere_intersects_delay_9;
    rt_sphere_intersects_delay_11 <= rt_sphere_intersects_delay_10;
    rt_sphere_intersects_delay_12 <= rt_sphere_intersects_delay_11;
    rt_sphere_intersects_delay_13 <= rt_sphere_intersects_delay_12;
    rt_sphere_intersects_delay_14 <= rt_sphere_intersects_delay_13;
    rt_sphere_intersects_delay_15 <= rt_sphere_intersects_delay_14;
    rt_sphere_intersects_delay_16 <= rt_sphere_intersects_delay_15;
    rt_sphere_intersects_delay_17 <= rt_sphere_intersects_delay_16;
    rt_sphere_intersects_delay_18 <= rt_sphere_intersects_delay_17;
    rt_sphere_intersects_delay_19 <= rt_sphere_intersects_delay_18;
    rt_sphere_intersects_delay_20 <= rt_sphere_intersects_delay_19;
    rt_sphere_intersects_delay_21 <= rt_sphere_intersects_delay_20;
    rt_sphere_intersects_delay_22 <= rt_sphere_intersects_delay_21;
    rt_sphere_intersects_delay_23 <= rt_sphere_intersects_delay_22;
    rt_sphere_intersects_delay_24 <= rt_sphere_intersects_delay_23;
    rt_sphere_intersects_delay_25 <= rt_sphere_intersects_delay_24;
    rt_sphere_intersects_delay_26 <= rt_sphere_intersects_delay_25;
    rt_sphere_intersects_delay_27 <= rt_sphere_intersects_delay_26;
    rt_sphere_intersects_delay_28 <= rt_sphere_intersects_delay_27;
    rt_sphere_intersects_delay_29 <= rt_sphere_intersects_delay_28;
    rt_sphere_intersects_delay_30 <= rt_sphere_intersects_delay_29;
    rt_sphere_intersects_delayed <= rt_sphere_intersects_delay_30;
    rt_spot_light_final_delay_1 <= rt_spot_light_final;
    rt_spot_light_final_delay_2 <= rt_spot_light_final_delay_1;
    rt_spot_light_final_delay_3 <= rt_spot_light_final_delay_2;
    rt_spot_light_final_delay_4 <= rt_spot_light_final_delay_3;
    rt_spot_light_final_delay_5 <= rt_spot_light_final_delay_4;
    rt_spot_light_final_delay_6 <= rt_spot_light_final_delay_5;
    rt_spot_light_final_delay_7 <= rt_spot_light_final_delay_6;
    rt_spot_light_final_delay_8 <= rt_spot_light_final_delay_7;
    rt_spot_light_final_delay_9 <= rt_spot_light_final_delay_8;
    rt_spot_light_final_delay_10 <= rt_spot_light_final_delay_9;
    rt_spot_light_final_delay_11 <= rt_spot_light_final_delay_10;
    rt_spot_light_final_delay_12 <= rt_spot_light_final_delay_11;
    rt_spot_light_final_delay_13 <= rt_spot_light_final_delay_12;
    rt_spot_light_final_delay_14 <= rt_spot_light_final_delay_13;
    rt_spot_light_final_delay_15 <= rt_spot_light_final_delay_14;
    rt_spot_light_final_delay_16 <= rt_spot_light_final_delay_15;
    rt_spot_light_final_delay_17 <= rt_spot_light_final_delay_16;
    rt_spot_light_final_delay_18 <= rt_spot_light_final_delay_17;
    rt_spot_light_final_delay_19 <= rt_spot_light_final_delay_18;
    rt_spot_light_final_delay_20 <= rt_spot_light_final_delay_19;
    rt_spot_light_final_delayed <= rt_spot_light_final_delay_20;
  end

endmodule

