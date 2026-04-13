.class public final Lcom/google/android/gms/internal/play_billing/X;
.super Lcom/google/android/gms/internal/play_billing/H;


# static fields
.field public static final w:[Ljava/lang/Object;

.field public static final x:Lcom/google/android/gms/internal/play_billing/X;


# instance fields
.field public final transient r:[Ljava/lang/Object;

.field public final transient s:I

.field public final transient t:[Ljava/lang/Object;

.field public final transient u:I

.field public final transient v:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    sput-object v5, Lcom/google/android/gms/internal/play_billing/X;->w:[Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/X;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/X;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/play_billing/X;->x:Lcom/google/android/gms/internal/play_billing/X;

    return-void
.end method

.method public constructor <init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/play_billing/X;->r:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/X;->s:I

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/X;->t:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/X;->u:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/X;->v:I

    return-void
.end method


# virtual methods
.method public final b([Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/X;->r:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/X;->v:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/X;->v:I

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/X;->t:[Ljava/lang/Object;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/d1;->c(I)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/X;->u:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/X;->r:[Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/X;->s:I

    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/play_billing/C;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/X;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/X;->v:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/C;->j(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/Q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/H;->e()Lcom/google/android/gms/internal/play_billing/C;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/C;->l(I)Lcom/google/android/gms/internal/play_billing/z;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/X;->v:I

    return v0
.end method
