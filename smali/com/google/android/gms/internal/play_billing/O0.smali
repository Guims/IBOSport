.class public final Lcom/google/android/gms/internal/play_billing/O0;
.super Lcom/google/android/gms/internal/play_billing/g1;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/O0;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/O0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/O0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/O0;->zzb:Lcom/google/android/gms/internal/play_billing/O0;

    const-class v1, Lcom/google/android/gms/internal/play_billing/O0;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/g1;->k(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/g1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/g1;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/B1;->t:Lcom/google/android/gms/internal/play_billing/B1;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/O0;->zzd:Lcom/google/android/gms/internal/play_billing/k1;

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/play_billing/N0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/O0;->zzb:Lcom/google/android/gms/internal/play_billing/O0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g1;->f()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/N0;

    return-object v0
.end method

.method public static o(Lcom/google/android/gms/internal/play_billing/O0;Ljava/lang/Iterable;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/O0;->zzd:Lcom/google/android/gms/internal/play_billing/k1;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/T0;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/play_billing/T0;->b:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/k1;->a(I)Lcom/google/android/gms/internal/play_billing/k1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/O0;->zzd:Lcom/google/android/gms/internal/play_billing/k1;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/O0;->zzd:Lcom/google/android/gms/internal/play_billing/k1;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/z1;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    instance-of v1, p0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_1
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/B1;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/B1;

    iget v2, v1, Lcom/google/android/gms/internal/play_billing/B1;->r:I

    add-int/2addr v2, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/play_billing/B1;->q:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    if-eqz v0, :cond_4

    :goto_0
    if-ge v0, v2, :cond_3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/B1;->q:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/B1;->q:[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/B1;->q:[Ljava/lang/Object;

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    instance-of v1, p1, Ljava/util/RandomAccess;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_9

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/f1;->a(ILjava/util/List;)V

    throw v2

    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/f1;->a(ILjava/util/List;)V

    throw v2

    :cond_9
    return-void

    :cond_a
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final d(I)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/O0;->zzb:Lcom/google/android/gms/internal/play_billing/O0;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/N0;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/O0;->zzb:Lcom/google/android/gms/internal/play_billing/O0;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/f1;-><init>(Lcom/google/android/gms/internal/play_billing/g1;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/O0;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/O0;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zzd"

    const-class v0, Lcom/google/android/gms/internal/play_billing/M0;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/O0;->zzb:Lcom/google/android/gms/internal/play_billing/O0;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/C1;

    const-string v2, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/C1;-><init>(Lcom/google/android/gms/internal/play_billing/S0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
