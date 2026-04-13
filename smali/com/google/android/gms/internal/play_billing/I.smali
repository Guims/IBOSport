.class public abstract Lcom/google/android/gms/internal/play_billing/I;
.super Lcom/google/android/gms/internal/play_billing/H;

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lcom/google/android/gms/internal/play_billing/a0;


# instance fields
.field public final transient r:Ljava/util/Comparator;

.field public transient s:Lcom/google/android/gms/internal/play_billing/I;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/I;->r:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final addFirst(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/I;->r:Ljava/util/Comparator;

    return-object v0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/I;->s:Lcom/google/android/gms/internal/play_billing/I;

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/I;->r:Ljava/util/Comparator;

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/M;->q:Lcom/google/android/gms/internal/play_billing/M;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/Y;->u:Lcom/google/android/gms/internal/play_billing/Y;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/Y;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/Y;-><init>(Lcom/google/android/gms/internal/play_billing/C;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/play_billing/Y;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/Y;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/C;->h()Lcom/google/android/gms/internal/play_billing/C;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/Y;-><init>(Lcom/google/android/gms/internal/play_billing/C;Ljava/util/Comparator;)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/I;->s:Lcom/google/android/gms/internal/play_billing/I;

    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/I;->s:Lcom/google/android/gms/internal/play_billing/I;

    :cond_2
    return-object v0
.end method

.method public abstract first()Ljava/lang/Object;
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/I;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getLast()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/I;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Y;->k(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    return-object p1
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/Y;->k(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    return-object p1
.end method

.method public abstract last()Ljava/lang/Object;
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/I;->r:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Y;->l(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, v0, Lcom/google/android/gms/internal/play_billing/Y;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/play_billing/Y;->k(Ljava/lang/Object;Z)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/I;->r:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/Y;->l(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/Y;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/Y;->k(Ljava/lang/Object;Z)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Y;->l(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, v0, Lcom/google/android/gms/internal/play_billing/Y;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/Y;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/Y;->l(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/Y;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/Y;->m(II)Lcom/google/android/gms/internal/play_billing/Y;

    move-result-object p1

    return-object p1
.end method
