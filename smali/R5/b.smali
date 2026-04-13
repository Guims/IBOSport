.class public abstract LR5/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:LR5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LR5/c;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, LR5/b;->a:LR5/c;

    return-void
.end method
