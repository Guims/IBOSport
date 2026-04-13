.class public final Li2/i;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/i;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;

.field public static final h:LR3/c;

.field public static final i:LR3/c;

.field public static final j:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/i;->a:Li2/i;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->b:LR3/c;

    const-string v0, "eventCode"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->c:LR3/c;

    const-string v0, "complianceData"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->d:LR3/c;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->e:LR3/c;

    const-string v0, "sourceExtension"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->f:LR3/c;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->g:LR3/c;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->h:LR3/c;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->i:LR3/c;

    const-string v0, "experimentIds"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/i;->j:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Li2/E;

    check-cast p2, LR3/e;

    check-cast p1, Li2/s;

    iget-wide v0, p1, Li2/s;->a:J

    sget-object v2, Li2/i;->b:LR3/c;

    invoke-interface {p2, v2, v0, v1}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, Li2/i;->c:LR3/c;

    iget-object v1, p1, Li2/s;->b:Ljava/lang/Integer;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/i;->d:LR3/c;

    iget-object v1, p1, Li2/s;->c:Li2/A;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/i;->e:LR3/c;

    iget-wide v1, p1, Li2/s;->d:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, Li2/i;->f:LR3/c;

    iget-object v1, p1, Li2/s;->e:[B

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/i;->g:LR3/c;

    iget-object v1, p1, Li2/s;->f:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/i;->h:LR3/c;

    iget-wide v1, p1, Li2/s;->g:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, Li2/i;->i:LR3/c;

    iget-object v1, p1, Li2/s;->h:Li2/I;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/i;->j:LR3/c;

    iget-object p1, p1, Li2/s;->i:Li2/B;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
