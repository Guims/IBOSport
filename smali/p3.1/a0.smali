.class public final Lp3/a0;
.super Lp3/L;


# instance fields
.field public final transient s:Lp3/J;

.field public final transient t:[Ljava/lang/Object;

.field public final transient u:I


# direct methods
.method public constructor <init>(Lp3/J;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lp3/a0;->s:Lp3/J;

    iput-object p2, p0, Lp3/a0;->t:[Ljava/lang/Object;

    iput p3, p0, Lp3/a0;->u:I

    return-void
.end method


# virtual methods
.method public final c(I[Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lp3/L;->b()Lp3/H;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lp3/H;->c(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lp3/a0;->s:Lp3/J;

    invoke-virtual {v2, v0}, Lp3/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()Lp3/H;
    .locals 1

    new-instance v0, Lp3/Z;

    invoke-direct {v0, p0}, Lp3/Z;-><init>(Lp3/a0;)V

    return-object v0
.end method

.method public final l()Lp3/m0;
    .locals 2

    invoke-virtual {p0}, Lp3/L;->b()Lp3/H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lp3/a0;->u:I

    return v0
.end method
