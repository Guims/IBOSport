.class public final Lcom/google/android/gms/internal/play_billing/V;
.super Lcom/google/android/gms/internal/play_billing/C;


# instance fields
.field public final transient r:[Ljava/lang/Object;

.field public final transient s:I

.field public final transient t:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/V;->r:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/V;->s:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/V;->t:I

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/V;->t:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/d1;->h(II)V

    add-int/2addr p1, p1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/V;->s:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/V;->r:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/V;->t:I

    return v0
.end method
