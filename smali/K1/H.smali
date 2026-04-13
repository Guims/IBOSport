.class public final LK1/H;
.super Ljava/lang/Object;

# interfaces
.implements LK1/h;
.implements LK1/g;


# instance fields
.field public final b:LK1/i;

.field public final q:LK1/k;

.field public volatile r:I

.field public volatile s:LK1/e;

.field public volatile t:Ljava/lang/Object;

.field public volatile u:LO1/q;

.field public volatile v:LK1/f;


# direct methods
.method public constructor <init>(LK1/i;LK1/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/H;->b:LK1/i;

    iput-object p2, p0, LK1/H;->q:LK1/k;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    iget-object v0, p0, LK1/H;->t:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LK1/H;->t:Ljava/lang/Object;

    iput-object v1, p0, LK1/H;->t:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, v0}, LK1/H;->d(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x3

    const-string v4, "SourceGenerator"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Failed to properly rewind or write data to cache"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, LK1/H;->s:LK1/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, LK1/H;->s:LK1/e;

    invoke-virtual {v0}, LK1/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v2

    :cond_1
    iput-object v1, p0, LK1/H;->s:LK1/e;

    iput-object v1, p0, LK1/H;->u:LO1/q;

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    iget v1, p0, LK1/H;->r:I

    iget-object v3, p0, LK1/H;->b:LK1/i;

    invoke-virtual {v3}, LK1/i;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v1, p0, LK1/H;->b:LK1/i;

    invoke-virtual {v1}, LK1/i;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, LK1/H;->r:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LK1/H;->r:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO1/q;

    iput-object v1, p0, LK1/H;->u:LO1/q;

    iget-object v1, p0, LK1/H;->u:LO1/q;

    if-eqz v1, :cond_2

    iget-object v1, p0, LK1/H;->b:LK1/i;

    iget-object v1, v1, LK1/i;->p:LK1/m;

    iget-object v3, p0, LK1/H;->u:LO1/q;

    iget-object v3, v3, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v3

    invoke-virtual {v1, v3}, LK1/m;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LK1/H;->b:LK1/i;

    iget-object v3, p0, LK1/H;->u:LO1/q;

    iget-object v3, v3, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, LK1/i;->c(Ljava/lang/Class;)LK1/B;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, LK1/H;->u:LO1/q;

    iget-object v1, p0, LK1/H;->u:LO1/q;

    iget-object v1, v1, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    iget-object v3, p0, LK1/H;->b:LK1/i;

    iget-object v3, v3, LK1/i;->o:Lcom/bumptech/glide/g;

    new-instance v4, LA/j;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-direct {v4, p0, v0, v5, v6}, LA/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    move v0, v2

    goto :goto_1

    :cond_4
    return v0
.end method

.method public final b(LI1/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILI1/f;)V
    .locals 6

    iget-object v0, p0, LK1/H;->q:LK1/k;

    iget-object p4, p0, LK1/H;->u:LO1/q;

    iget-object p4, p4, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p4}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v4

    move-object v5, p1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LK1/k;->b(LI1/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILI1/f;)V

    return-void
.end method

.method public final c(LI1/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V
    .locals 1

    iget-object p4, p0, LK1/H;->q:LK1/k;

    iget-object v0, p0, LK1/H;->u:LO1/q;

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v0

    invoke-virtual {p4, p1, p2, p3, v0}, LK1/k;->c(LI1/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, LK1/H;->u:LO1/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 14

    const-string v0, "SourceGenerator"

    const-string v1, "Attempt to write: "

    const-string v2, "Finished encoding source to cache, key: "

    sget v3, Ld2/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, LK1/H;->b:LK1/i;

    iget-object v6, v6, LK1/i;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v6}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/bumptech/glide/i;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    move-result-object v6

    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, LK1/H;->b:LK1/i;

    invoke-virtual {v8, v7}, LK1/i;->d(Ljava/lang/Object;)LI1/b;

    move-result-object v8

    new-instance v9, LJ/l;

    iget-object v10, p0, LK1/H;->b:LK1/i;

    iget-object v10, v10, LK1/i;->i:LI1/j;

    const/4 v11, 0x2

    invoke-direct {v9, v8, v7, v10, v11}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v7, LK1/f;

    iget-object v10, p0, LK1/H;->u:LO1/q;

    iget-object v10, v10, LO1/q;->a:LI1/f;

    iget-object v12, p0, LK1/H;->b:LK1/i;

    iget-object v13, v12, LK1/i;->n:LI1/f;

    invoke-direct {v7, v10, v13}, LK1/f;-><init>(LI1/f;LI1/f;)V

    iget-object v10, v12, LK1/i;->h:LK1/n;

    invoke-virtual {v10}, LK1/n;->a()LM1/a;

    move-result-object v10

    invoke-interface {v10, v7, v9}, LM1/a;->j(LI1/f;LJ/l;)V

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, ", data: "

    if-eqz v9, :cond_0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", encoder: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ld2/h;->a(J)D

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v10, v7}, LM1/a;->b(LI1/f;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-object v7, p0, LK1/H;->v:LK1/f;

    new-instance p1, LK1/e;

    iget-object v0, p0, LK1/H;->u:LO1/q;

    iget-object v0, v0, LO1/q;->a:LI1/f;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LK1/H;->b:LK1/i;

    invoke-direct {p1, v0, v1, p0}, LK1/e;-><init>(Ljava/util/List;LK1/i;LK1/g;)V

    iput-object p1, p0, LK1/H;->s:LK1/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, LK1/H;->u:LO1/q;

    iget-object p1, p1, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    return v3

    :cond_1
    const/4 v2, 0x3

    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LK1/H;->v:LK1/f;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object p1, v6

    :try_start_3
    iget-object v6, p0, LK1/H;->q:LK1/k;

    iget-object v0, p0, LK1/H;->u:LO1/q;

    iget-object v7, v0, LO1/q;->a:LI1/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->d()Ljava/lang/Object;

    move-result-object v8

    iget-object p1, p0, LK1/H;->u:LO1/q;

    iget-object v9, p1, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    iget-object p1, p0, LK1/H;->u:LO1/q;

    iget-object p1, p1, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v10

    iget-object p1, p0, LK1/H;->u:LO1/q;

    iget-object v11, p1, LO1/q;->a:LI1/f;

    invoke-virtual/range {v6 .. v11}, LK1/k;->b(LI1/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILI1/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v5

    :catchall_1
    move-exception v0

    move-object p1, v0

    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    iget-object v0, p0, LK1/H;->u:LO1/q;

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_3
    throw p1
.end method
