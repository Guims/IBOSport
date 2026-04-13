.class public final Lt3/r;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lt3/z;


# direct methods
.method public constructor <init>(Lt3/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lt3/r;->b:Lt3/z;

    return-void
.end method

.method public static a(Lt3/r;Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt3/r;->b:Lt3/z;

    invoke-virtual {v0}, Lt3/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
