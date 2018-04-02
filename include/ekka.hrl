
-type(member_status() :: joining | up | healing | leaving | down).

-type(member_address() :: {inet:ip_address(), inet:port_number()}).

-record(member, { node   :: node(),
                  addr   :: member_address(),
                  guid   :: ekka_guid:guid(),
                  hash   :: pos_integer(),
                  status :: member_status(),
                  mnesia :: running | stopped | false,
                  ltime  :: erlang:timestamp()
                }).

-type(member() :: #member{}).

