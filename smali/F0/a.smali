.class public final LF0/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic q:LA3/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;LA3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF0/a;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LF0/a;->q:LA3/b;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LF0/a;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
