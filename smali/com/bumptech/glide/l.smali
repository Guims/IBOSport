.class public final Lcom/bumptech/glide/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/a;


# instance fields
.field public final a:Lcom/bumptech/glide/manager/r;

.field public final synthetic b:Lcom/bumptech/glide/m;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/manager/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/m;

    iput-object p2, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/manager/r;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bumptech/glide/l;->b:Lcom/bumptech/glide/m;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/manager/r;

    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, LZ1/c;

    invoke-interface {v4}, LZ1/c;->j()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, LZ1/c;->h()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, LZ1/c;->clear()V

    iget-boolean v5, v0, Lcom/bumptech/glide/manager/r;->q:Z

    if-nez v5, :cond_1

    invoke-interface {v4}, LZ1/c;->i()V

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-void
.end method
