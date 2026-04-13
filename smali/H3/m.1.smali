.class public final LH3/m;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/m;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/m;->a:LH3/m;

    const-string v0, "threads"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/m;->b:LR3/c;

    const-string v0, "exception"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/m;->c:LR3/c;

    const-string v0, "appExitInfo"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/m;->d:LR3/c;

    const-string v0, "signal"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/m;->e:LR3/c;

    const-string v0, "binaries"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/m;->f:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LH3/C0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/S;

    iget-object v0, p1, LH3/S;->a:Ljava/util/List;

    sget-object v1, LH3/m;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/m;->c:LR3/c;

    iget-object v1, p1, LH3/S;->b:LH3/y0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/m;->d:LR3/c;

    iget-object v1, p1, LH3/S;->c:LH3/q0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/m;->e:LR3/c;

    iget-object v1, p1, LH3/S;->d:LH3/V;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/m;->f:LR3/c;

    iget-object p1, p1, LH3/S;->e:Ljava/util/List;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
