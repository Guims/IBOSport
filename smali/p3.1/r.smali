.class public final Lp3/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public q:I

.field public r:I

.field public final synthetic s:Lp3/u;

.field public final synthetic t:I

.field public final synthetic u:Lp3/u;


# direct methods
.method public constructor <init>(Lp3/u;I)V
    .locals 0

    iput p2, p0, Lp3/r;->t:I

    iput-object p1, p0, Lp3/r;->u:Lp3/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/r;->s:Lp3/u;

    iget p2, p1, Lp3/u;->t:I

    iput p2, p0, Lp3/r;->b:I

    invoke-virtual {p1}, Lp3/u;->isEmpty()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lp3/r;->q:I

    iput p2, p0, Lp3/r;->r:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lp3/r;->q:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lp3/r;->s:Lp3/u;

    iget v1, v0, Lp3/u;->t:I

    iget v2, p0, Lp3/r;->b:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lp3/r;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lp3/r;->q:I

    iput v1, p0, Lp3/r;->r:I

    iget v2, p0, Lp3/r;->t:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lp3/r;->u:Lp3/u;

    invoke-virtual {v2}, Lp3/u;->j()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    goto :goto_0

    :pswitch_0
    new-instance v2, Lp3/t;

    iget-object v3, p0, Lp3/r;->u:Lp3/u;

    invoke-direct {v2, v3, v1}, Lp3/t;-><init>(Lp3/u;I)V

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lp3/r;->u:Lp3/u;

    invoke-virtual {v2}, Lp3/u;->i()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    iget v2, p0, Lp3/r;->q:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lp3/u;->u:I

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    iput v2, p0, Lp3/r;->q:I

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Lp3/r;->s:Lp3/u;

    iget v1, v0, Lp3/u;->t:I

    iget v2, p0, Lp3/r;->b:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lp3/r;->r:I

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x20

    iput v2, p0, Lp3/r;->b:I

    invoke-virtual {v0}, Lp3/u;->i()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lp3/u;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lp3/r;->q:I

    sub-int/2addr v0, v3

    iput v0, p0, Lp3/r;->q:I

    const/4 v0, -0x1

    iput v0, p0, Lp3/r;->r:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
