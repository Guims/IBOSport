.class public final Lg4/e;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Lg4/e;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg4/e;->a:Lg4/e;

    const-string v0, "performance"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/e;->b:LR3/c;

    const-string v0, "crashlytics"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/e;->c:LR3/c;

    const-string v0, "sessionSamplingRate"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/e;->d:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg4/k;

    check-cast p2, LR3/e;

    sget-object v0, Lg4/e;->b:LR3/c;

    iget-object v1, p1, Lg4/k;->a:Lg4/j;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/e;->c:LR3/c;

    iget-object v1, p1, Lg4/k;->b:Lg4/j;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/e;->d:LR3/c;

    iget-wide v1, p1, Lg4/k;->c:D

    invoke-interface {p2, v0, v1, v2}, LR3/e;->d(LR3/c;D)LR3/e;

    return-void
.end method
