.class public final LD5/j;
.super Lz5/a;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LD5/l;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;LD5/l;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LD5/j;->e:I

    iput-object p2, p0, LD5/j;->f:LD5/l;

    iput-object p3, p0, LD5/j;->g:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lz5/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 14

    iget v0, p0, LD5/j;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD5/j;->f:LD5/l;

    iget-object v1, p0, LD5/j;->g:Ljava/lang/Object;

    check-cast v1, LD5/D;

    new-instance v2, Le5/m;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v0, LD5/l;->q:LD5/q;

    iget-object v3, v3, LD5/q;->L:LD5/z;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, LD5/l;->q:LD5/q;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v0, LD5/l;->q:LD5/q;

    iget-object v5, v5, LD5/q;->F:LD5/D;

    new-instance v6, LD5/D;

    invoke-direct {v6}, LD5/D;-><init>()V

    invoke-virtual {v6, v5}, LD5/D;->b(LD5/D;)V

    invoke-virtual {v6, v1}, LD5/D;->b(LD5/D;)V

    iput-object v6, v2, Le5/m;->b:Ljava/lang/Object;

    invoke-virtual {v6}, LD5/D;->a()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v5}, LD5/D;->a()I

    move-result v1

    int-to-long v8, v1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, LD5/l;->q:LD5/q;

    iget-object v1, v1, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, LD5/l;->q:LD5/q;

    iget-object v1, v1, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v10, v5, [LD5/y;

    invoke-interface {v1, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, [LD5/y;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v10, v0, LD5/l;->q:LD5/q;

    iget-object v11, v2, Le5/m;->b:Ljava/lang/Object;

    check-cast v11, LD5/D;

    const-string v12, "<set-?>"

    invoke-static {v11, v12}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v10, LD5/q;->F:LD5/D;

    iget-object v10, v0, LD5/l;->q:LD5/q;

    iget-object v10, v10, LD5/q;->y:Lz5/b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, LD5/l;->q:LD5/q;

    iget-object v12, v12, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " onSettings"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, LD5/j;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v0, v2, v13}, LD5/j;-><init>(Ljava/lang/String;LD5/l;Ljava/lang/Object;I)V

    invoke-virtual {v10, v12, v8, v9}, Lz5/b;->c(Lz5/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, v0, LD5/l;->q:LD5/q;

    iget-object v4, v4, LD5/q;->L:LD5/z;

    iget-object v2, v2, Le5/m;->b:Ljava/lang/Object;

    check-cast v2, LD5/D;

    invoke-virtual {v4, v2}, LD5/z;->a(LD5/D;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v0, v0, LD5/l;->q:LD5/q;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v4, v2}, LD5/q;->a(IILjava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v3

    check-cast v1, [LD5/y;

    if-eqz v1, :cond_4

    array-length v0, v1

    :goto_3
    if-ge v5, v0, :cond_4

    aget-object v2, v1, v5

    monitor-enter v2

    :try_start_5
    iget-wide v3, v2, LD5/y;->d:J

    add-long/2addr v3, v6

    iput-wide v3, v2, LD5/y;->d:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    monitor-exit v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    const-wide/16 v0, -0x1

    return-wide v0

    :goto_4
    :try_start_6
    monitor-exit v4

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    monitor-exit v3

    throw v0

    :pswitch_0
    iget-object v0, p0, LD5/j;->f:LD5/l;

    iget-object v0, v0, LD5/l;->q:LD5/q;

    iget-object v1, v0, LD5/q;->b:LD5/i;

    iget-object v2, p0, LD5/j;->g:Ljava/lang/Object;

    check-cast v2, Le5/m;

    iget-object v2, v2, Le5/m;->b:Ljava/lang/Object;

    check-cast v2, LD5/D;

    invoke-virtual {v1, v0, v2}, LD5/i;->a(LD5/q;LD5/D;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
