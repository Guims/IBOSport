.class public final LH3/d;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/d;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;

.field public static final h:LR3/c;

.field public static final i:LR3/c;

.field public static final j:LR3/c;

.field public static final k:LR3/c;

.field public static final l:LR3/c;

.field public static final m:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/d;->a:LH3/d;

    const-string v0, "sdkVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->b:LR3/c;

    const-string v0, "gmpAppId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->c:LR3/c;

    const-string v0, "platform"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->d:LR3/c;

    const-string v0, "installationUuid"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->e:LR3/c;

    const-string v0, "firebaseInstallationId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->f:LR3/c;

    const-string v0, "firebaseAuthenticationToken"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->g:LR3/c;

    const-string v0, "appQualitySessionId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->h:LR3/c;

    const-string v0, "buildVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->i:LR3/c;

    const-string v0, "displayVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->j:LR3/c;

    const-string v0, "session"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->k:LR3/c;

    const-string v0, "ndkPayload"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->l:LR3/c;

    const-string v0, "appExitInfo"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/d;->m:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LH3/O0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/B;

    iget-object v0, p1, LH3/B;->b:Ljava/lang/String;

    sget-object v1, LH3/d;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->c:LR3/c;

    iget-object v1, p1, LH3/B;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->d:LR3/c;

    iget v1, p1, LH3/B;->d:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/d;->e:LR3/c;

    iget-object v1, p1, LH3/B;->e:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->f:LR3/c;

    iget-object v1, p1, LH3/B;->f:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->g:LR3/c;

    iget-object v1, p1, LH3/B;->g:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->h:LR3/c;

    iget-object v1, p1, LH3/B;->h:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->i:LR3/c;

    iget-object v1, p1, LH3/B;->i:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->j:LR3/c;

    iget-object v1, p1, LH3/B;->j:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->k:LR3/c;

    iget-object v1, p1, LH3/B;->k:LH3/N0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->l:LR3/c;

    iget-object v1, p1, LH3/B;->l:LH3/t0;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/d;->m:LR3/c;

    iget-object p1, p1, LH3/B;->m:LH3/q0;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
