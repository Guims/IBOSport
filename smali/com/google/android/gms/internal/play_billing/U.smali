.class public final Lcom/google/android/gms/internal/play_billing/U;
.super Lcom/google/android/gms/internal/play_billing/H;


# instance fields
.field public final transient r:Lcom/google/android/gms/internal/play_billing/W;

.field public final transient s:Lcom/google/android/gms/internal/play_billing/V;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/W;Lcom/google/android/gms/internal/play_billing/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/U;->r:Lcom/google/android/gms/internal/play_billing/W;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/U;->s:Lcom/google/android/gms/internal/play_billing/V;

    return-void
.end method


# virtual methods
.method public final b([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/U;->s:Lcom/google/android/gms/internal/play_billing/V;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/C;->b([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/U;->r:Lcom/google/android/gms/internal/play_billing/W;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/W;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/android/gms/internal/play_billing/C;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/U;->s:Lcom/google/android/gms/internal/play_billing/V;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/U;->s:Lcom/google/android/gms/internal/play_billing/V;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/C;->l(I)Lcom/google/android/gms/internal/play_billing/z;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/U;->r:Lcom/google/android/gms/internal/play_billing/W;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/W;->u:I

    return v0
.end method
