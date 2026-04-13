.class public final Lp3/M;
.super Lp3/m0;


# instance fields
.field public b:I

.field public q:Ljava/lang/Object;

.field public final synthetic r:I

.field public final s:Ljava/util/Iterator;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lp3/M;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lo3/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp3/M;->r:I

    iput-object p1, p0, Lp3/M;->s:Ljava/util/Iterator;

    iput-object p2, p0, Lp3/M;->t:Ljava/lang/Object;

    invoke-direct {p0}, Lp3/M;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp3/g0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp3/M;->r:I

    iput-object p1, p0, Lp3/M;->t:Ljava/lang/Object;

    invoke-direct {p0}, Lp3/M;-><init>()V

    iget-object p1, p1, Lp3/g0;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lp3/M;->s:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lp3/M;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    invoke-static {v0}, Lp/e;->c(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    iput v1, p0, Lp3/M;->b:I

    iget v0, p0, Lp3/M;->r:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lp3/M;->s:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lp3/M;->t:Ljava/lang/Object;

    check-cast v1, Lp3/g0;

    iget-object v1, v1, Lp3/g0;->q:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lp3/M;->b:I

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :pswitch_0
    iget-object v0, p0, Lp3/M;->s:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lp3/M;->t:Ljava/lang/Object;

    check-cast v1, Lo3/e;

    invoke-interface {v1, v0}, Lo3/e;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lp3/M;->b:I

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lp3/M;->q:Ljava/lang/Object;

    iget v0, p0, Lp3/M;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iput v2, p0, Lp3/M;->b:I

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    return v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lp3/M;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lp3/M;->b:I

    iget-object v0, p0, Lp3/M;->q:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lp3/M;->q:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
