.class public final Li2/j;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/j;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;

.field public static final h:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/j;->a:Li2/j;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/j;->b:LR3/c;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/j;->c:LR3/c;

    const-string v0, "clientInfo"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/j;->d:LR3/c;

    const-string v0, "logSource"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/j;->e:LR3/c;

    const-string v0, "logSourceName"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/j;->f:LR3/c;

    const-string v0, "logEvent"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/j;->g:LR3/c;

    const-string v0, "qosTier"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/j;->h:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Li2/F;

    check-cast p2, LR3/e;

    check-cast p1, Li2/t;

    iget-wide v0, p1, Li2/t;->a:J

    sget-object v2, Li2/j;->b:LR3/c;

    invoke-interface {p2, v2, v0, v1}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, Li2/j;->c:LR3/c;

    iget-wide v1, p1, Li2/t;->b:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, Li2/j;->d:LR3/c;

    iget-object v1, p1, Li2/t;->c:Li2/n;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/j;->e:LR3/c;

    iget-object v1, p1, Li2/t;->d:Ljava/lang/Integer;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/j;->f:LR3/c;

    iget-object v1, p1, Li2/t;->e:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/j;->g:LR3/c;

    iget-object p1, p1, Li2/t;->f:Ljava/util/ArrayList;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object p1, Li2/j;->h:LR3/c;

    sget-object v0, Li2/J;->b:Li2/J;

    invoke-interface {p2, p1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
