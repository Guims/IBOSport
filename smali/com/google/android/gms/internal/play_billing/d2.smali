.class public final Lcom/google/android/gms/internal/play_billing/d2;
.super Lcom/google/android/gms/internal/play_billing/g1;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/d2;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/d2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/g1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/d2;->zzb:Lcom/google/android/gms/internal/play_billing/d2;

    const-class v1, Lcom/google/android/gms/internal/play_billing/d2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/g1;->k(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/g1;)V

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/d2;->zzb:Lcom/google/android/gms/internal/play_billing/d2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/V1;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/d2;->zzb:Lcom/google/android/gms/internal/play_billing/d2;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/f1;-><init>(Lcom/google/android/gms/internal/play_billing/g1;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/d2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/g1;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "zze"

    sget-object v0, Lcom/google/android/gms/internal/play_billing/R0;->g:Lcom/google/android/gms/internal/play_billing/R0;

    const-string v1, "zzd"

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/d2;->zzb:Lcom/google/android/gms/internal/play_billing/d2;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/C1;

    const-string v2, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/C1;-><init>(Lcom/google/android/gms/internal/play_billing/S0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
