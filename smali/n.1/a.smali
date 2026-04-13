.class public final Ln/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public q:I

.field public r:Z

.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln/a;->b:I

    return-void
.end method

.method public constructor <init>(Ln/e;I)V
    .locals 0

    iput p2, p0, Ln/a;->s:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Ln/a;->t:Ljava/lang/Object;

    iget p1, p1, Ln/j;->r:I

    invoke-direct {p0, p1}, Ln/a;-><init>(I)V

    return-void

    :pswitch_0
    iput-object p1, p0, Ln/a;->t:Ljava/lang/Object;

    iget p1, p1, Ln/j;->r:I

    invoke-direct {p0, p1}, Ln/a;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ln/f;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ln/a;->s:I

    iput-object p1, p0, Ln/a;->t:Ljava/lang/Object;

    iget p1, p1, Ln/f;->r:I

    invoke-direct {p0, p1}, Ln/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Ln/a;->q:I

    iget v1, p0, Ln/a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ln/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ln/a;->q:I

    iget v1, p0, Ln/a;->s:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Ln/a;->t:Ljava/lang/Object;

    check-cast v1, Ln/f;

    iget-object v1, v1, Ln/f;->q:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Ln/a;->t:Ljava/lang/Object;

    check-cast v1, Ln/e;

    invoke-virtual {v1, v0}, Ln/j;->l(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Ln/a;->t:Ljava/lang/Object;

    check-cast v1, Ln/e;

    invoke-virtual {v1, v0}, Ln/j;->h(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget v1, p0, Ln/a;->q:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ln/a;->q:I

    iput-boolean v2, p0, Ln/a;->r:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Ln/a;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ln/a;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/a;->q:I

    iget v1, p0, Ln/a;->s:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Ln/a;->t:Ljava/lang/Object;

    check-cast v1, Ln/f;

    invoke-virtual {v1, v0}, Ln/f;->f(I)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Ln/a;->t:Ljava/lang/Object;

    check-cast v1, Ln/e;

    invoke-virtual {v1, v0}, Ln/j;->j(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Ln/a;->t:Ljava/lang/Object;

    check-cast v1, Ln/e;

    invoke-virtual {v1, v0}, Ln/j;->j(I)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Ln/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/a;->r:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
