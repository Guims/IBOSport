.class public final synthetic LE1/t;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/x;
.implements LK/r;
.implements LW1/b;
.implements Lio/realm/p;
.implements Ly0/y;


# instance fields
.field public final synthetic b:I

.field public q:I

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, LE1/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, LE1/t;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, LE1/t;->b:I

    sparse-switch p1, :sswitch_data_0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/t;->r:Ljava/lang/Object;

    const/16 p1, 0x64

    iput p1, p0, LE1/t;->q:I

    return-void

    :sswitch_0
    const/16 p1, 0x20

    invoke-direct {p0, p1}, LE1/t;-><init>(I)V

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk0/u;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lk0/u;-><init>(I)V

    iput-object p1, p0, LE1/t;->r:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LE1/t;->b:I

    iput-object p3, p0, LE1/t;->r:Ljava/lang/Object;

    iput p1, p0, LE1/t;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[LG/h;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LE1/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LE1/t;->q:I

    iput-object p2, p0, LE1/t;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsCollectionChangeSet;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, LE1/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/t;->r:Ljava/lang/Object;

    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, LE1/t;->q:I

    return-void
.end method

.method public constructor <init>(Lu2/a;I)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LE1/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lx2/o;->e(Ljava/lang/Object;)V

    iput-object p1, p0, LE1/t;->r:Ljava/lang/Object;

    iput p2, p0, LE1/t;->q:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, LE1/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, LE1/t;->q:I

    return-void
.end method


# virtual methods
.method public a(LK1/D;LI1/j;)LK1/D;
    .locals 3

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, LK1/D;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, LE1/t;->q:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, LK1/D;->a()V

    new-instance p1, LR1/C;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, LR1/C;-><init>([B)V

    return-object p1
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, LE1/t;->q:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(I)Landroid/media/MediaCodecInfo;
    .locals 2

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, LE1/t;->q:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public d()[LJ/q;
    .locals 1

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/OsCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/p;->d()[LJ/q;

    move-result-object v0

    return-object v0
.end method

.method public e()[LJ/q;
    .locals 1

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/OsCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/p;->e()[LJ/q;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public g()[LJ/q;
    .locals 1

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/OsCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/p;->g()[LJ/q;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public i()V
    .locals 3

    iget v0, p0, LE1/t;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/catchup/e;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LD4/x;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LB4/s;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 3

    iget v0, p0, LE1/t;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/catchup/e;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LD4/x;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LB4/s;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()I
    .locals 2

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, LE1/t;->q:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 4

    iget v0, p0, LE1/t;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/catchup/e;

    iget v1, p0, LE1/t;->q:I

    iput v1, v0, Lib/player/pages/catchup/e;->v0:I

    new-instance v1, LB4/o;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, LB4/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lib/player/pages/catchup/e;->Z(Ld5/a;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LD4/x;

    iget v1, p0, LE1/t;->q:I

    iput v1, v0, LD4/x;->s0:I

    new-instance v1, LB4/o;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LB4/o;-><init>(ILjava/lang/Object;)V

    new-instance v2, LB4/a;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, LB4/a;-><init>(Lib/player/base/BaseFragment;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, LD4/x;->a0(LB4/a;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LB4/s;

    iget-object v1, v0, LB4/s;->u0:[I

    const/4 v2, 0x0

    iget v3, p0, LE1/t;->q:I

    aput v3, v1, v2

    new-instance v1, LB4/o;

    invoke-direct {v1, v2, p0}, LB4/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LB4/s;->D0(Ld5/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(J)V
    .locals 3

    iget v0, p0, LE1/t;->q:I

    iget-object v1, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, LE1/t;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LE1/t;->q:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public o([J)V
    .locals 5

    iget v0, p0, LE1/t;->q:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, LE1/t;->r:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, p0, LE1/t;->q:I

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, LE1/t;->q:I

    return-void
.end method

.method public p(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, LE1/t;->q:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", size is "

    invoke-static {v1, p1, v2}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, LE1/t;->q:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q(LI0/r;)J
    .locals 7

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lk0/u;

    iget-object v1, v0, Lk0/u;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3}, LI0/r;->o([BII)V

    iget-object v1, v0, Lk0/u;->a:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v4, 0x80

    move v5, v2

    :goto_0
    and-int v6, v1, v4

    if-nez v6, :cond_1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    not-int v4, v4

    and-int/2addr v1, v4

    iget-object v4, v0, Lk0/u;->a:[B

    invoke-interface {p1, v4, v3, v5}, LI0/r;->o([BII)V

    :goto_1
    if-ge v2, v5, :cond_2

    shl-int/lit8 p1, v1, 0x8

    iget-object v1, v0, Lk0/u;->a:[B

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    goto :goto_1

    :cond_2
    iget p1, p0, LE1/t;->q:I

    add-int/2addr v5, v3

    add-int/2addr v5, p1

    iput v5, p0, LE1/t;->q:I

    int-to-long v0, v1

    return-wide v0
.end method

.method public r(Lcom/google/android/gms/internal/play_billing/r2;)V
    .locals 8

    iget-object v0, p0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, LE1/w;

    iget v1, p0, LE1/t;->q:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v0, LE1/w;->B:Lcom/google/android/gms/internal/play_billing/h;

    if-eqz v4, :cond_4

    iget-object v4, v0, LE1/w;->B:Lcom/google/android/gms/internal/play_billing/h;

    iget-object v5, v0, LE1/w;->z:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    const/4 v6, 0x6

    if-eq v1, v6, :cond_1

    const/4 v6, 0x7

    if-eq v1, v6, :cond_0

    const-string v1, "QUERY_SKU_DETAILS_ASYNC"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v1, "QUERY_PRODUCT_DETAILS_ASYNC"

    goto :goto_0

    :cond_1
    const-string v1, "START_CONNECTION"

    goto :goto_0

    :cond_2
    const-string v1, "ACKNOWLEDGE_PURCHASE"

    goto :goto_0

    :cond_3
    const-string v1, "LAUNCH_BILLING_FLOW"

    :goto_0
    new-instance v6, LE1/u;

    invoke-direct {v6, p1}, LE1/u;-><init>(Lcom/google/android/gms/internal/play_billing/r2;)V

    check-cast v4, Lcom/google/android/gms/internal/play_billing/f;

    invoke-virtual {v4}, LG2/a;->c()Landroid/os/Parcel;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v1, Lcom/google/android/gms/internal/play_billing/e;->a:I

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v4, LG2/a;->c:Landroid/os/IBinder;

    invoke-interface {v1, v2, v7, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_4
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/16 v4, 0x1c

    sget-object v5, LE1/B;->s:LE1/f;

    const/16 v6, 0x6b

    invoke-virtual {v0, v6, v4, v5}, LE1/w;->B(IILE1/f;)V

    const-string v0, "BillingClientTesting"

    const-string v4, "An error occurred while retrieving billing override."

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-boolean v2, p1, Lcom/google/android/gms/internal/play_billing/r2;->d:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/r2;->b:Lcom/google/android/gms/internal/play_billing/t2;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/t2;->q:Lcom/google/android/gms/internal/play_billing/s2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/q2;->u:Lcom/google/android/gms/internal/play_billing/d1;

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/d1;->w(Lcom/google/android/gms/internal/play_billing/q2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/q2;->d(Lcom/google/android/gms/internal/play_billing/q2;)V

    iput-object v3, p1, Lcom/google/android/gms/internal/play_billing/r2;->a:Ljava/io/Serializable;

    iput-object v3, p1, Lcom/google/android/gms/internal/play_billing/r2;->b:Lcom/google/android/gms/internal/play_billing/t2;

    iput-object v3, p1, Lcom/google/android/gms/internal/play_billing/r2;->c:Lcom/google/android/gms/internal/play_billing/u2;

    :cond_5
    :goto_2
    return-void
.end method
