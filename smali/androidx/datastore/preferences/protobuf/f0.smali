.class public final Landroidx/datastore/preferences/protobuf/f0;
.super Landroidx/datastore/preferences/protobuf/h0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/h0;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;J)Z
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/i0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i0;->b(Ljava/lang/Object;J)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i0;->c(Ljava/lang/Object;J)Z

    move-result p1

    :goto_0
    return p1

    :pswitch_0
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/i0;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i0;->b(Ljava/lang/Object;J)Z

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i0;->c(Ljava/lang/Object;J)Z

    move-result p1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;J)D
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;J)F
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;JZ)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/i0;->g:Z

    if-eqz v0, :cond_0

    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->k(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->l(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/i0;->g:Z

    if-eqz v0, :cond_1

    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->k(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->l(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;JB)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/i0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->k(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->l(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/i0;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->k(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i0;->l(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Object;JD)V
    .locals 6

    iget v1, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/h0;->o(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_0
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/h0;->o(Ljava/lang/Object;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Ljava/lang/Object;JF)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/h0;->n(IJLjava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/h0;->n(IJLjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final r()Z
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/f0;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
