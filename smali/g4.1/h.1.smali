.class public final Lg4/h;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Lg4/h;

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

    new-instance v0, Lg4/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg4/h;->a:Lg4/h;

    const-string v0, "sessionId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/h;->b:LR3/c;

    const-string v0, "firstSessionId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/h;->c:LR3/c;

    const-string v0, "sessionIndex"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/h;->d:LR3/c;

    const-string v0, "eventTimestampUs"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/h;->e:LR3/c;

    const-string v0, "dataCollectionStatus"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/h;->f:LR3/c;

    const-string v0, "firebaseInstallationId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/h;->g:LR3/c;

    const-string v0, "firebaseAuthenticationToken"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/h;->h:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg4/O;

    check-cast p2, LR3/e;

    sget-object v0, Lg4/h;->b:LR3/c;

    iget-object v1, p1, Lg4/O;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/h;->c:LR3/c;

    iget-object v1, p1, Lg4/O;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/h;->d:LR3/c;

    iget v1, p1, Lg4/O;->c:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, Lg4/h;->e:LR3/c;

    iget-wide v1, p1, Lg4/O;->d:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, Lg4/h;->f:LR3/c;

    iget-object v1, p1, Lg4/O;->e:Lg4/k;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/h;->g:LR3/c;

    iget-object v1, p1, Lg4/O;->f:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/h;->h:LR3/c;

    iget-object p1, p1, Lg4/O;->g:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
