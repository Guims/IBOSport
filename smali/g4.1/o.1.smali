.class public final Lg4/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lv3/e;

.field public final b:Lk4/h;


# direct methods
.method public constructor <init>(Lv3/e;Lk4/h;LV4/i;Lg4/T;)V
    .locals 1

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleServiceBinder"

    invoke-static {p4, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/o;->a:Lv3/e;

    iput-object p2, p0, Lg4/o;->b:Lk4/h;

    const-string p2, "Initializing Firebase Sessions SDK."

    const-string v0, "FirebaseSessions"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lv3/e;->a()V

    iget-object p1, p1, Lv3/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/Application;

    sget-object p2, Lg4/U;->b:Lg4/U;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {p3}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object p1

    new-instance p2, LT/t;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, p4, v0}, LT/t;-><init>(Lg4/o;LV4/i;Lg4/T;LV4/d;)V

    invoke-static {p1, p2}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to register lifecycle callbacks, unexpected context "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
