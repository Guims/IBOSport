.class public final LE1/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LE1/v;->a:I

    iput-object p2, p0, LE1/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget p1, p0, LE1/v;->a:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Connected to SessionLifecycleService. Queue size "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LE1/v;->b:Ljava/lang/Object;

    check-cast v1, LK1/c;

    iget-object v2, v1, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SessionLifecycleClient"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, v1, LK1/c;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    iget-object p2, v1, LK1/c;->q:Ljava/lang/Object;

    check-cast p2, LV4/i;

    invoke-static {p2}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object p2

    new-instance v2, LT/d;

    const/4 v3, 0x5

    invoke-direct {v2, v1, p1, v0, v3}, LT/d;-><init>(Ljava/lang/Object;Ljava/io/Serializable;LV4/d;I)V

    invoke-static {p2, v2}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    return-void

    :pswitch_0
    const-string p1, "BillingClientTesting"

    const-string v1, "Billing Override Service connected."

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LE1/v;->b:Ljava/lang/Object;

    check-cast p1, LE1/w;

    sget v1, Lcom/google/android/gms/internal/play_billing/g;->c:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/h;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/h;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/play_billing/f;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, v2}, LG2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object v0, v1

    :goto_0
    iput-object v0, p1, LE1/w;->B:Lcom/google/android/gms/internal/play_billing/h;

    iget-object p1, p0, LE1/v;->b:Ljava/lang/Object;

    check-cast p1, LE1/w;

    const/4 p2, 0x2

    iput p2, p1, LE1/w;->A:I

    iget-object p1, p0, LE1/v;->b:Ljava/lang/Object;

    check-cast p1, LE1/w;

    const/16 p2, 0x1a

    invoke-static {p2}, LE1/z;->d(I)Lcom/google/android/gms/internal/play_billing/S1;

    move-result-object p2

    const-string v0, "ApiSuccess should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p1, LE1/b;->g:LA/j;

    invoke-virtual {p1, p2}, LA/j;->C(Lcom/google/android/gms/internal/play_billing/S1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget p1, p0, LE1/v;->a:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "SessionLifecycleClient"

    const-string v0, "Disconnected from SessionLifecycleService"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, LE1/v;->b:Ljava/lang/Object;

    check-cast p1, LK1/c;

    const/4 v0, 0x0

    iput-object v0, p1, LK1/c;->r:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LE1/v;->b:Ljava/lang/Object;

    check-cast p1, LE1/w;

    const/4 v0, 0x0

    iput-object v0, p1, LE1/w;->B:Lcom/google/android/gms/internal/play_billing/h;

    iget-object p1, p0, LE1/v;->b:Ljava/lang/Object;

    check-cast p1, LE1/w;

    const/4 v0, 0x0

    iput v0, p1, LE1/w;->A:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
