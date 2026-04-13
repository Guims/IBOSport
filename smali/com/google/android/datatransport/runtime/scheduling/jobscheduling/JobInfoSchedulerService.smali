.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;
.super Landroid/app/job/JobService;


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "attemptNumber"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lj2/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lj2/j;->a()LJ/l;

    move-result-object v4

    invoke-virtual {v4, v0}, LJ/l;->b0(Ljava/lang/String;)V

    invoke-static {v2}, Lt2/a;->b(I)Lg2/c;

    move-result-object v0

    iput-object v0, v4, LJ/l;->q:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v4, LJ/l;->s:Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lj2/q;->a()Lj2/q;

    move-result-object v0

    iget-object v0, v0, Lj2/q;->d:LM3/c;

    invoke-virtual {v4}, LJ/l;->B()Lj2/j;

    move-result-object v1

    new-instance v2, LA/o;

    const/16 v4, 0x13

    invoke-direct {v2, p0, v4, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, v0, LM3/c;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v4, Lp2/e;

    invoke-direct {v4, v0, v1, v3, v2}, Lp2/e;-><init>(LM3/c;Lj2/j;ILjava/lang/Runnable;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
