.class public final Lk5/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public q:I

.field public r:I

.field public s:Lh5/c;

.field public final synthetic t:Lk5/c;


# direct methods
.method public constructor <init>(Lk5/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/b;->t:Lk5/c;

    const/4 v0, -0x1

    iput v0, p0, Lk5/b;->b:I

    iget-object p1, p1, Lk5/c;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lk5/b;->q:I

    iput p1, p0, Lk5/b;->r:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    const-string v2, " is less than minimum 0."

    invoke-static {v1, p1, v2}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lk5/b;->t:Lk5/c;

    iget-object v1, v0, Lk5/c;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lk5/b;->r:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lk5/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk5/b;->s:Lh5/c;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_1

    new-instance v0, Lh5/c;

    iget v2, p0, Lk5/b;->q:I

    invoke-static {v1}, Lk5/f;->K(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lh5/a;-><init>(III)V

    iput-object v0, p0, Lk5/b;->s:Lh5/c;

    iput v5, p0, Lk5/b;->r:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lk5/c;->b:Lk5/o;

    iget v2, p0, Lk5/b;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lk5/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS4/d;

    if-nez v0, :cond_2

    new-instance v0, Lh5/c;

    iget v2, p0, Lk5/b;->q:I

    invoke-static {v1}, Lk5/f;->K(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lh5/a;-><init>(III)V

    iput-object v0, p0, Lk5/b;->s:Lh5/c;

    iput v5, p0, Lk5/b;->r:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, LS4/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, LS4/d;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lk5/b;->q:I

    invoke-static {v2, v1}, LQ5/d;->B(II)Lh5/c;

    move-result-object v2

    iput-object v2, p0, Lk5/b;->s:Lh5/c;

    add-int/2addr v1, v0

    iput v1, p0, Lk5/b;->q:I

    if-nez v0, :cond_3

    move v3, v6

    :cond_3
    add-int/2addr v1, v3

    iput v1, p0, Lk5/b;->r:I

    :goto_0
    iput v6, p0, Lk5/b;->b:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lk5/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lk5/b;->a()V

    :cond_0
    iget v0, p0, Lk5/b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lk5/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lk5/b;->a()V

    :cond_0
    iget v0, p0, Lk5/b;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk5/b;->s:Lh5/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lk5/b;->s:Lh5/c;

    iput v1, p0, Lk5/b;->b:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
