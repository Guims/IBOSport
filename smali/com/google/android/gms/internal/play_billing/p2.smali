.class public final Lcom/google/android/gms/internal/play_billing/p2;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lcom/google/android/gms/internal/play_billing/p2;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lcom/google/android/gms/internal/play_billing/p2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/p2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/p2;->c:Lcom/google/android/gms/internal/play_billing/p2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/q2;->u:Lcom/google/android/gms/internal/play_billing/d1;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/d1;->s(Lcom/google/android/gms/internal/play_billing/p2;Ljava/lang/Thread;)V

    return-void
.end method
