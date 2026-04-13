.class public final LI0/n;
.super Ljava/lang/Object;

# interfaces
.implements LI0/t;


# static fields
.field public static final u:[I

.field public static final v:LA/j;

.field public static final w:LA/j;


# instance fields
.field public b:I

.field public q:Lp3/Y;

.field public r:Z

.field public s:Lx2/f;

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LI0/n;->u:[I

    new-instance v0, LA/j;

    new-instance v1, LA3/b;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LA3/b;-><init>(I)V

    invoke-direct {v0, v1}, LA/j;-><init>(LA3/b;)V

    sput-object v0, LI0/n;->v:LA/j;

    new-instance v0, LA/j;

    new-instance v1, LA3/b;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LA3/b;-><init>(I)V

    invoke-direct {v0, v1}, LA/j;-><init>(LA3/b;)V

    sput-object v0, LI0/n;->w:LA/j;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx2/f;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    iput-object v0, p0, LI0/n;->s:Lx2/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, LI0/n;->r:Z

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/ArrayList;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p1, LL0/a;

    invoke-direct {p1, v2}, LL0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget p1, p0, LI0/n;->b:I

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    new-instance p1, LL0/a;

    invoke-direct {p1, v0}, LL0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    new-instance p1, LM0/a;

    invoke-direct {p1, v2, v2}, LM0/a;-><init>(IB)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    new-instance p1, LL0/a;

    invoke-direct {p1, v1}, LL0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    new-instance p1, LM0/a;

    invoke-direct {p1, v0, v2}, LM0/a;-><init>(IB)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    new-instance p1, LK0/b;

    iget-boolean v1, p0, LI0/n;->r:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, LI0/n;->s:Lx2/f;

    invoke-direct {p1, v0, v1}, LK0/b;-><init>(ILx2/f;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    sget-object p1, LI0/n;->w:LA/j;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, LA/j;->t([Ljava/lang/Object;)LI0/q;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_8
    new-instance p1, LM0/a;

    iget v0, p0, LI0/n;->t:I

    invoke-direct {p1, v0}, LM0/a;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    new-instance p1, Lp1/d;

    invoke-direct {p1}, Lp1/d;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    iget-object p1, p0, LI0/n;->q:Lp3/Y;

    if-nez p1, :cond_1

    sget-object p1, Lp3/H;->q:Lp3/F;

    sget-object p1, Lp3/Y;->t:Lp3/Y;

    iput-object p1, p0, LI0/n;->q:Lp3/Y;

    :cond_1
    new-instance v3, Lo1/I;

    iget-boolean p1, p0, LI0/n;->r:Z

    xor-int/lit8 v5, p1, 0x1

    iget-object v6, p0, LI0/n;->s:Lx2/f;

    new-instance v7, Lk0/z;

    const-wide/16 v0, 0x0

    invoke-direct {v7, v0, v1}, Lk0/z;-><init>(J)V

    new-instance v8, Lo1/g;

    iget-object p1, p0, LI0/n;->q:Lp3/Y;

    invoke-direct {v8, v2, p1}, Lo1/g;-><init>(ILjava/util/List;)V

    const/4 v4, 0x1

    invoke-direct/range {v3 .. v8}, Lo1/I;-><init>(IILf1/k;Lk0/z;Lo1/g;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    new-instance p1, Lo1/E;

    invoke-direct {p1}, Lo1/E;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    new-instance p1, Ld1/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_d
    new-instance p1, Lc1/i;

    iget-object v0, p0, LI0/n;->s:Lx2/f;

    iget-boolean v1, p0, LI0/n;->r:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/16 v1, 0x20

    :goto_1
    invoke-direct {p1, v0, v1}, Lc1/i;-><init>(Lf1/k;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc1/m;

    iget-object v0, p0, LI0/n;->s:Lx2/f;

    iget v1, p0, LI0/n;->b:I

    iget-boolean v3, p0, LI0/n;->r:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    invoke-direct {p1, v0, v1}, Lc1/m;-><init>(Lf1/k;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e
    new-instance p1, Lb1/d;

    invoke-direct {p1, v2}, Lb1/d;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    new-instance p1, La1/d;

    iget-object v0, p0, LI0/n;->s:Lx2/f;

    iget-boolean v3, p0, LI0/n;->r:Z

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    invoke-direct {p1, v0, v1}, La1/d;-><init>(Lf1/k;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    new-instance p1, LO0/b;

    invoke-direct {p1}, LO0/b;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LI0/n;->v:LA/j;

    invoke-virtual {v0, p1}, LA/j;->t([Ljava/lang/Object;)LI0/q;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance p1, LN0/c;

    invoke-direct {p1}, LN0/c;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_12
    new-instance p1, LJ0/a;

    invoke-direct {p1}, LJ0/a;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_13
    new-instance p1, Lo1/e;

    invoke-direct {p1, v2}, Lo1/e;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_14
    new-instance p1, Lo1/c;

    invoke-direct {p1}, Lo1/c;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_15
    new-instance p1, Lo1/a;

    invoke-direct {p1}, Lo1/a;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lx2/f;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, LI0/n;->s:Lx2/f;
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

.method public final declared-synchronized e()[LI0/q;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, LI0/n;->h(Landroid/net/Uri;Ljava/util/Map;)[LI0/q;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final f(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, LI0/n;->r:Z
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

.method public final declared-synchronized h(Landroid/net/Uri;Ljava/util/Map;)[LI0/q;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, LI0/n;->u:[I

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    invoke-virtual {p0, p2, v0}, LI0/n;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v3, :cond_1

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1, v0}, LI0/n;->a(ILjava/util/ArrayList;)V

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    if-eq v4, p2, :cond_2

    if-eq v4, p1, :cond_2

    invoke-virtual {p0, v4, v0}, LI0/n;->a(ILjava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [LI0/q;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LI0/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
