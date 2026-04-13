.class public final synthetic Lq0/h;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/n;
.implements Lq2/f;
.implements Lo3/d;
.implements Lu0/p;
.implements LX3/a;
.implements Lz1/k;
.implements Ly3/d;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq0/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([BI)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1}, Landroidx/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lx0/d;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    new-instance v1, Lx0/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not decode image data with BitmapFactory. (data.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", input length = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lz1/j;Lz1/l;)V
    .locals 1

    iget v0, p0, Lq0/h;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Lz1/j;->e()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Lz1/j;->b()V

    return-void

    :pswitch_1
    invoke-interface {p1, p2}, Lz1/j;->f(Lz1/l;)V

    return-void

    :pswitch_2
    invoke-interface {p1, p2}, Lz1/j;->c(Lz1/l;)V

    return-void

    :pswitch_3
    invoke-interface {p1, p2}, Lz1/j;->d(Lz1/l;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lq0/h;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lv0/w;

    invoke-virtual {p1}, Lv0/w;->j()V

    iget-object p1, p1, Lv0/w;->X:Landroidx/media3/exoplayer/source/t0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/t0;->b:Lp3/Y;

    new-instance v0, Landroidx/media3/common/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/media3/common/d;-><init>(I)V

    invoke-static {p1, v0}, Lp3/q;->v(Ljava/util/List;Lo3/d;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, LB0/l;

    iget p1, p1, LB0/l;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lj2/j;->a()LJ/l;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LJ/l;->b0(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lt2/a;->b(I)Lg2/c;

    move-result-object v3

    iput-object v3, v2, LJ/l;->q:Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    :goto_1
    iput-object v3, v2, LJ/l;->s:Ljava/lang/Object;

    invoke-virtual {v2}, LJ/l;->B()Lj2/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(LD5/g;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lq0/h;->b:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Ly3/m;

    sget-object p1, Lz3/j;->b:Lz3/j;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Ly3/m;

    invoke-virtual {p1}, Ly3/m;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Ly3/m;

    invoke-virtual {p1}, Ly3/m;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Ly3/m;

    invoke-virtual {p1}, Ly3/m;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(LX3/b;)V
    .locals 0

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lq0/h;->b:I

    check-cast p1, Lq0/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method
