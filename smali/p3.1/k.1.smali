.class public final Lp3/k;
.super Lp3/c;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic t:Lp3/l;


# direct methods
.method public constructor <init>(Lp3/l;)V
    .locals 0

    iput-object p1, p0, Lp3/k;->t:Lp3/l;

    invoke-direct {p0, p1}, Lp3/c;-><init>(Lp3/l;)V

    return-void
.end method

.method public constructor <init>(Lp3/l;I)V
    .locals 1

    iput-object p1, p0, Lp3/k;->t:Lp3/l;

    iget-object v0, p1, Lp3/l;->q:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lp3/c;-><init>(Lp3/l;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lp3/k;->t:Lp3/l;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    invoke-virtual {p0}, Lp3/k;->b()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, v0, Lp3/l;->u:Lp3/V;

    iget v2, p1, Lp3/V;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lp3/V;->t:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lp3/l;->b()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lp3/c;->a()V

    iget-object v0, p0, Lp3/c;->q:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lp3/k;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lp3/k;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp3/k;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lp3/k;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lp3/k;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
