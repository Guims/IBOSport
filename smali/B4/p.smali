.class public final LB4/p;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/x;


# instance fields
.field public final synthetic b:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, LB4/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [J

    iput-object v1, p0, LB4/p;->s:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, LB4/p;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LB4/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lc1/r;

    iput-object p1, p0, LB4/p;->s:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, LB4/p;->r:I

    return-void
.end method

.method public constructor <init>(I[F[FI)V
    .locals 6

    const/4 v0, 0x1

    iput v0, p0, LB4/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB4/p;->q:I

    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->d(Z)V

    iput-object p2, p0, LB4/p;->s:Ljava/lang/Object;

    iput-object p3, p0, LB4/p;->t:Ljava/lang/Object;

    iput p4, p0, LB4/p;->r:I

    return-void
.end method

.method public constructor <init>(LB4/p;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, LB4/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LB4/p;->s:Ljava/lang/Object;

    check-cast v0, [F

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, LB4/p;->q:I

    invoke-static {v0}, Lk0/c;->m([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, LB4/p;->s:Ljava/lang/Object;

    iget-object v0, p1, LB4/p;->t:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Lk0/c;->m([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, LB4/p;->t:Ljava/lang/Object;

    iget p1, p1, LB4/p;->r:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x4

    iput p1, p0, LB4/p;->r:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    iput p1, p0, LB4/p;->r:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    iput p1, p0, LB4/p;->r:I

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lib/player/base/BaseFragment;IILib/player/models/EPGChannel;I)V
    .locals 0

    iput p5, p0, LB4/p;->b:I

    iput-object p1, p0, LB4/p;->t:Ljava/lang/Object;

    iput p2, p0, LB4/p;->q:I

    iput p3, p0, LB4/p;->r:I

    iput-object p4, p0, LB4/p;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll3/m;LJ/l;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LB4/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LB4/p;->s:Ljava/lang/Object;

    iput-object p1, p0, LB4/p;->t:Ljava/lang/Object;

    iget-object p1, p2, LJ/l;->s:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/TypedArray;

    const/16 p2, 0x1c

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, LB4/p;->q:I

    const/16 p2, 0x34

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, LB4/p;->r:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, LB4/p;->r:I

    if-lez v0, :cond_0

    iget v1, p0, LB4/p;->q:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    iget-object v0, p0, LB4/p;->s:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, v1

    cmp-long v0, p2, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, LB4/p;->b()V

    :cond_0
    invoke-virtual {p0}, LB4/p;->c()V

    iget v0, p0, LB4/p;->q:I

    iget v1, p0, LB4/p;->r:I

    add-int/2addr v0, v1

    iget-object v2, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    iget-object v3, p0, LB4/p;->s:Ljava/lang/Object;

    check-cast v3, [J

    aput-wide p2, v3, v0

    aput-object p1, v2, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LB4/p;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, LB4/p;->q:I

    iput v0, p0, LB4/p;->r:I

    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, LB4/p;->r:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v2, v1, [J

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, LB4/p;->q:I

    sub-int/2addr v0, v3

    iget-object v4, p0, LB4/p;->s:Ljava/lang/Object;

    check-cast v4, [J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, LB4/p;->q:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, LB4/p;->q:I

    if-lez v3, :cond_1

    iget-object v4, p0, LB4/p;->s:Ljava/lang/Object;

    check-cast v4, [J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iget v4, p0, LB4/p;->q:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, LB4/p;->s:Ljava/lang/Object;

    iput-object v1, p0, LB4/p;->t:Ljava/lang/Object;

    iput v5, p0, LB4/p;->q:I

    return-void
.end method

.method public d(JZ)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    iget v3, p0, LB4/p;->r:I

    if-lez v3, :cond_1

    iget-object v3, p0, LB4/p;->s:Ljava/lang/Object;

    check-cast v3, [J

    iget v4, p0, LB4/p;->q:I

    aget-wide v4, v3, v4

    sub-long v3, p1, v4

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    if-nez p3, :cond_1

    neg-long v5, v3

    cmp-long v1, v5, v1

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LB4/p;->g()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public declared-synchronized e()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LB4/p;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LB4/p;->g()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized f(J)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, LB4/p;->d(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LB4/p;->r:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v2, p0, LB4/p;->q:I

    aget-object v3, v0, v2

    const/4 v4, 0x0

    aput-object v4, v0, v2

    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, LB4/p;->q:I

    iget v0, p0, LB4/p;->r:I

    sub-int/2addr v0, v1

    iput v0, p0, LB4/p;->r:I

    return-object v3
.end method

.method public declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LB4/p;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 3

    iget v0, p0, LB4/p;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

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
    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 3

    iget v0, p0, LB4/p;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

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
    iget-object v0, p0, LB4/p;->t:Ljava/lang/Object;

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m()V
    .locals 13

    iget v0, p0, LB4/p;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LB4/p;->r:I

    iget-object v6, p0, LB4/p;->s:Ljava/lang/Object;

    check-cast v6, Lib/player/models/EPGChannel;

    iget-object v7, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v7, Lib/player/pages/catchup/e;

    iget v8, p0, LB4/p;->q:I

    if-eqz v8, :cond_5

    if-eq v8, v4, :cond_4

    if-eq v8, v3, :cond_4

    if-eq v8, v2, :cond_3

    if-eq v8, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v6, :cond_1

    sget-object v1, Lib/player/base/n;->u:Ljava/util/ArrayList;

    iget-object v2, v7, Lib/player/pages/catchup/e;->o0:Ljava/util/ArrayList;

    iget v3, v7, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    invoke-virtual {v6}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v3

    xor-int/2addr v3, v4

    new-instance v8, Lib/player/pages/catchup/b;

    invoke-direct {v8, v7, v0, v4}, Lib/player/pages/catchup/b;-><init>(Lib/player/pages/catchup/e;II)V

    iget-object v0, v1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/y;

    new-instance v1, Lib/player/base/helper/y;

    invoke-direct {v1, v5, v2, v3}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    new-instance v2, LA3/d;

    const/16 v3, 0x12

    invoke-direct {v2, v3, v8}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    :cond_1
    invoke-virtual {v6}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, v7, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v0, v0, Lx4/a;->D:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, v7, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v0, v0, Lx4/a;->D:Lib/player/base/view/LiveVerticalGridView;

    iget v1, v7, Lib/player/pages/catchup/e;->w0:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    iget-object v0, v7, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v0, v0, Lx4/a;->D:Lib/player/base/view/LiveVerticalGridView;

    iget v1, v7, Lib/player/pages/catchup/e;->w0:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    goto :goto_0

    :cond_4
    iget-object v0, v7, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v0, v0, Lx4/a;->D:Lib/player/base/view/LiveVerticalGridView;

    iget v1, v7, Lib/player/pages/catchup/e;->w0:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_5
    iput v0, v7, Lib/player/pages/catchup/e;->w0:I

    :goto_0
    invoke-virtual {v7}, Lib/player/pages/catchup/e;->V()V

    return-void

    :pswitch_0
    iget v0, p0, LB4/p;->r:I

    iget-object v6, p0, LB4/p;->s:Ljava/lang/Object;

    check-cast v6, Lib/player/models/EPGChannel;

    iget-object v7, p0, LB4/p;->t:Ljava/lang/Object;

    check-cast v7, LB4/s;

    iget-object v8, v7, LB4/s;->E0:Landroid/os/Handler;

    iget-object v9, v7, LB4/s;->u0:[I

    iget v10, p0, LB4/p;->q:I

    if-eqz v10, :cond_12

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eq v10, v4, :cond_e

    if-eq v10, v3, :cond_b

    if-eq v10, v2, :cond_8

    if-eq v10, v1, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v7, v6, v0}, LB4/s;->X(Lib/player/models/EPGChannel;I)V

    invoke-virtual {v6}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v7, v0}, LB4/s;->z0(Z)V

    invoke-virtual {v6}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :cond_8
    iget-object v0, v7, LB4/s;->o0:Lio/realm/T;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EPGChannel;

    invoke-virtual {v7, v0}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    iget-object v0, v7, LB4/s;->o0:Lio/realm/T;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EPGChannel;

    invoke-virtual {v0}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, LB4/s;->A0:Ljava/lang/String;

    iget-object v0, v7, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v7, LB4/s;->G0:LB4/b;

    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v7, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {v7, v0}, LB4/s;->Y(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v7, v12}, LB4/s;->w0(Ljava/util/List;)V

    :goto_1
    invoke-virtual {v7}, LB4/s;->E0()V

    aget v0, v9, v4

    invoke-virtual {v7, v0}, LB4/s;->U(I)V

    iget-object v0, v7, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, v7, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    goto/16 :goto_4

    :cond_b
    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_2

    :cond_c
    iget-object v0, v7, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    :goto_2
    iget-object v0, v7, LB4/s;->G0:LB4/b;

    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v7, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {v7, v0}, LB4/s;->c0(Ljava/lang/String;)V

    aget v0, v9, v4

    invoke-virtual {v7, v0}, LB4/s;->U(I)V

    iget-object v0, v7, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_d

    iget-boolean v0, v7, LB4/s;->D0:Z

    if-eqz v0, :cond_d

    iget-object v0, v7, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, v7, LB4/s;->F0:LB4/l;

    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, LB4/s;->k0()V

    goto :goto_4

    :cond_e
    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    iget-object v0, v7, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v7, LB4/s;->G0:LB4/b;

    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v7, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {v7, v0}, LB4/s;->Y(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    invoke-virtual {v7, v12}, LB4/s;->w0(Ljava/util/List;)V

    :goto_3
    aget v0, v9, v4

    invoke-virtual {v7, v0}, LB4/s;->U(I)V

    iget-object v0, v7, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_10

    iget-object v0, v7, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v0, v7, LB4/s;->F0:LB4/l;

    invoke-virtual {v8, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, LB4/s;->k0()V

    invoke-virtual {v7}, LB4/s;->E0()V

    invoke-virtual {v7}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v7, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_4

    :cond_11
    iget-object v0, v7, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    goto :goto_4

    :cond_12
    aput v0, v9, v4

    invoke-virtual {v7, v6}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
