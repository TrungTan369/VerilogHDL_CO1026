module compare_4bit(
    input [3:0] a, b,
    output lt, eq, gt
    );
    wire eq_1, eq_2, lt_1, lt_2, gt_1, gt_2;
    wire condition_lt, condition_gt;
    compare_2bit high(.a(a[3:2]), .b(b[3:2]), .lt(lt_1), .eq(eq_1), .gt(gt_1));
    compare_2bit low (.a(a[1:0]), .b(b[1:0]), .lt(lt_2), .eq(eq_2), .gt(gt_2));
    and (condition_lt, eq_1, lt_2);
    and (condition_gt, eq_1, gt_2);
    and (eq, eq_1, eq_2);
    or (lt, lt_1, condition_lt);
    or (gt, gt_1, condition_gt);
endmodule
