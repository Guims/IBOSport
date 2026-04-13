.class public final Lcom/google/android/gms/internal/play_billing/W0;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/google/android/gms/internal/play_billing/W0;

.field public static final c:Lcom/google/android/gms/internal/play_billing/W0;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/q2;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/play_billing/W0;->c:Lcom/google/android/gms/internal/play_billing/W0;

    sput-object v1, Lcom/google/android/gms/internal/play_billing/W0;->b:Lcom/google/android/gms/internal/play_billing/W0;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/W0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/W0;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/W0;->c:Lcom/google/android/gms/internal/play_billing/W0;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/W0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/W0;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/W0;->b:Lcom/google/android/gms/internal/play_billing/W0;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/W0;->a:Ljava/lang/Throwable;

    return-void
.end method
