.class public final LR1/a;
.super Ljava/lang/Object;

# interfaces
.implements LI1/l;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;LI1/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LR1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR1/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LR1/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LR1/a;->a:I

    iput-object p1, p0, LR1/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LR1/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILI1/j;)LK1/D;
    .locals 11

    iget v0, p0, LR1/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    instance-of v0, p1, LR1/y;

    if-eqz v0, :cond_0

    check-cast p1, LR1/y;

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, LR1/y;

    iget-object v1, p0, LR1/a;->c:Ljava/lang/Object;

    check-cast v1, LL1/g;

    invoke-direct {v0, p1, v1}, LR1/y;-><init>(Ljava/io/InputStream;LL1/g;)V

    const/4 p1, 0x1

    move v1, p1

    move-object p1, v0

    :goto_0
    sget-object v2, Ld2/e;->r:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/e;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_1

    new-instance v0, Ld2/e;

    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    :cond_1
    move-object v3, v0

    iput-object p1, v3, Ld2/e;->b:LR1/y;

    new-instance v0, Ld2/k;

    invoke-direct {v0, v3}, Ld2/k;-><init>(Ld2/e;)V

    new-instance v9, LA/j;

    const/16 v4, 0x1a

    invoke-direct {v9, p1, v4, v3}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v10, 0x0

    :try_start_1
    iget-object v4, p0, LR1/a;->b:Ljava/lang/Object;

    check-cast v4, LR1/r;

    new-instance v5, LJ/l;

    iget-object v6, v4, LR1/r;->d:Ljava/util/ArrayList;

    iget-object v7, v4, LR1/r;->c:LL1/g;

    invoke-direct {v5, v0, v6, v7}, LJ/l;-><init>(Ld2/k;Ljava/util/ArrayList;LL1/g;)V

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, LR1/r;->a(LJ/l;IILI1/j;LR1/q;)LR1/e;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v10, v3, Ld2/e;->q:Ljava/io/IOException;

    iput-object v10, v3, Ld2/e;->b:LR1/y;

    monitor-enter v2

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LR1/y;->b()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    move-object p2, v0

    iput-object v10, v3, Ld2/e;->q:Ljava/io/IOException;

    iput-object v10, v3, Ld2/e;->b:LR1/y;

    sget-object p3, Ld2/e;->r:Ljava/util/ArrayDeque;

    monitor-enter p3

    :try_start_4
    invoke-virtual {p3, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {p1}, LR1/y;->b()V

    :cond_3
    throw p2

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    :pswitch_0
    move v6, p2

    move v7, p3

    move-object v8, p4

    check-cast p1, Landroid/net/Uri;

    iget-object p2, p0, LR1/a;->b:Ljava/lang/Object;

    check-cast p2, LT1/c;

    invoke-virtual {p2, p1, v8}, LT1/c;->c(Landroid/net/Uri;LI1/j;)LK1/D;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    check-cast p1, LT1/b;

    invoke-virtual {p1}, LT1/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, LR1/a;->c:Ljava/lang/Object;

    check-cast p2, LL1/b;

    invoke-static {p2, p1, v6, v7}, LR1/t;->a(LL1/b;Landroid/graphics/drawable/Drawable;II)LR1/e;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_1
    move v6, p2

    move v7, p3

    move-object v8, p4

    iget-object p2, p0, LR1/a;->b:Ljava/lang/Object;

    check-cast p2, LI1/l;

    invoke-interface {p2, p1, v6, v7, v8}, LI1/l;->a(Ljava/lang/Object;IILI1/j;)LK1/D;

    move-result-object p1

    iget-object p2, p0, LR1/a;->c:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/Resources;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    new-instance p3, LR1/e;

    invoke-direct {p3, p2, p1}, LR1/e;-><init>(Landroid/content/res/Resources;LK1/D;)V

    move-object p1, p3

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;LI1/j;)Z
    .locals 1

    iget v0, p0, LR1/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    iget-object p1, p0, LR1/a;->b:Ljava/lang/Object;

    check-cast p1, LR1/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    const-string p2, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, LR1/a;->b:Ljava/lang/Object;

    check-cast v0, LI1/l;

    invoke-interface {v0, p1, p2}, LI1/l;->b(Ljava/lang/Object;LI1/j;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
