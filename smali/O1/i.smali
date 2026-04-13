.class public interface abstract LO1/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:LO1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO1/j;

    sget-object v0, LO1/j;->a:Ljava/util/Map;

    new-instance v1, LO1/l;

    invoke-direct {v1, v0}, LO1/l;-><init>(Ljava/util/Map;)V

    sput-object v1, LO1/i;->a:LO1/l;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
.end method
