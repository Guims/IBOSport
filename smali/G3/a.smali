.class public final LG3/a;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LG3/a;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG3/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG3/a;->a:LG3/a;

    const-string v0, "rolloutId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LG3/a;->b:LR3/c;

    const-string v0, "parameterKey"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LG3/a;->c:LR3/c;

    const-string v0, "parameterValue"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LG3/a;->d:LR3/c;

    const-string v0, "variantId"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LG3/a;->e:LR3/c;

    const-string v0, "templateVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LG3/a;->f:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LG3/m;

    check-cast p2, LR3/e;

    check-cast p1, LG3/b;

    iget-object v0, p1, LG3/b;->b:Ljava/lang/String;

    sget-object v1, LG3/a;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LG3/a;->c:LR3/c;

    iget-object v1, p1, LG3/b;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LG3/a;->d:LR3/c;

    iget-object v1, p1, LG3/b;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LG3/a;->e:LR3/c;

    iget-object v1, p1, LG3/b;->e:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LG3/a;->f:LR3/c;

    iget-wide v1, p1, LG3/b;->f:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    return-void
.end method
