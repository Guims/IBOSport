.class public final LH3/g;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/g;

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

    new-instance v0, LH3/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/g;->a:LH3/g;

    const-string v0, "identifier"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/g;->b:LR3/c;

    const-string v0, "version"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/g;->c:LR3/c;

    const-string v0, "displayVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/g;->d:LR3/c;

    const-string v0, "organization"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/g;->e:LR3/c;

    const-string v0, "installationUuid"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/g;->f:LR3/c;

    const-string v0, "developmentPlatform"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/g;->g:LR3/c;

    const-string v0, "developmentPlatformVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/g;->h:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LH3/v0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/K;

    iget-object v0, p1, LH3/K;->a:Ljava/lang/String;

    sget-object v1, LH3/g;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/g;->c:LR3/c;

    iget-object v1, p1, LH3/K;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/g;->d:LR3/c;

    iget-object v1, p1, LH3/K;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/g;->e:LR3/c;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/g;->f:LR3/c;

    iget-object v1, p1, LH3/K;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/g;->g:LR3/c;

    iget-object v1, p1, LH3/K;->e:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/g;->h:LR3/c;

    iget-object p1, p1, LH3/K;->f:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
