.class public final LK1/e;
.super Ljava/lang/Object;

# interfaces
.implements LK1/h;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:Ljava/util/List;

.field public final q:LK1/i;

.field public final r:LK1/g;

.field public s:I

.field public t:LI1/f;

.field public u:Ljava/util/List;

.field public v:I

.field public volatile w:LO1/q;

.field public x:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;LK1/i;LK1/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LK1/e;->s:I

    iput-object p1, p0, LK1/e;->b:Ljava/util/List;

    iput-object p2, p0, LK1/e;->q:LK1/i;

    iput-object p3, p0, LK1/e;->r:LK1/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, LK1/e;->u:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, LK1/e;->v:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, LK1/e;->w:LO1/q;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v0, p0, LK1/e;->v:I

    iget-object v3, p0, LK1/e;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, LK1/e;->u:Ljava/util/List;

    iget v3, p0, LK1/e;->v:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LK1/e;->v:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO1/r;

    iget-object v3, p0, LK1/e;->x:Ljava/io/File;

    iget-object v4, p0, LK1/e;->q:LK1/i;

    iget v5, v4, LK1/i;->e:I

    iget v6, v4, LK1/i;->f:I

    iget-object v4, v4, LK1/i;->i:LI1/j;

    invoke-interface {v0, v3, v5, v6, v4}, LO1/r;->b(Ljava/lang/Object;IILI1/j;)LO1/q;

    move-result-object v0

    iput-object v0, p0, LK1/e;->w:LO1/q;

    iget-object v0, p0, LK1/e;->w:LO1/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, LK1/e;->q:LK1/i;

    iget-object v3, p0, LK1/e;->w:LO1/q;

    iget-object v3, v3, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, LK1/i;->c(Ljava/lang/Class;)LK1/B;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK1/e;->w:LO1/q;

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    iget-object v2, p0, LK1/e;->q:LK1/i;

    iget-object v2, v2, LK1/i;->o:Lcom/bumptech/glide/g;

    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    move v2, v1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    iget v0, p0, LK1/e;->s:I

    add-int/2addr v0, v1

    iput v0, p0, LK1/e;->s:I

    iget-object v1, p0, LK1/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, LK1/e;->b:Ljava/util/List;

    iget v1, p0, LK1/e;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI1/f;

    new-instance v1, LK1/f;

    iget-object v3, p0, LK1/e;->q:LK1/i;

    iget-object v4, v3, LK1/i;->n:LI1/f;

    invoke-direct {v1, v0, v4}, LK1/f;-><init>(LI1/f;LI1/f;)V

    iget-object v3, v3, LK1/i;->h:LK1/n;

    invoke-virtual {v3}, LK1/n;->a()LM1/a;

    move-result-object v3

    invoke-interface {v3, v1}, LM1/a;->b(LI1/f;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, LK1/e;->x:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, LK1/e;->t:LI1/f;

    iget-object v0, p0, LK1/e;->q:LK1/i;

    iget-object v0, v0, LK1/i;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LK1/e;->u:Ljava/util/List;

    iput v2, p0, LK1/e;->v:I

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, LK1/e;->w:LO1/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, LK1/e;->r:LK1/g;

    iget-object v1, p0, LK1/e;->t:LI1/f;

    iget-object v2, p0, LK1/e;->w:LO1/q;

    iget-object v2, v2, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    const/4 v3, 0x3

    invoke-interface {v0, v1, p1, v2, v3}, LK1/g;->c(LI1/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LK1/e;->r:LK1/g;

    iget-object v1, p0, LK1/e;->t:LI1/f;

    iget-object v2, p0, LK1/e;->w:LO1/q;

    iget-object v3, v2, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    const/4 v4, 0x3

    iget-object v5, p0, LK1/e;->t:LI1/f;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, LK1/g;->b(LI1/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILI1/f;)V

    return-void
.end method
