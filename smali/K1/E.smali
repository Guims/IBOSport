.class public final LK1/E;
.super Ljava/lang/Object;

# interfaces
.implements LK1/h;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:LK1/k;

.field public final q:LK1/i;

.field public r:I

.field public s:I

.field public t:LI1/f;

.field public u:Ljava/util/List;

.field public v:I

.field public volatile w:LO1/q;

.field public x:Ljava/io/File;

.field public y:LK1/F;


# direct methods
.method public constructor <init>(LK1/i;LK1/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LK1/E;->s:I

    iput-object p1, p0, LK1/E;->q:LK1/i;

    iput-object p2, p0, LK1/E;->b:LK1/k;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "Failed to find any load path from "

    iget-object v2, v1, LK1/E;->q:LK1/i;

    invoke-virtual {v2}, LK1/i;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v1, LK1/E;->q:LK1/i;

    iget-object v5, v3, LK1/i;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v5}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    move-result-object v5

    iget-object v6, v3, LK1/i;->d:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, v3, LK1/i;->g:Ljava/lang/Class;

    iget-object v3, v3, LK1/i;->k:Ljava/lang/Class;

    iget-object v8, v5, Lcom/bumptech/glide/i;->h:LY1/c;

    iget-object v9, v8, LY1/c;->q:Ljava/lang/Object;

    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld2/l;

    if-nez v9, :cond_1

    new-instance v9, Ld2/l;

    invoke-direct {v9, v6, v7, v3}, Ld2/l;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iput-object v6, v9, Ld2/l;->a:Ljava/lang/Class;

    iput-object v7, v9, Ld2/l;->b:Ljava/lang/Class;

    iput-object v3, v9, Ld2/l;->c:Ljava/lang/Class;

    :goto_0
    iget-object v11, v8, LY1/c;->r:Ljava/lang/Object;

    check-cast v11, Ln/e;

    monitor-enter v11

    :try_start_0
    iget-object v12, v8, LY1/c;->r:Ljava/lang/Object;

    check-cast v12, Ln/e;

    invoke-virtual {v12, v9, v10}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v8, v8, LY1/c;->q:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v12, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v5, Lcom/bumptech/glide/i;->a:LO1/u;

    monitor-enter v8

    :try_start_1
    iget-object v9, v8, LO1/u;->a:LO1/x;

    invoke-virtual {v9, v6}, LO1/x;->d(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :cond_2
    if-ge v11, v8, :cond_4

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Ljava/lang/Class;

    iget-object v14, v5, Lcom/bumptech/glide/i;->c:LY1/c;

    invoke-virtual {v14, v13, v7}, LY1/c;->I(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_2

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/Class;

    iget-object v10, v5, Lcom/bumptech/glide/i;->f:LC0/d;

    invoke-virtual {v10, v4, v3}, LC0/d;->h(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    iget-object v4, v5, Lcom/bumptech/glide/i;->h:LY1/c;

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v8, v4, LY1/c;->r:Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Ln/e;

    monitor-enter v9

    :try_start_2
    iget-object v4, v4, LY1/c;->r:Ljava/lang/Object;

    check-cast v4, Ln/e;

    new-instance v8, Ld2/l;

    invoke-direct {v8, v6, v7, v3}, Ld2/l;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v8, v5}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    const/16 v17, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-class v2, Ljava/io/File;

    iget-object v3, v1, LK1/E;->q:LK1/i;

    iget-object v3, v3, LK1/i;->k:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LK1/E;->q:LK1/i;

    iget-object v0, v0, LK1/i;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, LK1/E;->q:LK1/i;

    iget-object v0, v0, LK1/i;->k:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    iget-object v0, v1, LK1/E;->u:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    iget v4, v1, LK1/E;->v:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, v1, LK1/E;->w:LO1/q;

    move/from16 v4, v17

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    iget v0, v1, LK1/E;->v:I

    iget-object v2, v1, LK1/E;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v0, v1, LK1/E;->u:Ljava/util/List;

    iget v2, v1, LK1/E;->v:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v1, LK1/E;->v:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO1/r;

    iget-object v2, v1, LK1/E;->x:Ljava/io/File;

    iget-object v5, v1, LK1/E;->q:LK1/i;

    iget v6, v5, LK1/i;->e:I

    iget v7, v5, LK1/i;->f:I

    iget-object v5, v5, LK1/i;->i:LI1/j;

    invoke-interface {v0, v2, v6, v7, v5}, LO1/r;->b(Ljava/lang/Object;IILI1/j;)LO1/q;

    move-result-object v0

    iput-object v0, v1, LK1/E;->w:LO1/q;

    iget-object v0, v1, LK1/E;->w:LO1/q;

    if-eqz v0, :cond_8

    iget-object v0, v1, LK1/E;->q:LK1/i;

    iget-object v2, v1, LK1/E;->w:LO1/q;

    iget-object v2, v2, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, LK1/i;->c(Ljava/lang/Class;)LK1/B;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v1, LK1/E;->w:LO1/q;

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    iget-object v2, v1, LK1/E;->q:LK1/i;

    iget-object v2, v2, LK1/i;->o:Lcom/bumptech/glide/g;

    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    move v4, v3

    goto :goto_4

    :cond_9
    return v4

    :cond_a
    const/4 v0, 0x0

    iget v4, v1, LK1/E;->s:I

    add-int/2addr v4, v3

    iput v4, v1, LK1/E;->s:I

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_c

    iget v4, v1, LK1/E;->r:I

    add-int/2addr v4, v3

    iput v4, v1, LK1/E;->r:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v4, v3, :cond_b

    :goto_5
    return v17

    :cond_b
    move/from16 v3, v17

    iput v3, v1, LK1/E;->s:I

    :cond_c
    iget v3, v1, LK1/E;->r:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, LI1/f;

    iget v3, v1, LK1/E;->s:I

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, v1, LK1/E;->q:LK1/i;

    invoke-virtual {v4, v3}, LK1/i;->e(Ljava/lang/Class;)LI1/n;

    move-result-object v24

    new-instance v18, LK1/F;

    iget-object v4, v1, LK1/E;->q:LK1/i;

    iget-object v5, v4, LK1/i;->c:Lcom/bumptech/glide/e;

    iget-object v5, v5, Lcom/bumptech/glide/e;->a:LL1/g;

    iget-object v6, v4, LK1/i;->n:LI1/f;

    iget v7, v4, LK1/i;->e:I

    iget v8, v4, LK1/i;->f:I

    iget-object v9, v4, LK1/i;->i:LI1/j;

    move-object/from16 v25, v3

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v26, v9

    invoke-direct/range {v18 .. v26}, LK1/F;-><init>(LL1/g;LI1/f;LI1/f;IILI1/n;Ljava/lang/Class;LI1/j;)V

    move-object/from16 v5, v18

    move-object/from16 v3, v20

    iput-object v5, v1, LK1/E;->y:LK1/F;

    iget-object v4, v4, LK1/i;->h:LK1/n;

    invoke-virtual {v4}, LK1/n;->a()LM1/a;

    move-result-object v4

    iget-object v5, v1, LK1/E;->y:LK1/F;

    invoke-interface {v4, v5}, LM1/a;->b(LI1/f;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, LK1/E;->x:Ljava/io/File;

    if-eqz v4, :cond_d

    iput-object v3, v1, LK1/E;->t:LI1/f;

    iget-object v3, v1, LK1/E;->q:LK1/i;

    iget-object v3, v3, LK1/i;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v3}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/i;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, LK1/E;->u:Ljava/util/List;

    const/4 v3, 0x0

    iput v3, v1, LK1/E;->v:I

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    move/from16 v17, v3

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, LK1/E;->w:LO1/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, LK1/E;->b:LK1/k;

    iget-object v1, p0, LK1/E;->y:LK1/F;

    iget-object v2, p0, LK1/E;->w:LO1/q;

    iget-object v2, v2, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, p1, v2, v3}, LK1/k;->c(LI1/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LK1/E;->b:LK1/k;

    iget-object v1, p0, LK1/E;->t:LI1/f;

    iget-object v2, p0, LK1/E;->w:LO1/q;

    iget-object v3, v2, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    const/4 v4, 0x4

    iget-object v5, p0, LK1/E;->y:LK1/F;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, LK1/k;->b(LI1/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILI1/f;)V

    return-void
.end method
