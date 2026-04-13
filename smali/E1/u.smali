.class public final LE1/u;
.super LF2/a;


# instance fields
.field public final c:Lcom/google/android/gms/internal/play_billing/r2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/r2;)V
    .locals 1

    invoke-direct {p0}, LF2/a;-><init>()V

    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p1, p0, LE1/u;->c:Lcom/google/android/gms/internal/play_billing/r2;

    return-void
.end method
