.class public final LT2/f;
.super Ljava/lang/Object;


# static fields
.field public static final e:Lh3/a;


# instance fields
.field public final a:Lh3/c;

.field public final b:Lh3/c;

.field public final c:Lh3/c;

.field public final d:Lh3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh3/a;-><init>(F)V

    sput-object v0, LT2/f;->e:Lh3/a;

    return-void
.end method

.method public constructor <init>(Lh3/c;Lh3/c;Lh3/c;Lh3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/f;->a:Lh3/c;

    iput-object p3, p0, LT2/f;->b:Lh3/c;

    iput-object p4, p0, LT2/f;->c:Lh3/c;

    iput-object p2, p0, LT2/f;->d:Lh3/c;

    return-void
.end method
