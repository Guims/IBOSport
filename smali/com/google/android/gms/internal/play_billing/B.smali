.class public final Lcom/google/android/gms/internal/play_billing/B;
.super Lcom/google/android/gms/internal/play_billing/C;


# instance fields
.field public final transient r:I

.field public final transient s:I

.field public final synthetic t:Lcom/google/android/gms/internal/play_billing/C;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/C;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/B;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/B;->r:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/B;->s:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/x;->d()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/B;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/B;->s:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/x;->d()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/B;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/x;->g()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/B;->s:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/d1;->h(II)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/B;->r:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(II)Lcom/google/android/gms/internal/play_billing/C;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/B;->s:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/d1;->y(III)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/B;->r:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/B;->t:Lcom/google/android/gms/internal/play_billing/C;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/C;->i(II)Lcom/google/android/gms/internal/play_billing/C;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/B;->s:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/B;->i(II)Lcom/google/android/gms/internal/play_billing/C;

    move-result-object p1

    return-object p1
.end method
