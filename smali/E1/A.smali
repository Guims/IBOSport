.class public interface abstract LE1/A;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    sget-object v1, Lcom/google/android/gms/internal/play_billing/X1;->r:Lcom/google/android/gms/internal/play_billing/X1;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/X1;->s:Lcom/google/android/gms/internal/play_billing/X1;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/X1;->t:Lcom/google/android/gms/internal/play_billing/X1;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/W;->a(I[Ljava/lang/Object;LA/d;)Lcom/google/android/gms/internal/play_billing/W;

    return-void
.end method
