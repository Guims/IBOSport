.class public final Lv0/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/g0;
.implements LL2/d;
.implements LJ/r;
.implements Lx0/c;
.implements Ly0/m;
.implements Lib/player/base/helper/b;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lv0/e;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lq0/h;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lq0/h;-><init>(I)V

    iput-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    return-void

    :sswitch_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v0, "timeUnit"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LA5/p;

    sget-object v0, Lz5/c;->h:Lz5/c;

    invoke-direct {p1, v0}, LA5/p;-><init>(Lz5/c;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILp0/b;JI)V
    .locals 8

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaCodec;

    iget-object v4, p2, Lp0/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v3, 0x0

    move v2, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(IIJI)V
    .locals 8

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lz4/P;

    const/4 v1, 0x0

    iput v1, v0, Lz4/P;->S0:I

    invoke-virtual {v0}, Lz4/P;->T()V

    return-void
.end method

.method public e(LL2/r;)V
    .locals 1

    invoke-virtual {p1}, LL2/r;->d()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, LL2/r;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast p1, Lm5/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm5/f;->m(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lm5/f;

    invoke-virtual {p1}, LL2/r;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast p1, Lm5/f;

    invoke-static {v0}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Landroid/view/View;LJ/B0;)LJ/B0;
    .locals 5

    iget-object p1, p2, LJ/B0;->a:LJ/y0;

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C:LJ/B0;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C:LJ/B0;

    invoke-virtual {p2}, LJ/B0;->d()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->D:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, LJ/y0;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lw/d;

    iget-object v3, v3, Lw/d;->a:Lw/a;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, LJ/y0;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-object p2
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lz4/P;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public i()V
    .locals 12

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lv0/p;

    iget v1, v0, Lv0/p;->G:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lv0/p;->G:I

    if-lez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lv0/p;->I:[Lv0/w;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lv0/w;->j()V

    iget-object v6, v6, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    iget v6, v6, Landroidx/media3/exoplayer/source/t0;->a:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v5, [Landroidx/media3/common/TrackGroup;

    iget-object v2, v0, Lv0/p;->I:[Lv0/w;

    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lv0/w;->j()V

    iget-object v8, v7, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    iget v8, v8, Landroidx/media3/exoplayer/source/t0;->a:I

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_2

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v7}, Lv0/w;->j()V

    iget-object v11, v7, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    invoke-virtual {v11, v9}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v11

    aput-object v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Landroidx/media3/exoplayer/source/t0;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/t0;-><init>([Landroidx/media3/common/TrackGroup;)V

    iput-object v2, v0, Lv0/p;->H:Landroidx/media3/exoplayer/source/t0;

    iget-object v1, v0, Lv0/p;->F:Landroidx/media3/exoplayer/source/B;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/B;->onPrepared(Landroidx/media3/exoplayer/source/C;)V

    return-void
.end method

.method public j(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lz3/h;

    new-instance v1, Lo/b;

    invoke-direct {v1, p1}, Lo/b;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lo/g;->u:Lcom/bumptech/glide/d;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/bumptech/glide/d;->d(Lo/g;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lo/g;->e(Lo/g;)V

    :cond_0
    return-void
.end method

.method public k(Landroidx/media3/common/Format;)I
    .locals 6

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget v0, Lk0/C;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v5

    goto :goto_1

    :sswitch_0
    const-string v1, "image/png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "image/bmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "image/webp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "image/jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "image/heif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "image/heic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1

    :sswitch_6
    const-string v2, "image/avif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/16 p1, 0x1a

    if-lt v0, p1, :cond_8

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x22

    if-lt v0, p1, :cond_8

    :goto_2
    :pswitch_2
    invoke-static {v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_8
    :goto_3
    invoke-static {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_9
    :goto_4
    invoke-static {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V
    .locals 1

    check-cast p1, Lv0/w;

    iget-object p1, p0, Lv0/f;->b:Ljava/lang/Object;

    check-cast p1, Lv0/p;

    iget-object v0, p1, Lv0/p;->F:Landroidx/media3/exoplayer/source/B;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
