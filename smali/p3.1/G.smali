.class public final Lp3/G;
.super Lp3/H;


# instance fields
.field public final transient r:I

.field public final transient s:I

.field public final synthetic t:Lp3/H;


# direct methods
.method public constructor <init>(Lp3/H;II)V
    .locals 0

    iput-object p1, p0, Lp3/G;->t:Lp3/H;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lp3/G;->r:I

    iput p3, p0, Lp3/G;->s:I

    return-void
.end method


# virtual methods
.method public final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp3/G;->t:Lp3/H;

    invoke-virtual {v0}, Lp3/C;->d()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lp3/G;->t:Lp3/H;

    invoke-virtual {v0}, Lp3/C;->f()I

    move-result v0

    iget v1, p0, Lp3/G;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lp3/G;->s:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lp3/G;->t:Lp3/H;

    invoke-virtual {v0}, Lp3/C;->f()I

    move-result v0

    iget v1, p0, Lp3/G;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp3/G;->s:I

    invoke-static {p1, v0}, LH3/u0;->d(II)V

    iget v0, p0, Lp3/G;->r:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lp3/G;->t:Lp3/H;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lp3/H;->l(I)Lp3/F;

    move-result-object p1

    return-object p1
.end method

.method public final q(II)Lp3/H;
    .locals 1

    iget v0, p0, Lp3/G;->s:I

    invoke-static {p1, p2, v0}, LH3/u0;->h(III)V

    iget v0, p0, Lp3/G;->r:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lp3/G;->t:Lp3/H;

    invoke-virtual {v0, p1, p2}, Lp3/H;->q(II)Lp3/H;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lp3/G;->s:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp3/G;->q(II)Lp3/H;

    move-result-object p1

    return-object p1
.end method
