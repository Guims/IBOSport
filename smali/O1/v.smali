.class public final LO1/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/data/e;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final q:LI/b;

.field public r:I

.field public s:Lcom/bumptech/glide/g;

.field public t:Lcom/bumptech/glide/load/data/d;

.field public u:Ljava/util/List;

.field public v:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;LI/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LO1/v;->q:LI/b;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, LO1/v;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, LO1/v;->r:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, LO1/v;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, LO1/v;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, LO1/v;->q:LI/b;

    invoke-interface {v1, v0}, LI/b;->f(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LO1/v;->u:Ljava/util/List;

    iget-object v0, p0, LO1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, LO1/v;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->c()I

    move-result v0

    return v0
.end method

.method public final cancel()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, LO1/v;->v:Z

    iget-object v0, p0, LO1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, LO1/v;->u:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LO1/v;->f()V

    return-void
.end method

.method public final e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V
    .locals 1

    iput-object p1, p0, LO1/v;->s:Lcom/bumptech/glide/g;

    iput-object p2, p0, LO1/v;->t:Lcom/bumptech/glide/load/data/d;

    iget-object p2, p0, LO1/v;->q:LI/b;

    invoke-interface {p2}, LI/b;->p()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, LO1/v;->u:Ljava/util/List;

    iget-object p2, p0, LO1/v;->b:Ljava/util/ArrayList;

    iget v0, p0, LO1/v;->r:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/data/e;

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    iget-boolean p1, p0, LO1/v;->v:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LO1/v;->cancel()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, LO1/v;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LO1/v;->r:I

    iget-object v1, p0, LO1/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, LO1/v;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LO1/v;->r:I

    iget-object v0, p0, LO1/v;->s:Lcom/bumptech/glide/g;

    iget-object v1, p0, LO1/v;->t:Lcom/bumptech/glide/load/data/d;

    invoke-virtual {p0, v0, v1}, LO1/v;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    return-void

    :cond_1
    iget-object v0, p0, LO1/v;->u:Ljava/util/List;

    invoke-static {v0}, Ld2/f;->b(Ljava/lang/Object;)V

    iget-object v0, p0, LO1/v;->t:Lcom/bumptech/glide/load/data/d;

    new-instance v1, LK1/y;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LO1/v;->u:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, LK1/y;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LO1/v;->t:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/d;->n(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, LO1/v;->f()V

    return-void
.end method
