.class public final Lcom/bumptech/glide/manager/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/a;


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/manager/r;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->a:Lcom/bumptech/glide/manager/r;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    invoke-static {}, Ld2/n;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->a:Lcom/bumptech/glide/manager/r;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/manager/o;->a:Lcom/bumptech/glide/manager/r;

    iget-object v2, v2, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bumptech/glide/manager/a;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/manager/a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
