.class public final LH3/t;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/t;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/t;->a:LH3/t;

    const-string v0, "timestamp"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/t;->b:LR3/c;

    const-string v0, "type"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/t;->c:LR3/c;

    const-string v0, "app"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/t;->d:LR3/c;

    const-string v0, "device"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/t;->e:LR3/c;

    const-string v0, "log"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/t;->f:LR3/c;

    const-string v0, "rollouts"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/t;->g:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/K0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/P;

    iget-wide v0, p1, LH3/P;->a:J

    sget-object v2, LH3/t;->b:LR3/c;

    invoke-interface {p2, v2, v0, v1}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/t;->c:LR3/c;

    iget-object v1, p1, LH3/P;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/t;->d:LR3/c;

    iget-object v1, p1, LH3/P;->c:LH3/E0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/t;->e:LR3/c;

    iget-object v1, p1, LH3/P;->d:LH3/F0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/t;->f:LR3/c;

    iget-object v1, p1, LH3/P;->e:LH3/G0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/t;->g:LR3/c;

    iget-object p1, p1, LH3/P;->f:LH3/J0;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
