.class public final Lcom/google/android/gms/internal/play_billing/A;
.super Lcom/google/android/gms/internal/play_billing/C;


# instance fields
.field public final transient r:Lcom/google/android/gms/internal/play_billing/C;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/C;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/x;->f()Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/d1;->h(II)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcom/google/android/gms/internal/play_billing/C;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    return-object v0
.end method

.method public final i(II)Lcom/google/android/gms/internal/play_billing/C;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/d1;->y(III)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/C;->i(II)Lcom/google/android/gms/internal/play_billing/C;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/C;->h()Lcom/google/android/gms/internal/play_billing/C;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/C;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return v1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/C;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/A;->r:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/A;->i(II)Lcom/google/android/gms/internal/play_billing/C;

    move-result-object p1

    return-object p1
.end method
