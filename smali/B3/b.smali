.class public final LB3/b;
.super Ljava/lang/Object;


# static fields
.field public static final c:LB3/d;


# instance fields
.field public final a:Ly3/o;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB3/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LB3/b;->c:LB3/d;

    return-void
.end method

.method public constructor <init>(Ly3/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LB3/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LB3/b;->a:Ly3/o;

    new-instance v0, LA3/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Ly3/o;->a(LX3/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LB3/d;
    .locals 1

    iget-object v0, p0, LB3/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    if-nez v0, :cond_0

    sget-object p1, LB3/b;->c:LB3/d;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, LB3/b;->a(Ljava/lang/String;)LB3/d;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LB3/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB3/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LB3/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LB3/b;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Ljava/lang/String;JLH3/l0;)V
    .locals 3

    const-string v0, "Deferring native open session: "

    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, LB3/a;

    invoke-direct {v0, p1, p2, p3, p4}, LB3/a;-><init>(Ljava/lang/String;JLH3/l0;)V

    iget-object p1, p0, LB3/b;->a:Ly3/o;

    invoke-virtual {p1, v0}, Ly3/o;->a(LX3/a;)V

    return-void
.end method
